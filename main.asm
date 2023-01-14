;******************
; Programme Tetris
;******************

include libgfx.inc
extrn rickyBlue:word
extrn rickyOrange:word
extrn teewee:word
extrn smashboy:word
extrn hero:word
extrn cleveland:word
extrn rhodeCleveland:word

pile    segment stack     ; Segment de pile
pile    ends

donnees segment public    ; Segment de donnees
    XX DW 0
    YY DW 0
donnees ends

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code,ss:pile

prog:
    mov AX, donnees
	mov DS, AX
    call Video13h
    mov tempo, 100
    call drawLand

boucle:
    call WaitKey
    cmp userinput, 'a'
    je endloop
    call sleep
    mov ah,0Dh
    mov CX, 2
    mov DX, 2
    int 10H
    cmp AL, 5
    je printColor
    jmp  boucle

printColor:
    mov cCX, 20
    mov cDX, 20
    mov col, 10
    call PaintPxl
    jmp  boucle

endloop:
    jmp fin

drawLand:
    mov Rx, 2
    mov Ry, 2
    mov Rw, 150
    mov Rh, 175
    mov col, 7
    call Rectangle
    mov hX, 100
    mov hY, 20
    mov BX, offset cleveland
    call drawIcon
    mov hX, 100
    mov hY, 50
    mov BX, offset rhodeCleveland
    call drawIcon
    mov hX, 70
    mov hY, 20
    mov BX, offset rickyBlue
    call drawIcon
    mov hX, 70
    mov hY, 50
    mov BX, offset rickyOrange
    call drawIcon
    mov hX, 40
    mov hY, 20
    mov BX, offset smashboy
    call drawIcon
    mov hX, 40
    mov hY, 50
    mov BX, offset teewee
    call drawIcon
    mov hX, 10
    mov hY, 20
    mov BX, offset hero
    call drawIcon

    ret

fin:
    call VideoCMD
    mov AH,4Ch      ; 4Ch = fonction de fin de prog DOS
    mov AL,00h      ; code de sortie 0 (tout s'est bien passe)
    int 21h

code    ends               ; Fin du segment de code
end prog                 ; Fin du programme