set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" Since syntastic is synchronous, checking on open can be quite slow
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" Likewise because of synchronous operations, multiple checkers are slow
let g:syntastic_aggregate_errors = 0
" Make statusline look a bit more condensed and nicer
let g:syntastic_stl_format = '%E{E:%e (%fe)}%B{, }%W{W:%w (%fw)}'

let g:lmap.e = { 'name': '+errors' }
call SpaceNeovimNMap('er', 'syntastic-check-file', 'SyntasticCheck')
call SpaceNeovimNMap('ev', 'syntastic-version', 'SyntasticInfo')
call SpaceNeovimNMap('el', 'syntastic-error-list', 'lopen')
call SpaceNeovimNMap('ec', 'syntastic-close-error-list', 'lclose')
call SpaceNeovimNMap('en', 'syntastic-next-error', 'lnext')
call SpaceNeovimNMap('ep', 'syntastic-previous-error', 'lprevious')

call SpaceNeovimNMap('eC', 'quickfix-close-error-list', 'cclose')
call SpaceNeovimNMap('eL', 'quickfix-error-list', 'copen')
call SpaceNeovimNMap('eN', 'quickfix-next-error', 'cn')
call SpaceNeovimNMap('eP', 'quickfix-previous-error', 'cp')
