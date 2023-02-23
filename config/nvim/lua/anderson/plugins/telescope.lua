require('telescope').setup{
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    },
    current_buffer_fuzzy_find = {
      sorting_strategy = 'ascending',
    }
  },
}
