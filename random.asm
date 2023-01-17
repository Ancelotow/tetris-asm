;******************************************************
; Programme génration nombre aléatoir
;******************************************************

pile    segment stack     ; Segment de pile
pile    ends

donnees segment public    ; Segment de donnees
    dividende DB 10
    diviseur DB 5
    reste DB 0

    decade DB 0
    unit DB 0
donnees ends

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code,ss:pile

prog:
    mov AX, donnees
	mov DS, AX
    call modulo
    jmp fin

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Boucle principale du progralle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_second:
    mov AH, 2Ch ; Appel de la focntion getTime()
    int 21h
    mov AL, DH  ; Récupération des secondes (contenu dans le registre DH)
    aam         ; Ajustement en base 10
    mov BX, AX  ; Met les secondes dans le BX (BH les dizaines, BL les unités)

    ; Récupération des dizaines
    mov DL, BH
    add DL, 30H
    mov decade, DL

    ; Récupération des unités
    mov DL, BL
    add DL, 30H
    mov unit, DL

    ; Assemblage des deux registre en une valeure
    mov AL, decade
    mov BX, 10
    mul BX
    add AL, unit

    mov DL, AL
    mov AH, 02h
    int 21h

    ret

modulo:

    mov AL, dividende
    mov CL, diviseur
    div CL

    mov DL, DL
    add DL, 30h
    mov AH, 02h
    int 21h




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Fin du programme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fin:
     mov AH,4Ch      ; 4Ch = fonction de fin de prog DOS
     mov AL,00h      ; code de sortie 0 (tout s'est bien passe)
     int 21h

code    ends               ; Fin du segment de code
end prog