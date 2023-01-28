;******************
; Programme Tetris
;******************

include libgfx.inc
include random.inc
include blocks.inc

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
    isColision DB 0         ;detecte collision

    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Autres données
    ;;;;;;;;;;;;;;;;;;;;;;;;;;
    cXX DW 150           ; Coordonée X  de la pièce courante
    cYY DW 25            ; Coordonée Y de la pièce courante
    cCol DB 42          ; Couleur de la pièce courante
    cBlocks DW 0        ; Block courant
    cBlocksWidth DB 0   ; Largeur du block courant
    cBlocksHeight DB 0  ; Hauteur du block courant

    nbLoop DB 0         ; nombre de tour de la pièce courante
    cWidth DB 0         ;current largeur
    cHeight DB 0        ;current hauteur
    loopY DW 0          ;coordonnée de comparaison
    loopX DW 0          ;coordonnée de comparaison
    incr DW 0
    result DB 0

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Données utilisée dans la fonction de dessein
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    tabWidth DW 0
    tabRow DW 0
    tabCurrentLenght DW 0
    tabLength DW 0
    tabCurrentWidth DW 0
donnees ends

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code,ss:pile

prog:
    mov AX, donnees
	mov DS, AX
    call Video13h
    call get_random_blocks

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Boucle principale du progralle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
boucle:
    call drawLand
    call PeekKey
    cmp userinput, 'a'
    je end_loop
    call get_colision
    mov tempo, 5
    call sleep
    jmp  boucle

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Récupère la couleur aux cordonnées pX et pY
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_color:
    mov ah, 0Dh
    mov CX, pX
    mov DX, pY
    int 10H
    mov retCol, AL
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fait descendre le block s'il n'y a pas de colisions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
drop_block:
    call draw_block
    cmp isColision, 0
    je drop_block_move
    mov nbLoop, 0
    mov cXX, 150
    mov cYY, 25
    call get_random_blocks
    drop_block_move:
        inc nbLoop
        add cYY, 1
        call draw_block
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
        mov AL, cBlocksHeight
        cmp cHeight, AL
        je loop_vertical_compare_change_column
        jmp loopback_vertical

    loop_vertical_compare_change_column:
        mov AL, cBlocksWidth
        cmp cWidth, AL
        je end_move_down
        inc cWidth
        inc loopX
        mov cHeight, 0
        mov AX, cYY
        mov loopY, AX
        jmp loop_vertical_compare

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Dessine le block courant
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
draw_blocks_old:
    mov AX, cXX
    mov hX, AX
    mov AX, cYY
    mov hY, AX
    mov BX, cBlocks
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
    mov Rx, 130
    mov Ry, 20
    mov Rw, 60
    mov Rh, 160
    mov col, 7
    call Rectangle
    call drop_block
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Récupère un block aléatoirement
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_random_blocks:
    mov diviseur, 7
    call get_random
    mov AX, reste
    mov codeBlock, AL
    call get_block_from_code
    mov BX, currentBlock
    mov cBlocks, BX
    mov AL, blockWidth
    mov cBlocksWidth, AL
    mov AL, blockHeight
    mov cBlocksHeight, AL
    mov AL, blockColor
    mov cCol, AL
    ret

draw_block:
    ; Récupération de la width du block
    mov BX, cBlocks
    mov AX, [BX]
    mov tabWidth, AX

    ; Récupération du nombre total de caractère dans le block
    add BX, 2
    mov AX, [BX]
    mov tabLength, AX

    add BX, 2
    mov tabCurrentLenght, 0
    mov tabRow, 0
    mov tabCurrentWidth, 1
    loop_draw_block:
        mov AX, [BX]
        cmp AL, 0
        je draw_block_black_pixel
        call draw_block_draw_get_coordinates

        loop_draw_block_draw_prixel:
            call PaintPxl

        loop_draw_block_afer_pixel_continue:
            mov AX, tabWidth
            cmp AX, tabCurrentWidth
            je draw_block_jump
            inc tabCurrentWidth

        loop_draw_block_afer_jump_continue:
            inc BX
            inc tabCurrentLenght
            mov AX, tabCurrentLenght
            cmp AX, tabLength
            jne loop_draw_block
            jmp draw_block_end

    draw_block_jump:
        mov tabCurrentWidth, 1
        inc tabRow
        jmp loop_draw_block_afer_jump_continue

    draw_block_black_pixel:
        call draw_block_draw_get_coordinates
        mov AX, cCX
        mov pX, AX
        mov AX, cDX
        mov pY, AX
        call get_color
        mov AL, cCol
        cmp retCol, AL
        je loop_draw_block_draw_prixel
        cmp retCol, 0
        je loop_draw_block_draw_prixel
        jmp loop_draw_block_afer_pixel_continue

    draw_block_end:
        ret

    draw_block_draw_get_coordinates:
        ; Ajout de la couleur
        mov col, AL
        ; Coordonnées X
        mov AX, cXX
        add AX, tabCurrentWidth
        dec AX
        mov cCX, AX
        ; Coordonnées Y
        mov AX, cYY
        add AX, tabRow
        mov cDX, AX
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