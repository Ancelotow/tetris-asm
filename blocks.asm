
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Blocks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
public rickyBlue
public rickyOrange
public teewee
public smashboy
public hero
public cleveland
public rhodeCleveland

public block
public codeBlock
public get_block_from_code

donnees segment public   ;--- Segment de donnees ---

codeBlock DB 0
block DW 0

rickyOrange DW  17, 187, 42
rio000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rio001 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
rio002 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
rio003 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
rio004 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
rio005 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
rio011 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rio012 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rio013 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rio014 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rio015 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0

rickyBlue DW  17, 187, 1
rib000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib001 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib002 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib003 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib004 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib005 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib011 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
rib012 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
rib013 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
rib014 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
rib015 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0

teewee DW  17, 187, 5
tew000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
tew001 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tew002 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tew003 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tew004 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tew005 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tew011 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tew012 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tew013 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tew014 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tew015 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0

smashboy DW  12, 132, 6
smb000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
smb001 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb002 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb003 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb004 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb005 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb011 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb012 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb013 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb014 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0
smb015 DB 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 0

hero DW  22, 132, 3
her000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
her001 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her002 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her003 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her004 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her005 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0

heroVertical DW 7, 147, 3
hev000 DB 0, 0, 0, 0, 0, 0, 0
hev001 DB 0, 3, 3, 3, 3, 3, 0
hev002 DB 0, 3, 3, 3, 3, 3, 0
hev003 DB 0, 3, 3, 3, 3, 3, 0
hev004 DB 0, 3, 3, 3, 3, 3, 0
hev005 DB 0, 3, 3, 3, 3, 3, 0
hev011 DB 0, 3, 3, 3, 3, 3, 0
hev012 DB 0, 3, 3, 3, 3, 3, 0
hev013 DB 0, 3, 3, 3, 3, 3, 0
hev014 DB 0, 3, 3, 3, 3, 3, 0
hev015 DB 0, 3, 3, 3, 3, 3, 0
hev021 DB 0, 3, 3, 3, 3, 3, 0
hev022 DB 0, 3, 3, 3, 3, 3, 0
hev023 DB 0, 3, 3, 3, 3, 3, 0
hev024 DB 0, 3, 3, 3, 3, 3, 0
hev025 DB 0, 3, 3, 3, 3, 3, 0
hev031 DB 0, 3, 3, 3, 3, 3, 0
hev032 DB 0, 3, 3, 3, 3, 3, 0
hev033 DB 0, 3, 3, 3, 3, 3, 0
hev034 DB 0, 3, 3, 3, 3, 3, 0
hev035 DB 0, 3, 3, 3, 3, 3, 0

cleveland DW  17, 187, 4
cle000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
cle001 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
cle002 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
cle003 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
cle004 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
cle005 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
cle011 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
cle012 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
cle013 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
cle014 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
cle015 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0

rhodeCleveland DW 17, 187, 2
rle000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rle001 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rle002 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rle003 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rle004 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rle005 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rle011 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rle012 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rle013 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rle014 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rle015 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0

list_blocks DW rickyOrange, rickyBlue, teewee, smashboy, hero, cleveland, rhodeCleveland
lb000 DW heroVertical, heroVertical, heroVertical, heroVertical, heroVertical, heroVertical, heroVertical

donnees ends   ; ---- Fin Segment de donnees-----

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code

prog:
    mov AH,4Ch
    mov AL,00h
    int 21h

get_block_from_code:
    mov AX, 2
    mov BX, 0
    mov BL, codeBlock
    mul BX
    mov BX, offset list_blocks
    add BX, AX
    mov AX, [BX]
    mov block, AX
    ret


code    ends ; Fin du segment de code
end prog