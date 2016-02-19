" Vim syntax file
" Language:         pyx syntax
" Maintainer:       Michal Špaček <tupinek@gmail.com>
" Latest Revision:  2016-02-19

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match pyxAttributeName "[a-z][a-z_\-:.0-9]*" contained
syn match pyxAttributeTag "^A" contained
syn match pyxAttributeValue " .*$" contained
syn match pyxAttribute "^A.*$" contains=pyxAttributeTag,pyxAttributeName,pyxAttributeValue

syn match pyxBeginElementTag "^(" contained
syn match pyxBeginElement "^(.*$" contains=pyxBeginElementTag

syn match pyxCommentTag "^_" contained
syn match pyxComment "^_.*$" contains=pyxCommentTag

syn match pyxCharacterTag "^-" contained
syn match pyxCharacter "^-.*$" contains=pyxCharacterTag

syn match pyxEndElementTag "^)" contained
syn match pyxEndElement "^).*$" contains=pyxEndElementTag

syn match pyxInstructionTargetCode "^?" contained
syn match pyxInstruction "^?.*$" contains=pyxInstructionTargetCode

hi def link pyxAttributeTag Keyword
hi def link pyxAttributeName Type
hi def link pyxAttributeValue String

hi def link pyxBeginElement Function
hi def link pyxBeginElementTag Keyword

hi def link pyxComment Comment
hi def link pyxCommentTag Keyword

hi def link pyxCharacter String
hi def link pyxCharacterTag Keyword

hi def link pyxEndElement Function
hi def link pyxEndElementTag Keyword

hi def link pyxInstruction Type
hi def link pyxInstructionTargetCode Keyword

let b:current_syntax = "pyx"

" vim:ts=8
