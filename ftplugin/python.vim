" ------------------
" Python Environment
" ------------------

"let g:python_recommended_style=0
"SetupPython        " function is called in vimrc. Was used to try to prevent the default python.vim from overwriding my python.vim in ftplugin.

"setlocal expandtab
"setlocal tabstop=4
"setlocal softtabstop=4
"setlocal shiftwidth=4

"let g:ycm_autoclose_preview_window_after_completion=1
"noremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

    " Python with virtualenv support
    "py << EOF
    "import os
    "import sys
    "if 'VIRTUAL_ENV' in os.environ:
    "    project_base_dir = os.environ['VIRTUAL_ENV']
    "    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    "    execfile(activate_this, dict(__file__=activate_this))
    "EOF

    " Code Highlighting
    "let python_highlight_all=1

