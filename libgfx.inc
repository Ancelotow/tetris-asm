;****************************************
;   TJO libgfx  (c) 2021
; =======================================
; Librairie de dessin v 2.3 

;==== exported functions ====
extrn Video13h:near
extrn VideoVGA:near      
extrn VideoCMD:near
extrn ClearScreen:near
extrn CharLine:near     ; DX>>
extrn WaitKey:near      ; >>userinput
extrn PeekKey:near      ; >>userinput
extrn PaintPxl:near     ; cCX, cDx, col>>
extrn BigPixl:near      ; cCX, cDx, col>>
extrn sleep:near        ; tempo>>
extrn FillShape:near    ; CX, DX>>
extrn Horizontal:near   ; CX, DX, col, BX>>
extrn Vertical:near     ; CX, DX, col, BX>>
extrn Rectangle:near    ; Rx, Ry, Rw, Rh, col>>
extrn fillRect:near     ; Rx, Ry, Rw, Rh, col>>
extrn drawIcon:near     ; hX, hY, BX>>
extrn drawIconBig:near  ; hX, hY, BX>>
;==== exported variables ====
extrn userinput:byte ; <<WaitKey, PeekKey
extrn col:byte       ; >>PaintPxl
extrn cCX:word       ;    "
extrn cDX:word       ;    "
extrn Rx:word		 ; >>Rectangle, fillRect
extrn Ry:word        ;    "
extrn Rw:word        ;    "
extrn Rh:word        ;    "
extrn Hx:word		 ; >>drawIcon
extrn hY:word        ;    "
extrn tempo:word     ; >>sleep
;=============================
