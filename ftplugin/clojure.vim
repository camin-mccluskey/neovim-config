" Local Leader Key
" Necessary for Conjure
let maplocalleader=";" " set leader to semi-colon

" ** Conjure Remaps **
" Eval everything in current buffer
nnoremap<leader>eb <cmd>ConjureEvalBuf<cr> 
" Eval current form
nnoremap<leader>ee <cmd>ConjureEval<cr>
" Eval outermost form
nnoremap<leader>er <cmd>ConjureEvalRootForm<cr>
" Evalue currently visually selected
vnoremap<leader>es <cmd>ConjureEvalVisual<cr>
" Eval current paragraph
nnoremap<leader>ep <cmd>ConjureEvalParagraph<cr>
" Eval current file
nnoremap<leader>ef <cmd>ConjureEvalFile<cr>

" Activate rainbow paranthesis
let g:rainbow_active = 1

