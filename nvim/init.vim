if exists('g:vscode')
  " VSCode extension
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

  nnoremap <silent> <leader>f :<C-u>call VSCodeCall('editor.action.formatDocument')<CR>
else
  " ordinary neovim
endif
