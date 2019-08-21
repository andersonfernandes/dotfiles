FROM ubuntu:18.04
MAINTAINER Anderson Fernandes <fernandesanderson14@gmail.com>

RUN apt update && apt install -y \
      build-essential \
      software-properties-common \
      python-dev \
      python-pip \
      python3-dev \
      python3-pip \
      sudo \
      libc6-dev \
      gcc \
      g++ \
      make \
      dpkg-dev \
      git \
      curl \
      wget \
      zsh \
      tmux \
      automake \
      autoconf \
      libreadline-dev \
      libncurses-dev \
      libssl-dev \
      libyaml-dev \
      libxslt-dev \
      libffi-dev \
      libtool \
      unixodbc-dev \
      locales \
      unzip

RUN add-apt-repository ppa:neovim-ppa/stable && apt update
RUN apt install -y neovim
RUN curl -fLo /home/doe/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN useradd -p $(openssl passwd -1 123456) -m -d /home/doe doe
RUN usermod -aG sudo doe
RUN chsh doe --shell /bin/zsh

RUN mkdir -p /home/doe/workspace/
RUN mkdir -p /home/doe/.config/
RUN chown -R doe /home/doe/

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
      locale-gen

USER doe

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

COPY . /home/doe/.dotfiles
RUN ./home/doe/.dotfiles/install.sh

RUN nvim +PlugInstall +qall > /dev/null

RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4
RUN echo '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
RUN echo '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc

# RUN asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
# RUN asdf plugin-update --all
# RUN asdf install ruby 2.6.3
# RUN asdf global ruby 2.6.3

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
ENV TERM screen-256color
ENV ZSH_THEME avit

WORKDIR /home/doe

CMD ["/bin/zsh"]
