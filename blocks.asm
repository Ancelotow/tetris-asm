
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

rickyWidth DB 17
rickyHeight DB 11
rickyOrange DW  17, 187
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

rickyBlue DW  17, 187
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

teeweeWidth DB 17
teeweeHeight DB 11
teewee DW  17, 187
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


smashboyWidth DB 12
smashboyHeight DB 11
smashboy DW  12, 132
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

heroWidth DB 22
heroHeight DB 6
hero DW  22, 132
her000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
her001 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her002 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her003 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her004 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0
her005 DB 0, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0

clevelandWidth DB 17
clevelandHeight DB 11
cleveland DW  17, 187
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

rhodeClevelandWidth DB 17
rhodeClevelandHeight DB 11
rhodeCleveland DW 17, 187
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