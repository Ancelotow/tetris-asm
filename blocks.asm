
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

rickyOrangeRight DW  12, 192, 42
rior000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rior011 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior012 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior013 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior014 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior015 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior021 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior022 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior023 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior024 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior025 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0
rior001 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rior002 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rior003 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rior004 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
rior005 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0

rickyOrangeDown DW  17, 187, 42
riod000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
riod001 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riod002 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riod003 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riod004 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riod005 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riod011 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
riod012 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
riod013 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
riod014 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
riod015 DB 0, 42, 42, 42, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

rickyOrangeLeft DW  12, 192, 42
riol000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
riol001 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riol002 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riol003 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riol004 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riol005 DB 0, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 0
riol011 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol012 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol013 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol014 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol015 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol021 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol022 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol023 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42,0
riol024 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0
riol025 DB 0, 0, 0, 0, 0, 0, 42, 42, 42, 42, 42, 0

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

rickyBlueRight DW  12, 192, 1
ribr000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
ribr001 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribr002 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribr003 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribr004 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribr005 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribr011 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr012 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr013 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr014 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr015 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr021 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr022 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr023 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr024 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0
ribr025 DB 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0

rickyBlueDown DW  17, 187, 1
ribd000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
ribd001 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribd002 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribd003 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribd004 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribd005 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribd011 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribd012 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribd013 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribd014 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribd015 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0


rickyBlueLeft DW  12, 192, 1
ribl000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
ribl001 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl002 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl003 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl004 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl005 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl011 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl012 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl013 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl014 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl015 DB 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0
ribl021 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribl022 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribl023 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribl024 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
ribl025 DB 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0


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

teeweeLeft DW  12, 192, 5
tewl000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
tewl001 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl002 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl003 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl004 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl005 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl011 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewl012 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewl013 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewl014 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewl015 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewl021 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl022 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl023 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl024 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewl025 DB 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0

teeweeDown DW  17, 187, 5
tewd000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
tewd001 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewd002 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewd003 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewd004 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewd005 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewd011 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewd012 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewd013 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewd014 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0
tewd015 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0

teeweeRight DW  12, 192, 5
tewr000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
tewr001 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr002 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr003 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr004 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr005 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr011 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewr012 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewr013 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewr014 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewr015 DB 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0
tewr021 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr022 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr023 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr024 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0
tewr025 DB 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0

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

clevelandVertical DW  12, 192, 4
clev000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
clev001 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 0
clev002 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 0
clev003 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 0
clev004 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 0
clev005 DB 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 0
clev011 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
clev012 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
clev013 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
clev014 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
clev015 DB 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0
clev021 DB 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
clev022 DB 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
clev023 DB 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
clev024 DB 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0
clev025 DB 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0

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

rhodeClevelandVertical DW  12, 192, 2
rlev000 DB 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
rlev024 DB 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rlev025 DB 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rlev023 DB 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rlev022 DB 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rlev021 DB 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0
rlev011 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rlev012 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rlev013 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rlev014 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rlev015 DB 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0
rlev005 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0
rlev004 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0
rlev003 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0
rlev002 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0
rlev001 DB 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0

list_blocks DW rickyOrange, rickyBlue, teewee, smashboy, hero, cleveland, rhodeCleveland
lb000 DW rickyOrangeRight, rickyBlueRight, teeweeLeft, smashboy, heroVertical, clevelandVertical, rhodeClevelandVertical
lb001 DW rickyOrangeDown, rickyBlueDown, teeweeDown, smashboy, hero, cleveland, rhodeCleveland
lb002 DW rickyOrangeLeft, rickyBlueLeft, teeweeRight, smashboy, heroVertical, clevelandVertical, rhodeClevelandVertical

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