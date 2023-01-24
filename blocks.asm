
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Tailles des blocks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
public rickyWidth
public rickyHeight
public teeweeWidth
public teeweeHeight
public smashboyWidth
public smashboyHeight
public heroWidth
public heroHeight
public clevelandWidth
public clevelandHeight
public rhodeClevelandWidth
public rhodeClevelandHeight

public codeBlock
public blockHeight
public blockWidth
public currentBlock
public get_block_from_code
public blockColor

donnees segment public   ;--- Segment de donnees ---

codeBlock DB 0
blockWidth DB 0
blockHeight DB 0
currentBlock DW 0
blockColor DB 0

rickyWidth DB 15
rickyHeight DB 11
rickyOrange DW  15, 165
rio000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rio001 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42
rio002 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42
rio003 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42
rio004 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42
rio005 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42
rio011 DB 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42
rio012 DB 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42
rio013 DB 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42
rio014 DB 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42
rio015 DB 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42

rickyBlue DW  15, 165
rib000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib001 DB 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib002 DB 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib003 DB 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib004 DB 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib005 DB 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rib011 DB 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
rib012 DB 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
rib013 DB 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
rib014 DB 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
rib015 DB 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

teeweeWidth DB 15
teeweeHeight DB 11
teewee DW  15, 165
tew000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
tew001 DB 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
tew002 DB 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
tew003 DB 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
tew004 DB 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
tew005 DB 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0
tew011 DB 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
tew012 DB 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
tew013 DB 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
tew014 DB 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
tew015 DB 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5


smashboyWidth DB 10
smashboyHeight DB 11
smashboy DW  10, 110
smb000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
smb001 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb002 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb003 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb004 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb005 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb011 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb012 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb013 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb014 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6
smb015 DB 6, 6, 6, 6, 6, 6, 6, 6, 6, 6

heroWidth DB 20
heroHeight DB 6
hero DW  20, 120
her000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
her001 DB 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
her002 DB 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
her003 DB 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
her004 DB 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
her005 DB 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3

clevelandWidth DB 15
clevelandHeight DB 11
cleveland DW  15, 165
cle000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
cle001 DB 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0
cle002 DB 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0
cle003 DB 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0
cle004 DB 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0
cle005 DB 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0
cle011 DB 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
cle012 DB 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
cle013 DB 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
cle014 DB 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
cle015 DB 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4

rhodeClevelandWidth DB 15
rhodeClevelandHeight DB 11
rhodeCleveland DW  15, 165
rle000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rle001 DB 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
rle002 DB 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
rle003 DB 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
rle004 DB 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
rle005 DB 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
rle011 DB 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0
rle012 DB 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0
rle013 DB 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0
rle014 DB 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0
rle015 DB 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0


donnees ends   ; ---- Fin Segment de donnees-----

code    segment public    ; Segment de code
assume  cs:code,ds:donnees,es:code

prog:
    mov AH,4Ch
    mov AL,00h
    int 21h

get_block_from_code:
    cmp codeBlock, 0
    je get_block_hero
    cmp codeBlock, 1
    je get_block_rickyBlue
    cmp codeBlock, 2
    je get_block_rickyOrange
    cmp codeBlock, 3
    je get_block_teewee
    jmp get_block_from_code_continue
    ret

    ; HERO
    get_block_hero:
        mov BX, offset hero
        mov currentBlock, BX
        mov AL, heroWidth
        mov blockWidth, AL
        mov AL, heroHeight
        mov blockHeight, AL
        mov blockColor, 3
        ret

    ; RICKY BLUE
    get_block_rickyBlue:
        mov BX, offset rickyBlue
        mov currentBlock, BX
        mov AL, rickyWidth
        mov blockWidth, AL
        mov AL, rickyHeight
        mov blockHeight, AL
        mov blockColor, 1
        ret

    ; RICKY ORANGE
    get_block_rickyOrange:
        mov BX, offset rickyOrange
        mov currentBlock, BX
        mov AL, rickyWidth
        mov blockWidth, AL
        mov AL, rickyHeight
        mov blockHeight, AL
        mov blockColor, 42
        ret

    ; TEEWEE
    get_block_teewee:
        mov BX, offset teewee
        mov currentBlock, BX
        mov AL, teeweeWidth
        mov blockWidth, AL
        mov AL, teeweeHeight
        mov blockHeight, AL
        mov blockColor, 5
        ret


    get_block_from_code_continue:
        cmp codeBlock, 4
        je get_block_smashboy
        cmp codeBlock, 5
        je get_block_cleveland
        jmp get_block_rhodeCleveland

    ; SMASHBOY
    get_block_smashboy:
        mov BX, offset smashboy
        mov currentBlock, BX
        mov AL, smashboyWidth
        mov blockWidth, AL
        mov AL, smashboyHeight
        mov blockHeight, AL
        mov blockColor, 6
        ret

    ; CLEVELAND
    get_block_cleveland:
        mov BX, offset cleveland
        mov currentBlock, BX
        mov AL, clevelandWidth
        mov blockWidth, AL
        mov AL, clevelandHeight
        mov blockHeight, AL
        mov blockColor, 4
        ret

    ; RHODE CLEVELAND
    get_block_rhodeCleveland:
        mov BX, offset rhodeCleveland
        mov currentBlock, BX
        mov AL, rhodeClevelandWidth
        mov blockWidth, AL
        mov AL, rhodeClevelandHeight
        mov blockHeight, AL
        mov blockColor, 2
        ret

code    ends ; Fin du segment de code
end prog