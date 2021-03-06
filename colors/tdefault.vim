" This scheme was created by CSApproxSnapshot
" on Wed, 08 Feb 2017

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bebebe
    CSAHi txtParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi txtExtra term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#605958
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#eedc82
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=211 gui=NONE guibg=bg guifg=#ee799f
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#ffa54f
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=202 gui=NONE guibg=#eeee00 guifg=#ff4500
    CSAHi shDerefPSRleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPSRright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shExpr term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseEsacSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDoSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseExSingleQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shIfSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shUntilSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shWhileSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#605958
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=67 gui=NONE guibg=bg guifg=#3465a4
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=159 ctermfg=68 gui=reverse guibg=#2050d0 guifg=#b0ffff
    CSAHi Search term=reverse cterm=NONE ctermbg=67 ctermfg=188 gui=NONE guibg=#445599 guifg=#cccccc
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=72 gui=NONE guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shDo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCmdParenRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=153 gui=undercurl guibg=bg guifg=fg guisp=#87ceeb
    CSAHi User1 term=NONE cterm=NONE ctermbg=102 ctermfg=222 gui=NONE guibg=#4d5057 guifg=#ffd75f
    CSAHi User2 term=NONE cterm=NONE ctermbg=102 ctermfg=233 gui=NONE guibg=#4d5057 guifg=#121212
    CSAHi User3 term=NONE cterm=NONE ctermbg=102 ctermfg=153 gui=NONE guibg=#4d5057 guifg=#86bcff
    CSAHi User4 term=NONE cterm=NONE ctermbg=102 ctermfg=210 gui=NONE guibg=#4d5057 guifg=#ff7575
    CSAHi User5 term=NONE cterm=NONE ctermbg=102 ctermfg=216 gui=NONE guibg=#4d5057 guifg=#ffab60
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=67 ctermfg=231 gui=NONE guibg=#445599 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=67 gui=NONE guibg=#bebebe guifg=#445599
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi shBkslshDblQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSubSh term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shVarAssign term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSpecialVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shComma term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shFunctionOne term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionTwo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#605958
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=102 ctermfg=250 gui=NONE guibg=#4d5057 guifg=#bebebe
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=243 ctermfg=250 gui=NONE guibg=#787878 guifg=#bebebe
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=102 ctermfg=102 gui=NONE guibg=#666666 guifg=#666666
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#373b41 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#fa8072
    CSAHi shIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCase term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefVarArray term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=202 gui=undercurl guibg=bg guifg=fg guisp=#ff4500
    CSAHi shCurlyIn term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=202 gui=NONE guibg=#bebebe guifg=#ff4500
    CSAHi NeomakeErrorSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=196 gui=NONE guibg=#bebebe guifg=#ff0000
    CSAHi NeomakeInfoSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=48 gui=NONE guibg=#bebebe guifg=#00ff7f
    CSAHi shBkslshSnglQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=250 ctermfg=235 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi lCursor term=NONE cterm=NONE ctermbg=250 ctermfg=235 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi MatchParen term=reverse cterm=bold ctermbg=bg ctermfg=51 gui=bold guibg=bg guifg=#00ffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=114 gui=italic guibg=bg guifg=#7ccd7c
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#fa8072
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=122 gui=NONE guibg=bg guifg=#76eec6
    CSAHi shFunctionStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionThree term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionFour term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPattern term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeInfoDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=48 gui=undercurl guibg=bg guifg=fg guisp=#00ff7f
    CSAHi shOK term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeErrorDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=153 gui=NONE guibg=#bebebe guifg=#87ceeb
    CSAHi shCaseEsac term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTouch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTest term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=59 ctermfg=218 gui=NONE guibg=#302028 guifg=#f0a0c0
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=145 gui=NONE guibg=#2b2e36 guifg=#999999
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=239 ctermfg=187 gui=NONE guibg=#4d4d4d guifg=#d2b48c
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=230 ctermfg=16 gui=NONE guibg=#ffe7ba guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=153 ctermfg=16 gui=NONE guibg=#87ceff guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=243 ctermfg=16 gui=NONE guibg=#737373 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=212 ctermfg=16 gui=NONE guibg=#ff6eb4 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi shSkipInitWS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shForSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bebebe
    CSAHi txtParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi txtExtra term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#605958
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#eedc82
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=218 gui=NONE guibg=bg guifg=#ee799f
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#ffa54f
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=208 gui=NONE guibg=#eeee00 guifg=#ff4500
    CSAHi shDerefPSRleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPSRright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shExpr term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseEsacSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDoSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseExSingleQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shIfSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shUntilSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shWhileSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#605958
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#3465a4
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=195 ctermfg=69 gui=reverse guibg=#2050d0 guifg=#b0ffff
    CSAHi Search term=reverse cterm=NONE ctermbg=104 ctermfg=252 gui=NONE guibg=#445599 guifg=#cccccc
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=72 gui=NONE guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shDo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCmdParenRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=159 gui=undercurl guibg=bg guifg=fg guisp=#87ceeb
    CSAHi User1 term=NONE cterm=NONE ctermbg=102 ctermfg=228 gui=NONE guibg=#4d5057 guifg=#ffd75f
    CSAHi User2 term=NONE cterm=NONE ctermbg=102 ctermfg=233 gui=NONE guibg=#4d5057 guifg=#121212
    CSAHi User3 term=NONE cterm=NONE ctermbg=102 ctermfg=153 gui=NONE guibg=#4d5057 guifg=#86bcff
    CSAHi User4 term=NONE cterm=NONE ctermbg=102 ctermfg=217 gui=NONE guibg=#4d5057 guifg=#ff7575
    CSAHi User5 term=NONE cterm=NONE ctermbg=102 ctermfg=222 gui=NONE guibg=#4d5057 guifg=#ffab60
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=104 ctermfg=255 gui=NONE guibg=#445599 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=104 gui=NONE guibg=#bebebe guifg=#445599
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi shBkslshDblQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSubSh term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shVarAssign term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSpecialVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shComma term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shFunctionOne term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionTwo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#605958
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=49 gui=NONE guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=102 ctermfg=250 gui=NONE guibg=#4d5057 guifg=#bebebe
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=243 ctermfg=250 gui=NONE guibg=#787878 guifg=#bebebe
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=241 ctermfg=241 gui=NONE guibg=#666666 guifg=#666666
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=60 ctermfg=fg gui=NONE guibg=#373b41 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#fa8072
    CSAHi shIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCase term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefVarArray term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=208 gui=undercurl guibg=bg guifg=fg guisp=#ff4500
    CSAHi shCurlyIn term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=208 gui=NONE guibg=#bebebe guifg=#ff4500
    CSAHi NeomakeErrorSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=196 gui=NONE guibg=#bebebe guifg=#ff0000
    CSAHi NeomakeInfoSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=49 gui=NONE guibg=#bebebe guifg=#00ff7f
    CSAHi shBkslshSnglQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=250 ctermfg=235 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi lCursor term=NONE cterm=NONE ctermbg=250 ctermfg=235 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi MatchParen term=reverse cterm=bold ctermbg=bg ctermfg=51 gui=bold guibg=bg guifg=#00ffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=157 gui=italic guibg=bg guifg=#7ccd7c
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#fa8072
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#76eec6
    CSAHi shFunctionStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionThree term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionFour term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPattern term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeInfoDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=49 gui=undercurl guibg=bg guifg=fg guisp=#00ff7f
    CSAHi shOK term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeErrorDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=159 gui=NONE guibg=#bebebe guifg=#87ceeb
    CSAHi shCaseEsac term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTouch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTest term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=59 ctermfg=225 gui=NONE guibg=#302028 guifg=#f0a0c0
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=246 gui=NONE guibg=#2b2e36 guifg=#999999
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=239 ctermfg=223 gui=NONE guibg=#4d4d4d guifg=#d2b48c
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=230 ctermfg=16 gui=NONE guibg=#ffe7ba guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=159 ctermfg=16 gui=NONE guibg=#87ceff guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=243 ctermfg=16 gui=NONE guibg=#737373 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=218 ctermfg=16 gui=NONE guibg=#ff6eb4 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi shSkipInitWS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shForSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=250 gui=NONE guibg=#262626 guifg=#bebebe
    CSAHi txtParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi txtExtra term=NONE cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#605958
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=116 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#eedc82
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=211 gui=NONE guibg=bg guifg=#ee799f
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=215 gui=NONE guibg=bg guifg=#ffa54f
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=202 gui=NONE guibg=#eeee00 guifg=#ff4500
    CSAHi shDerefPSRleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPSRright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shExpr term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseEsacSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDoSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseExSingleQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shIfSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shUntilSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shWhileSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#605958
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#3465a4
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=159 ctermfg=26 gui=reverse guibg=#2050d0 guifg=#b0ffff
    CSAHi Search term=reverse cterm=NONE ctermbg=60 ctermfg=252 gui=NONE guibg=#445599 guifg=#cccccc
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=29 gui=NONE guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=116 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shDo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCmdParenRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=116 gui=undercurl guibg=bg guifg=fg guisp=#87ceeb
    CSAHi User1 term=NONE cterm=NONE ctermbg=59 ctermfg=221 gui=NONE guibg=#4d5057 guifg=#ffd75f
    CSAHi User2 term=NONE cterm=NONE ctermbg=59 ctermfg=233 gui=NONE guibg=#4d5057 guifg=#121212
    CSAHi User3 term=NONE cterm=NONE ctermbg=59 ctermfg=111 gui=NONE guibg=#4d5057 guifg=#86bcff
    CSAHi User4 term=NONE cterm=NONE ctermbg=59 ctermfg=210 gui=NONE guibg=#4d5057 guifg=#ff7575
    CSAHi User5 term=NONE cterm=NONE ctermbg=59 ctermfg=215 gui=NONE guibg=#4d5057 guifg=#ffab60
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=60 ctermfg=231 gui=NONE guibg=#445599 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=250 ctermfg=60 gui=NONE guibg=#bebebe guifg=#445599
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi shBkslshDblQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSubSh term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shVarAssign term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSpecialVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shComma term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=116 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shFunctionOne term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionTwo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#605958
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=48 gui=NONE guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=59 ctermfg=250 gui=NONE guibg=#4d5057 guifg=#bebebe
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=243 ctermfg=250 gui=NONE guibg=#787878 guifg=#bebebe
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=241 ctermfg=241 gui=NONE guibg=#666666 guifg=#666666
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#373b41 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#fa8072
    CSAHi shIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCase term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefVarArray term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=202 gui=undercurl guibg=bg guifg=fg guisp=#ff4500
    CSAHi shCurlyIn term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=202 gui=NONE guibg=#bebebe guifg=#ff4500
    CSAHi NeomakeErrorSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=196 gui=NONE guibg=#bebebe guifg=#ff0000
    CSAHi NeomakeInfoSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=48 gui=NONE guibg=#bebebe guifg=#00ff7f
    CSAHi shBkslshSnglQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=250 ctermfg=235 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi lCursor term=NONE cterm=NONE ctermbg=250 ctermfg=235 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi MatchParen term=reverse cterm=bold ctermbg=bg ctermfg=51 gui=bold guibg=bg guifg=#00ffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=114 gui=italic guibg=bg guifg=#7ccd7c
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#fa8072
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=122 gui=NONE guibg=bg guifg=#76eec6
    CSAHi shFunctionStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionThree term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionFour term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPattern term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeInfoDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=48 gui=undercurl guibg=bg guifg=fg guisp=#00ff7f
    CSAHi shOK term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeErrorDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageSignDefault term=NONE cterm=NONE ctermbg=250 ctermfg=116 gui=NONE guibg=#bebebe guifg=#87ceeb
    CSAHi shCaseEsac term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTouch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTest term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=52 ctermfg=217 gui=NONE guibg=#302028 guifg=#f0a0c0
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=246 gui=NONE guibg=#2b2e36 guifg=#999999
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=239 ctermfg=180 gui=NONE guibg=#4d4d4d guifg=#d2b48c
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=223 ctermfg=16 gui=NONE guibg=#ffe7ba guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=117 ctermfg=16 gui=NONE guibg=#87ceff guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=243 ctermfg=16 gui=NONE guibg=#737373 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=205 ctermfg=16 gui=NONE guibg=#ff6eb4 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi shSkipInitWS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shForSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#262626 guifg=#bebebe
    CSAHi txtParens term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi txtExtra term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#605958
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#eedc82
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#ee799f
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#ffa54f
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=64 gui=NONE guibg=#eeee00 guifg=#ff4500
    CSAHi shDerefPSRleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPSRright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shExpr term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseEsacSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDoSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseExSingleQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shIfSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shUntilSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shWhileSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#605958
    CSAHi NonText term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#3465a4
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=63 ctermfg=22 gui=reverse guibg=#2050d0 guifg=#b0ffff
    CSAHi Search term=reverse cterm=NONE ctermbg=21 ctermfg=58 gui=NONE guibg=#445599 guifg=#cccccc
    CSAHi MoreMsg term=bold cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shDo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpGraphic term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCmdParenRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=43 gui=undercurl guibg=bg guifg=fg guisp=#87ceeb
    CSAHi User1 term=NONE cterm=NONE ctermbg=81 ctermfg=73 gui=NONE guibg=#4d5057 guifg=#ffd75f
    CSAHi User2 term=NONE cterm=NONE ctermbg=81 ctermfg=16 gui=NONE guibg=#4d5057 guifg=#121212
    CSAHi User3 term=NONE cterm=NONE ctermbg=81 ctermfg=43 gui=NONE guibg=#4d5057 guifg=#86bcff
    CSAHi User4 term=NONE cterm=NONE ctermbg=81 ctermfg=69 gui=NONE guibg=#4d5057 guifg=#ff7575
    CSAHi User5 term=NONE cterm=NONE ctermbg=81 ctermfg=69 gui=NONE guibg=#4d5057 guifg=#ffab60
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=21 ctermfg=79 gui=NONE guibg=#445599 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=85 ctermfg=21 gui=NONE guibg=#bebebe guifg=#445599
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=fg gui=NONE guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=84 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi shBkslshDblQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSubSh term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shVarAssign term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shSpecialVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shComma term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#87ceeb
    CSAHi shFunctionOne term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionTwo term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#605958
    CSAHi CursorLineNr term=bold cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=NONE ctermbg=bg ctermfg=29 gui=NONE guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=81 ctermfg=85 gui=NONE guibg=#4d5057 guifg=#bebebe
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=82 ctermfg=85 gui=NONE guibg=#787878 guifg=#bebebe
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=81 ctermfg=81 gui=NONE guibg=#666666 guifg=#666666
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#373b41 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#fa8072
    CSAHi shIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDblBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCase term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shCaseRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefVarArray term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff4500
    CSAHi shCurlyIn term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeWarningSignDefault term=NONE cterm=NONE ctermbg=85 ctermfg=64 gui=NONE guibg=#bebebe guifg=#ff4500
    CSAHi NeomakeErrorSignDefault term=NONE cterm=NONE ctermbg=85 ctermfg=64 gui=NONE guibg=#bebebe guifg=#ff0000
    CSAHi NeomakeInfoSignDefault term=NONE cterm=NONE ctermbg=85 ctermfg=29 gui=NONE guibg=#bebebe guifg=#00ff7f
    CSAHi shBkslshSnglQuote term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=85 ctermfg=80 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi lCursor term=NONE cterm=NONE ctermbg=85 ctermfg=80 gui=NONE guibg=#bebebe guifg=#262626
    CSAHi MatchParen term=reverse cterm=bold ctermbg=bg ctermfg=31 gui=bold guibg=bg guifg=#00ffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=41 gui=italic guibg=bg guifg=#7ccd7c
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#fa8072
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=46 gui=NONE guibg=bg guifg=#76eec6
    CSAHi shFunctionStart term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionThree term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shFunctionFour term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPattern term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSleft term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shDerefPPSright term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeInfoDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=29 gui=undercurl guibg=bg guifg=fg guisp=#00ff7f
    CSAHi shOK term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeErrorDefault term=NONE cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi NeomakeMessageSignDefault term=NONE cterm=NONE ctermbg=85 ctermfg=43 gui=NONE guibg=#bebebe guifg=#87ceeb
    CSAHi shCaseEsac term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTouch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shTest term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=80 ctermfg=70 gui=NONE guibg=#302028 guifg=#f0a0c0
    CSAHi Folded term=NONE cterm=NONE ctermbg=80 ctermfg=84 gui=NONE guibg=#2b2e36 guifg=#999999
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=81 ctermfg=57 gui=NONE guibg=#4d4d4d guifg=#d2b48c
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=78 ctermfg=16 gui=NONE guibg=#ffe7ba guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=43 ctermfg=16 gui=NONE guibg=#87ceff guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=82 ctermfg=16 gui=NONE guibg=#737373 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=70 ctermfg=16 gui=NONE guibg=#ff6eb4 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi shSkipInitWS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi shForSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
endif

if 1
    delcommand CSAHi
endif
