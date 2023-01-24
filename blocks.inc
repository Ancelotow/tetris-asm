;****************************************
;   blocks Tetris (c) 2023
; =======================================
; Librairie pour les blocks tetris v 1.0

;==== exported functions ====
extrn get_block_from_code:near  ; codeBlock >>

;==== exported variables ====
extrn codeBlock:byte
extrn blockHeight:byte          ; << get_block_from_code
extrn blockWidth:byte           ; << get_block_from_code
extrn currentBlock:word         ; << get_block_from_code
extrn blockColor:byte           ; << get_block_from_code
extrn rickyBlue:word
extrn rickyOrange:word
extrn teewee:word
extrn smashboy:word
extrn hero:word
extrn cleveland:word
extrn rhodeCleveland:word
extrn rickyWidth:byte
extrn rickyHeight:byte
extrn teeweeWidth:byte
extrn teeweeHeight:byte
extrn smashboyWidth:byte
extrn smashboyHeight:byte
extrn heroWidth:byte
extrn heroHeight:byte
extrn clevelandWidth:byte
extrn clevelandHeight:byte
extrn rhodeClevelandWidth:byte
extrn rhodeClevelandHeight:byte
;=============================