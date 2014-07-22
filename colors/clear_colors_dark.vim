" Copyright (c) 2014 Alexander Heinrich <alxhnr@nudelpost.de> {{{
" 
" This software is provided 'as-is', without any express or implied
" warranty. In no event will the authors be held liable for any damages
" arising from the use of this software.
" 
" Permission is granted to anyone to use this software for any purpose,
" including commercial applications, and to alter it and redistribute it
" freely, subject to the following restrictions:
" 
"    1. The origin of this software must not be misrepresented; you must
"       not claim that you wrote the original software. If you use this
"       software in a product, an acknowledgment in the product
"       documentation would be appreciated but is not required.
" 
"    2. Altered source versions must be plainly marked as such, and must
"       not be misrepresented as being the original software.
" 
"    3. This notice may not be removed or altered from any source
"       distribution.
" }}}

highlight clear
if exists('syntax_on')
	syntax reset
endif
let g:colors_name = 'clear_colors_dark'

if exists('&t_Co') && &t_Co == 8 " {{{
	let s:colors =
		\	{
		\		'Normal'                 : { 'bg'   : '8',    'fg' : '7' },
		\		'String'                 : { 'fg'   : '2' },
		\		'Include'                : { 'fg'   : '7' },
		\		'Debug'                  : { 'font' : 'bold', 'fg' : '5' },
		\		'Error'                  : { 'font' : 'bold', 'fg' : '1' },
		\		'Folded'                 : { 'font' : 'bold', 'bg' : '7', 'fg' : '4' },
		\		'FoldColumn'             : { 'font' : 'bold', 'bg' : '7', 'fg' : '4' },
		\		'SignColumn'             : { 'font' : 'bold', 'bg' : '7' },
		\		'CursorLineNr'           : { 'bg'   : '7',    'fg' : '0' },
		\		'VertSplit'              : { 'bg'   : '7',    'fg' : '7' },
		\		'Search'                 : { 'bg'   : '7',    'fg' : '0' },
		\		'LineNr'                 : { 'font' : 'bold', 'bg' : '7', 'fg' : '0' },
		\		'StatusLine'             : { 'bg'   : '7',    'fg' : '0' },
		\		'TabLine'                : { 'font' : 'bold', 'bg' : '7', 'fg' : '0' },
		\		'TabLineSel'             : { 'bg'   : '7',    'fg' : '0' },
		\		'Visual'                 : { 'font' : 'bold', 'bg' : '7', 'fg' : '7' },
		\		'Pmenu'                  : { 'bg'   : '7',    'fg' : '0' },
		\		'PmenuSbar'              : { 'bg'   : '7' },
		\		'PmenuThumb'             : { 'bg'   : '3' },
		\		'SyntasticErrorSign'     : { 'bg' : '7', 'fg' : '1' },
		\		'SyntasticWarningSign'   : { 'font' : 'bold', 'bg' : '7', 'fg' : '3' },
		\		'StartifyHeader'         : { 'fg'   : '2' },
		\		'CtrlPNoEntries'         : { 'font' : 'bold', 'fg' : '1' },
		\	} " 8 colors. }}}
else " 256 colors. {{{
	let s:colors =
		\	{
		\		'Normal'                 : { 'bg' : '235',         'fg' : '250' },
		\		'Constant'               : { 'fg' : '180' },
		\		'Number'                 : { 'fg' : '174' },
		\		'Function'               : { 'fg' : '110' },
		\		'Underlined'             : { 'font' : 'underline', 'fg' : '110' },
		\		'Folded'                 : { 'bg' : '236',         'fg' : '110' },
		\		'FoldColumn'             : { 'bg' : '237',         'fg' : '110' },
		\		'SignColumn'             : { 'font' : 'bold',      'bg' : '237' },
		\		'ColorColumn'            : { 'bg' : '236' },
		\		'CursorLine'             : { 'bg' : '236' },
		\		'CursorLineNr'           : { 'bg' : '238',         'fg' : '245' },
		\		'MatchParen'             : { 'font' : 'bold',      'bg' : '96',  'fg' : '255' },
		\		'StatusLine'             : { 'bg' : '237' },
		\		'DiffAdd'                : { 'bg' : '65',          'fg' : '253' },
		\		'DiffDelete'             : { 'bg' : '95',          'fg' : '95' },
		\		'DiffChange'             : { 'bg' : '60',          'fg' : '251' },
		\		'DiffText'               : { 'bg' : '66',          'fg' : '253' },
		\		'VertSplit'              : { 'bg' : '237',         'fg' : '237' },
		\		'Search'                 : { 'bg' : '239',         'fg' : '250' },
		\		'IncSearch'              : { 'font' : 'bold',      'bg' : '72', 'fg' : '235' },
		\		'LineNr'                 : { 'bg' : '237',         'fg' : '243' },
		\		'TabLine'                : { 'font' : 'underline', 'bg' : '235', 'fg' : '241' },
		\		'TabLineSel'             : { 'font' : 'underline', 'bg' : '238', 'fg' : '249' },
		\		'Visual'                 : { 'bg' : '242',         'fg' : '251' },
		\		'Pmenu'                  : { 'bg' : '239',         'fg' : '249' },
		\		'Pmenusel'               : { 'bg' : '244',         'fg' : '253' },
		\		'PmenuSbar'              : { 'bg' : '243' },
		\		'PmenuThumb'             : { 'bg' : '251' },
		\		'OutOfTextwidth'         : { 'font' : 'underline', 'bg' : '238' },
		\		'SyntasticErrorSign'     : { 'font' : 'bold',      'bg' : '237', 'fg' : '203' },
		\		'SyntasticWarningSign'   : { 'font' : 'bold',      'bg' : '237', 'fg' : '215' },
		\		'GentooChangeLogDelFile' : { 'bg' : '95',          'fg' : '252' },
		\	}
endif " 256 colors. }}}

call clear_colors#apply_colors(s:colors)
call clear_colors#apply_common_highlights()