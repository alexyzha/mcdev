##  ls = ["eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "eip", "esp"]
##  print('\n'.join(f'scoreboard players set @a {i} 0' for i in ls))

scoreboard players set @a eax 0
scoreboard players set @a ebx 0
scoreboard players set @a ecx 0
scoreboard players set @a edx 0
scoreboard players set @a esi 0
scoreboard players set @a edi 0
scoreboard players set @a ebp 0
scoreboard players set @a eip 0
scoreboard players set @a esp 0

say [INFO::waypoints] Zeroed all register values