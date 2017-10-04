" carbonized-light vim colourscheme
"
" generated with a theme template adapted from
" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)


"=== SET VARIABLES ============================================================

" GUI colours
let s:g0 = 'fff8eb'
let s:g1 = 'e8e2d5'
let s:g2 = 'bfbab0'
let s:g3 = '99958d'
let s:g4 = '706d67'
let s:g5 = '524f4b'
let s:g6 = '303030'
let s:g7 = '1f1f1f'
let s:g8 = 'bf5062'
let s:g9 = 'd47546'
let s:gA = 'ab982b'
let s:gB = '609456'
let s:gC = '3e9486'
let s:gD = '6393ab'
let s:gE = '8572ab'
let s:gF = 'ab7298'

" terminal colours
let s:t0 = '00'
let s:t3 = '08'
let s:t5 = '07'
let s:t7 = '15'
let s:t8 = '01'
let s:tA = '03'
let s:tB = '02'
let s:tC = '06'
let s:tD = '04'
let s:tE = '05'
let s:t1 = '18'
let s:t2 = '19'
let s:t4 = '20'
let s:t6 = '21'
let s:t9 = '16'
let s:tF = '17'

" neovim colours
if has('nvim')
  let g:terminal_color_0 =  '#fff8eb'
  let g:terminal_color_1 =  '#bf5062'
  let g:terminal_color_2 =  '#609456'
  let g:terminal_color_3 =  '#ab982b'
  let g:terminal_color_4 =  '#6393ab'
  let g:terminal_color_5 =  '#8572ab'
  let g:terminal_color_6 =  '#3e9486'
  let g:terminal_color_7 =  '#524f4b'
  let g:terminal_color_8 =  '#99958d'
  let g:terminal_color_9 =  '#d47546'
  let g:terminal_color_10 = '#e8e2d5'
  let g:terminal_color_11 = '#bfbab0'
  let g:terminal_color_12 = '#706d67'
  let g:terminal_color_13 = '#303030'
  let g:terminal_color_14 = '#ab7298'
  let g:terminal_color_15 = '#1f1f1f'
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
  if &background == 'light'
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
endif


"=== GENERAL PREPARATION ======================================================

" run theme-setting script if using terminal vim
if !has('gui_running')
  execute 'silent !/bin/sh $HOME/.nightshell/carbonized-light'
  autocmd CursorMoved * execute 'if !exists("colors_name") |
        \ let colors_name = "carbonized-light" |
        \ colorscheme carbonized-light | endif'
endif

" clear old theme, activate new
hi clear
syntax reset
let colors_name = 'carbonized-light'

" highlighting function
fun! <sid>hi(x, gf, gb, cf, cb, a, s)
  if a:gf != '' | exe 'hi ' . a:x . ' guifg=#'  . a:gf                  | endif
  if a:gb != '' | exe 'hi ' . a:x . ' guibg=#'  . a:gb                  | endif
  if a:cf != '' | exe 'hi ' . a:x . ' ctermfg=' . a:cf                  | endif
  if a:cb != '' | exe 'hi ' . a:x . ' ctermbg=' . a:cb                  | endif
  if a:a  != '' | exe 'hi ' . a:x . ' gui='     . a:a . ' cterm=' . a:a | endif
  if a:s  != '' | exe 'hi ' . a:x . ' guisp=#'  . a:s                   | endif
endfun


"=== BASIC HIGHLIGHTING =======================================================

" cursor + status line + selected tab
call <sid>hi('Cursor'         , s:g0 , s:g9 , s:t0 , s:t9 , 'none'      , ''  )
call <sid>hi('StatusLine'     , s:g0 , s:g9 , s:t0 , s:t9 , 'none'      , ''  )
call <sid>hi('TabLineSel'     , s:g0 , s:g9 , s:t0 , s:t9 , 'none'      , ''  )

" current line number + matching parenthesis
call <sid>hi('CursorLineNr'   , s:g0 , s:g3 , s:t0 , s:t3 , 'none'      , ''  )
call <sid>hi('MatchParen'     , s:g0 , s:g3 , s:t0 , s:t3 , 'none'      , ''  )

" basic text
call <sid>hi('Bold'           , ''   , ''   , ''   , ''   , 'bold'      , ''  )
call <sid>hi('Directory'      , s:g5 , ''   , s:t5 , ''   , 'bold'      , ''  )
call <sid>hi('Italic'         , ''   , ''   , ''   , ''   , 'italic'    , ''  )
call <sid>hi('Normal'         , s:g5 , s:g0 , s:t5 , s:t0 , 'none'      , ''  )
call <sid>hi('Underlined'     , s:g5 , ''   , s:t5 , ''   , 'underline' , ''  )

