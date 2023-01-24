;****************************************
;   random (c) 2023
; =======================================
; Librairie de nombre aléatoire v 1.0

;==== exported functions ====
extrn get_second:near
extrn modulo:near       ; diviseur >>
extrn get_random:near   ; diviseur >>
;==== exported variables ====
extrn dividende:word
extrn diviseur:word
extrn reste:word        ; << get_random
;=============================