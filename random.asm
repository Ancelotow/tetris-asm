;******************************************************
; Programme génration nombre aléatoire
;******************************************************

public dividende
public diviseur
public reste

public get_second
public modulo
public get_random

donnees segment public
    dividende DW 7
    diviseur DW 7
    reste DW 0

    decade DB 0
    unit DB 0
donnees ends

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code

prog:
    mov AH,4Ch
    mov AL,00h
    int 21h

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Récupération des secondes courantes
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

    mov AH, 0
    mov dividende, AX
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Modulo des secondes courante par un diviseur
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
modulo:
    mov DX, 0
    mov AX, dividende
    mov CX, diviseur
    div CX
    mov reste, DX
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Généraration d'un nombre aléatoire
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
get_random:
    call get_second
    call modulo
    ret

code    ends ; Fin du segment de code
end prog