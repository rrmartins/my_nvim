" ~/Documents/projects/my_nvim/session/default.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 20 November 2019 at 15:45:39.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'molokai' | colorscheme molokai | endif
call setqflist([{'lnum': 19, 'col': 7, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/order.rb', 'text': '  def installment_count'}, {'lnum': 21, 'col': 51, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/order.rb', 'text': '    return 1.0 if self.payment_transactions.first.installment_count.nil?'}, {'lnum': 22, 'col': 37, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/order.rb', 'text': '    self.payment_transactions.first.installment_count'}, {'lnum': 26, 'col': 24, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/order.rb', 'text': '    return 0.0 if self.installment_count.zero?'}, {'lnum': 27, 'col': 24, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/models/order.rb', 'text': '    self.final_price / installment_count'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 133, 'col': 83, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/api/v3/clients_controller.rb', 'text': '      @is_installments = @payment_transaction.nil? ? false : @payment_transaction.installment_count > 1'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 7, 'col': 5, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/subscription_helper.rb', 'text': '    installment_count = order.installment_count'}, {'lnum': 9, 'col': 19, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/subscription_helper.rb', 'text': '    return nil if installment_count.nil? || installment_price.nil?'}, {'lnum': 11, 'col': 8, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/helpers/subscription_helper.rb', 'text': '    "#{installment_count}x de #{number_to_currency(installment_price)}"'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 3, 'col': 5, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'spec/factories/payment_transactions_factory.rb', 'text': '    installment_count 12'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}, {'lnum': 1105, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'db/schema.rb', 'text': '    t.integer  "installment_count"'}, {'lnum': 0, 'col': 0, 'valid': 0, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/queries/es_client/find_dates_for_restaurant_query.rb', 'text': '/Users/rrmartins/Documents/projects/chefsclub/troisgros/'}])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/projects/chefsclub/troisgros
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 app/controllers/api/v3/clients_controller.rb
badd +111 app/services/subscription/create_service.rb
badd +1105 db/schema.rb
badd +147 app/services/subscription/update_service.rb
badd +37 app/models/coupon.rb
badd +1 app/controllers/api/v4/offers_controller.rb
badd +2 app/queries/es_client/find_dates_for_restaurant_query.rb
badd +0 app/models/restaurant.rb
argglobal
silent! argdel *
$argadd .
edit app/models/restaurant.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 50 + 102) / 204)
exe '2resize ' . ((&lines * 21 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 153 + 102) / 204)
exe '3resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 153 + 102) / 204)
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 50 + 102) / 204)
exe '2resize ' . ((&lines * 21 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 153 + 102) / 204)
exe '3resize ' . ((&lines * 22 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 153 + 102) / 204)
tabedit app/queries/es_client/find_dates_for_restaurant_query.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 61 - ((39 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 013|
tabedit app/controllers/api/v4/offers_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 030|
tabedit app/controllers/api/v3/clients_controller.rb
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe '2resize ' . ((&lines * 21 + 23) / 47)
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 137 - ((15 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
137
normal! 0
wincmd w
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe '2resize ' . ((&lines * 21 + 23) / 47)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Documents/projects/chefsclub/troisgros
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
2wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Documents/projects/chefsclub/troisgros
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 44|vert 1resize 50|2resize 21|vert 2resize 153|3resize 22|vert 3resize 153|
3wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
