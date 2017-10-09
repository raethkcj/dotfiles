" Vim color file - raethkcj
" Generated by http://bytefluent.com/vivify
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "raethkcj"
let orange = 178
let blue = 67
let green = 108
let white = 15
let light_grey = 248
let dark_grey = 235

"exec "hi CTagsMember -- no settings --
"exec "hi CTagsGlobalConstant -- no settings --
"exec "hi Ignore -- no settings --
exec "hi Normal ctermfg=".white." ctermbg=NONE cterm=NONE"

exec "hi IncSearch ctermfg=".dark_grey." ctermbg=".orange." cterm=NONE"
exec "hi WildMenu ctermfg=NONE ctermbg=".light_grey." cterm=NONE"
exec "hi SignColumn ctermfg=".dark_grey." ctermbg=60"." cterm=NONE"
exec "hi SpecialComment ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Typedef ctermfg=60 ctermbg=NONE"." cterm=bold"
exec "hi Title ctermfg=189 ctermbg=NONE"." cterm=bold"
exec "hi Folded ctermfg=".dark_grey." ctermbg=".light_grey." cterm=NONE"
exec "hi PreCondit ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Include ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Float ctermfg=".light_grey." ctermbg=NONE"." cterm=NONE"
exec "hi StatusLineNC ctermfg=".dark_grey." ctermbg=".green." cterm=bold"
exec "hi NonText ctermfg=66 ctermbg=NONE"." cterm=NONE"
exec "hi DiffText ctermfg=NONE ctermbg=52"." cterm=NONE"
exec "hi ErrorMsg ctermfg=".light_grey." ctermbg=88"." cterm=NONE"
exec "hi Debug ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi PMenuSbar ctermfg=NONE ctermbg=102"." cterm=NONE"
exec "hi Identifier ctermfg=".blue." ctermbg=NONE"." cterm=NONE"
exec "hi SpecialChar ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Conditional ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi StorageClass ctermfg=60 ctermbg=NONE"." cterm=bold"
exec "hi Todo ctermfg=NONE ctermbg=".light_grey." cterm=NONE"
exec "hi Special ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi LineNr ctermfg=".blue." ctermbg=NONE"." cterm=NONE"
exec "hi StatusLine ctermfg=".dark_grey." ctermbg=".orange." cterm=bold"
exec "hi Label ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi PMenuSel ctermfg=".dark_grey." ctermbg=".orange." cterm=NONE"
exec "hi Search ctermfg=".dark_grey." ctermbg=".orange." cterm=NONE"
exec "hi Delimiter ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Statement ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi SpellRare ctermfg=189 ctermbg=".dark_grey." cterm=underline"
exec "hi Comment ctermfg=".light_grey." ctermbg=NONE"." cterm=NONE"
exec "hi Character ctermfg=".light_grey." ctermbg=NONE"." cterm=NONE"
exec "hi TabLineSel ctermfg=".dark_grey." ctermbg=".orange." cterm=bold"
exec "hi Number ctermfg=".light_grey." ctermbg=NONE"." cterm=NONE"
exec "hi Boolean ctermfg=".light_grey." ctermbg=NONE"." cterm=NONE"
exec "hi Operator ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi CursorLine ctermfg=NONE ctermbg=236"." cterm=NONE"
exec "hi TabLineFill ctermfg=".dark_grey." ctermbg=".green." cterm=bold"
exec "hi WarningMsg ctermfg=".green." ctermbg=88"." cterm=NONE"
exec "hi VisualNOS ctermfg=".dark_grey." ctermbg=189  cterm=underline"
exec "hi DiffDelete ctermfg=NONE ctermbg=".dark_grey." cterm=NONE"
exec "hi ModeMsg ctermfg=".white." ctermbg=".dark_grey." cterm=bold"
exec "hi CursorColumn ctermfg=NONE ctermbg=236"." cterm=NONE"
exec "hi Define ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi rubyDefine ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Function ctermfg=".blue." ctermbg=NONE"." cterm=bold"
exec "hi FoldColumn ctermfg=".dark_grey." ctermbg=".light_grey." cterm=NONE"
exec "hi PreProc ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Visual ctermfg=".dark_grey." ctermbg=189"." cterm=NONE"
exec "hi MoreMsg ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi SpellCap ctermfg=189 ctermbg=".dark_grey." cterm=underline"
exec "hi VertSplit ctermfg=".dark_grey." ctermbg=".green." cterm=bold"
exec "hi Exception ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi Keyword ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi Type ctermfg=".blue." ctermbg=NONE"." cterm=bold"
exec "hi DiffChange ctermfg=NONE ctermbg=52"." cterm=NONE"
exec "hi Cursor ctermfg=".dark_grey." ctermbg=".white ." cterm=NONE"
exec "hi SpellLocal ctermfg=189 ctermbg=".dark_grey." cterm=underline"
exec "hi Error ctermfg=".light_grey." ctermbg=88"." cterm=NONE"
exec "hi PMenu ctermfg=".dark_grey." ctermbg=".green." cterm=NONE"
exec "hi SpecialKey ctermfg=66 ctermbg=NONE"." cterm=NONE"
exec "hi Constant ctermfg=".green." ctermbg=NONE"." cterm=NONE"
exec "hi Tag ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi String ctermfg=".green." ctermbg=NONE"." cterm=NONE"
exec "hi PMenuThumb ctermfg=NONE ctermbg=".light_grey." cterm=NONE"
exec "hi MatchParen ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi Repeat ctermfg=".orange." ctermbg=NONE"." cterm=bold"
exec "hi SpellBad ctermfg=189 ctermbg=".dark_grey." cterm=underline"
exec "hi Directory ctermfg=60 ctermbg=NONE"." cterm=bold"
exec "hi Structure ctermfg=60 ctermbg=NONE"." cterm=bold"
exec "hi Macro ctermfg=".orange." ctermbg=NONE"." cterm=NONE"
exec "hi Underlined ctermfg=189 ctermbg=".dark_grey." cterm=underline"
exec "hi DiffAdd ctermfg=NONE ctermbg=236"." cterm=NONE"
exec "hi TabLine ctermfg=".dark_grey." ctermbg=".green." cterm=bold"
exec "hi cursorim ctermfg=".dark_grey." ctermbg=60"." cterm=NONE"