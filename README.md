# PYX syntax highlighting script for Vim

## File format

* (element - Begin of element
* Akey value - Element attribute
* )element - End of element
* -character - Character data
* _comment - Comment
* ?target code - Instruction

## Filetype
```vim
au BufNewFile,BufRead *pyx set ft=pyx
```

Michal Špaček
19.2.2016
