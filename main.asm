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
    previousIsColor DB 0
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

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Données utilisée dans les fonctions move
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    nbLoopMove DB 0
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
    call get_userinput
    call get_colision
    mov tempo, 5
    call sleep
    jmp  boucle

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Fin du programme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
end_game:
    call VideoCMD
    mov AH,4Ch      ; 4Ch = fonction de fin de prog DOS
    mov AL,00h      ; code de sortie 0 (tout s'est bien passe)
    int 21h

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Execution des commandes saisies par le joueur
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_userinput:
    call PeekKey
    cmp userinput, 'a'
    je end_game
    cmp userinput, 'q'
    je move_left
    cmp userinput, 'd'
    je move_right
    jmp turn_move
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Déplace le block à gauche
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
move_left:
    mov nbLoopMove, 0
    move_left_loop:
        inc nbLoopMove
        dec cXX
        call draw_block
        cmp nbLoopMove, 5
        jne move_left_loop
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Déplace le block à droite
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
move_right:
    mov nbLoopMove, 0
    move_right_loop:
        inc nbLoopMove
        inc cXX
        call draw_block
        cmp nbLoopMove, 5
        jne move_right_loop
    ret

turn_move:
   cmp userinput, 'e'
   je turn_right
   ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Tourne le block à droite
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
turn_right:
    call erase_block
    mov idTurn, 2
    call turn_block
    mov BX, block
    mov cBlocks, BX

    ;Récupération de la taille du tableau
    mov BX, cBlocks
    mov AX, [BX]
    mov cBlocksWidth, AL

    ;Récupération de la hauteur du tableau
    add BX, 2
    mov AX, [BX]
    mov CL, cBlocksWidth
    div CL
    mov cBlocksHeight, AL

    ; Récupération du code couleur
    add BX, 2
    mov AX, [BX]
    mov cCol, AL
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Efface le block avant de le tourner
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
erase_block:
    ; Récupération de la width du block
    mov BX, cBlocks
    mov AX, [BX]
    mov tabWidth, AX

    ; Récupération du nombre total de caractère dans le block
    add BX, 2
    mov AX, [BX]
    mov tabLength, AX

    add BX, 4
    mov tabCurrentLenght, 0
    mov tabRow, 0
    mov tabCurrentWidth, 1
    loop_erase_block:
        mov AX, [BX]
        cmp AL, 0
        call erase_block_draw_get_coordinates
        call PaintPxl
        mov AX, tabWidth
        cmp AX, tabCurrentWidth
        je erase_block_jump
        inc tabCurrentWidth

        loop_erase_block_afer_jump_continue:
            inc BX
            inc tabCurrentLenght
            mov AX, tabCurrentLenght
            cmp AX, tabLength
            jne loop_erase_block
            jmp erase_block_end

    erase_block_jump:
        mov tabCurrentWidth, 1
        inc tabRow
        jmp loop_erase_block_afer_jump_continue

    erase_block_end:
        ret

    erase_block_draw_get_coordinates:
        ; Ajout de la couleur
        mov col, 0
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
; Vérifi s'il y a une colision ou non
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_colision:
    mov AX, cYY
    mov loopY, AX
    mov AX, cXX
    mov loopX, AX
    inc loopX
    mov cWidth, 3
    mov cHeight, 0
    mov isColision, 0
    mov previousIsColor, 0
    jmp loop_vertical_compare

    loop_vertical_compare:
        mov AX, loopX
        mov pX, AX
        mov AX, loopY
        mov pY, AX
        call get_color ; Récupère la couleur
        mov AL, cCol
        cmp retCol, AL ; Vérifie que c'est la même couleur que le pixel courant
        je loop_vertical_compare_color
        cmp retCol, 0
        je loop_vertical_compare_black
        cmp previousIsColor, 1
        jne loopback_vertical
        mov isColision, 1
        jmp end_move_down

    end_move_down:
        ret

    loopback_vertical:
        inc cHeight
        inc loopY
        jmp loop_vertical_compare

    loop_vertical_compare_color:
        mov previousIsColor, 1
        jmp loopback_vertical

    loop_vertical_compare_black:
        mov previousIsColor, 0
        mov AL, cBlocksHeight
        cmp cHeight, AL
        je loop_vertical_compare_change_column
        jmp loopback_vertical

    loop_vertical_compare_change_column:
        mov previousIsColor, 0
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
    mov Rw, 61
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
    mov BX, block
    mov cBlocks, BX

    ;Récupération de la taille du tableau
    mov BX, cBlocks
    mov AX, [BX]
    mov cBlocksWidth, AL

    ;Récupération de la hauteur du tableau
    add BX, 2
    mov AX, [BX]
    mov CL, cBlocksWidth
    div CL
    mov cBlocksHeight, AL

    ; Récupération du code couleur
    add BX, 2
    mov AX, [BX]
    mov cCol, AL
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Affiche le block courant
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
draw_block:
    ; Récupération de la width du block
    mov BX, cBlocks
    mov AX, [BX]
    mov tabWidth, AX

    ; Récupération du nombre total de caractère dans le block
    add BX, 2
    mov AX, [BX]
    mov tabLength, AX

    add BX, 4
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


code    ends               ; Fin du segment de code
end prog                 ; Fin du programme