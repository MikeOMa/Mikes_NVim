let g:tex_flavor='xelatex'
let g:Tex_CustomTemplateDirectory= '~/.auxfiles/tex_templates'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bib,pdf,dvi'
let g:Tex_CompileRule_pdf = 'xelatex -aux-directory=~/.auxfiles/tex_temp --synctex=-1 -src-specials -interaction=nonstopmode $*'
let g:Tex_GotoError=0
