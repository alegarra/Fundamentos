#N=5
#pandoc capitulo$N.md   --pdf-engine=pdflatex --number-sections --variable urlcolor=cyan -o capitulo$N.pdf
#pandoc capitulo$N.md -o capitulo$N.docx

pandoc capitulo1.md capitulo2.md capitulo3_FM.md capitulo4_bm.md  capitulo5.md -o capitulo_all.pdf --pdf-engine=pdflatex --number-sections --variable urlcolor=cyan
pandoc capitulo1.md capitulo2.md capitulo3_FM.md capitulo4_bm.md capitulo5.md -o capitulo_all.docx
#cat capitulo1.md capitulo2.md capitulo3_FM.md capitulo4_bm.md capitulo5.md > capitulo_all.md


