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

extrn rickyWidth:byte
extrn rickyHeight:byte

pile    segment stack     ; Segment de pile
pile    ends

donnees segment public    ; Segment de donnees
    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Paramètres pour getColor
    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    pX DW 0
    pY DW 0
    retCol DB 0

    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Paramètres pour move_down
    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    isColision DB 0

    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Autres données
    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    cXX DW 75 ; Coordonée X  de la pièce courante
    cYY DW 5 ; Coordonée Y de la pièce courante
    cCol DB 12 ; Couleur de la pièce courante

    cWidth DB 0
    cHeight DB 0
    loopY DW 0
    loopX DW 0
    incr DW 0
    result DB 0
donnees ends

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code,ss:pile

prog:
    mov AX, donnees
	mov DS, AX
    call Video13h

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Boucle principale du progralle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
boucle:
    call drawLand
    call PeekKey
    cmp userinput, 'a'
    je end_loop
    call get_colision
    mov tempo, 10
    call sleep
    jmp  boucle

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Récupère la couleur aux cordonnées pX et pY
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_color:
    mov ah,0Dh
    mov CX, pX
    mov DX, pY
    int 10H
    mov retCol, AL
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fait descendre le block s'il n'y a pas de colisions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
drop_block:
    cmp isColision, 0
    je drop_block_move
    ret
    drop_block_move:
        add cYY, 1
        call draw_blocks
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fin du programme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
end_loop:
        jmp fin

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Vérifi s'il y a une colision ou non
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_colision:
    mov AX, cYY
    mov loopY, AX
    mov AX, cXX
    mov loopX, AX
    mov cWidth, 0
    mov cHeight, 0
    mov isColision, 0
    jmp loop_vertical_compare

    loop_vertical_compare:
        mov AX, loopX
        mov pX, AX
        mov AX, loopY
        mov pY, AX
        call get_color ; Récupère la couleur
        mov AL, cCol
        cmp retCol, AL ; Vérifie que c'est la même couleur que le pixel courant
        je loopback_vertical
        cmp retCol, 0
        je loop_vertical_compare_black
        mov isColision, 1
        jmp end_move_down

    end_move_down:
        ret

    loopback_vertical:
        inc cHeight
        inc loopY
        jmp loop_vertical_compare

    loop_vertical_compare_black:
        mov AL, rickyHeight
        cmp cHeight, AL
        je loop_vertical_compare_change_column
        jmp loopback_vertical

    loop_vertical_compare_change_column:
        mov AL, rickyWidth
        cmp cWidth, AL
        je end_move_down
        inc cWidth
        inc loopX
        mov AX, cYY
        mov loopY, AX
        jmp loop_vertical_compare

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Dessine le block courant
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
draw_blocks:
    mov AX, cXX
    mov hX, AX
    mov AX, cYY
    mov hY, AX
    mov BX, offset rickyOrange
    call drawIcon
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Imprime un pixel vert à la position (20,20). Utiliser pour les tests
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
print_color:
    mov cCX, 20
    mov cDX, 20
    mov col, 10
    call PaintPxl
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Affiche le rectangle avec les pièces qui y sont contenu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
drawLand:
    mov Rx, 0
    mov Ry, 0
    mov Rw, 150
    mov Rh, 175
    mov col, 7
    call Rectangle
    call drop_block
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Fin du programme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fin:
    call VideoCMD
    mov AH,4Ch      ; 4Ch = fonction de fin de prog DOS
    mov AL,00h      ; code de sortie 0 (tout s'est bien passe)
    int 21h

code    ends               ; Fin du segment de code
end prog                 ; Fin du programme