" commented-out text
call <sid>hi('Comment'        , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
call <sid>hi('Conceal'        , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
call <sid>hi('EndOfBuffer'    , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
call <sid>hi('Ignore'         , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
call <sid>hi('NonText'        , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )

" highlighted background
call <sid>hi('ColorColumn'    , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('CursorColumn'   , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('CursorLine'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('FoldColumn'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('Folded'         , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('QuickFixLine'   , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('SignColumn'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('TabLine'        , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
call <sid>hi('TabLineFill'    , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )

" muted text on highlighted background
call <sid>hi('DiffChange'     , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
call <sid>hi('LineNr'         , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )

" popup menu + selection block
call <sid>hi('Pmenu'          , s:g5 , s:g2 , s:t5 , s:t2 , 'none'      , ''  )
call <sid>hi('Visual'         , s:g5 , s:g2 , s:t5 , s:t2 , 'none'      , ''  )

" selected menu item
call <sid>hi('PmenuSel'       , s:g0 , s:g5 , s:t0 , s:t5 , 'none'      , ''  )
call <sid>hi('WildMenu'       , s:g0 , s:g5 , s:t0 , s:t5 , 'none'      , ''  )

" dimmed inactive elements
call <sid>hi('StatusLineNC'   , s:g5 , s:g1 , s:t5 , s:t1 , 'none'      , ''  )
call <sid>hi('VisualNOS'      , s:g3 , s:g1 , s:t3 , s:t1 , 'none'      , ''  )

" solid lines
call <sid>hi('PmenuSbar'      , s:g3 , s:g3 , s:t3 , s:t3 , 'none'      , ''  )
call <sid>hi('PmenuThumb'     , s:g1 , s:g1 , s:t1 , s:t1 , 'none'      , ''  )
call <sid>hi('VertSplit'      , s:g2 , s:g2 , s:t2 , s:t2 , 'none'      , ''  )


"=== SYNTAX HIGHLIGHTING ======================================================

" RED for warning elements
call <sid>hi('DiffDelete'     , s:g8 , s:g1 , s:t8 , s:t1 , 'none'      , ''  )
call <sid>hi('Error'          , s:g0 , s:g8 , s:t0 , s:t8 , 'none'      , ''  )
call <sid>hi('ErrorMsg'       , s:g8 , s:g0 , s:t8 , s:t0 , 'none'      , ''  )
call <sid>hi('WarningMsg'     , s:g8 , s:g0 , s:t8 , s:t0 , 'none'      , ''  )
call <sid>hi('SpellBad'       , ''   , s:g0 , ''   , s:t0 , 'undercurl' , s:g8)
call <sid>hi('TooLong'        , s:g8 , ''   , s:t8 , ''   , ''          , ''  )

" ORANGE for preliminary elements
call <sid>hi('IncSearch'      , s:g1 , s:g9 , s:t1 , s:t9 , 'none'      , ''  )
call <sid>hi('PreProc'        , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
call <sid>hi('PreCondit'      , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
call <sid>hi('Question'       , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
call <sid>hi('Title'          , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
call <sid>hi('SpellCap'       , ''   , s:g0 , ''   , s:t0 , 'undercurl' , s:g9)
call <sid>hi('Macro'          , s:g9 , ''   , s:t9 , ''   , ''          , ''  )
call <sid>hi('Define'         , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
call <sid>hi('Include'        , s:g9 , ''   , s:t9 , ''   , ''          , ''  )

" YELLOW for highlighted elements
call <sid>hi('DiffText'       , s:gA , s:g1 , s:tA , s:t1 , 'none'      , ''  )
call <sid>hi('Todo'           , s:gA , s:g1 , s:tA , s:t1 , 'none'      , ''  )
call <sid>hi('Search'         , s:g0 , s:gA , s:t0 , s:tA , 'none'      , ''  )

" GREEN for action elements
call <sid>hi('DiffAdd'        , s:gB , s:g1 , s:tB , s:t1 , 'none'      , ''  )
call <sid>hi('Statement'      , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
call <sid>hi('ModeMsg'        , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
call <sid>hi('MoreMsg'        , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
call <sid>hi('Conditional'    , s:gB , ''   , s:tB , ''   , ''          , ''  )
call <sid>hi('Label'          , s:gB , ''   , s:tB , ''   , ''          , ''  )
call <sid>hi('Operator'       , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
call <sid>hi('Repeat'         , s:gB , ''   , s:tB , ''   , ''          , ''  )
call <sid>hi('Keyword'        , s:gB , ''   , s:tB , ''   , ''          , ''  )
call <sid>hi('Exception'      , s:gB , ''   , s:tB , ''   , ''          , ''  )

" TEAL for object types
call <sid>hi('SpellLocal'     , ''   , ''   , ''   , ''   , 'undercurl' , s:gC)
call <sid>hi('Type'           , s:gC , ''   , s:tC , ''   , 'none'      , ''  )
call <sid>hi('StorageClass'   , s:gC , ''   , s:tC , ''   , ''          , ''  )
call <sid>hi('Structure'      , s:gC , ''   , s:tC , ''   , ''          , ''  )
call <sid>hi('Typedef'        , s:gC , ''   , s:tC , ''   , ''          , ''  )

" BLUE for constants
call <sid>hi('Constant'       , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
call <sid>hi('Boolean'        , s:gD , ''   , s:tD , ''   , ''          , ''  )
call <sid>hi('Character'      , s:gD , ''   , s:tD , ''   , ''          , ''  )
call <sid>hi('Float'          , s:gD , ''   , s:tD , ''   , ''          , ''  )
call <sid>hi('Number'         , s:gD , ''   , s:tD , ''   , ''          , ''  )
call <sid>hi('String'         , s:gD , ''   , s:tD , ''   , ''          , ''  )

" PURPLE for special text
call <sid>hi('Debug'          , s:gE , ''   , s:tE , ''   , ''          , ''  )
call <sid>hi('Special'        , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
call <sid>hi('SpecialChar'    , s:gE , ''   , s:tE , ''   , ''          , ''  )
call <sid>hi('SpecialComment' , s:gE , ''   , s:tE , ''   , ''          , ''  )
call <sid>hi('SpellRare'      , ''   , s:g0 , ''   , s:t0 , 'undercurl' , s:gE)
call <sid>hi('SpecialKey'     , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
call <sid>hi('Delimiter'      , s:gE , ''   , s:tE , ''   , ''          , ''  )
call <sid>hi('Tag'            , s:gE , ''   , s:tE , ''   , ''          , ''  )

" PINK for object names
call <sid>hi('Identifier'     , s:gF , ''   , s:tF , ''   , 'none'      , ''  )
call <sid>hi('Function'       , s:gF , ''   , s:tF , ''   , ''          , ''  )
