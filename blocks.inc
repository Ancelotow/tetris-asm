;****************************************
;   blocks Tetris (c) 2023
; =======================================
; Librairie pour les blocks tetris v 1.0

;==== exported functions ====
extrn get_block_from_code:near  ; codeBlock >>

;==== exported variables ====
extrn codeBlock:byte            ; >> get_block_from_code
extrn block:word                ; << get_block_from_code, turn_block
extrn rickyBlue:word
extrn rickyOrange:word
extrn teewee:word
extrn smashboy:word
extrn hero:word
extrn cleveland:word
extrn rhodeCleveland:word
;=============================