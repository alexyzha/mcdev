##  ls = ["eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "eip", "esp"]
##  print('\n'.join(f'scoreboard objectives add {i} dummy' for i in ls))

scoreboard objectives add eax dummy
scoreboard objectives add ebx dummy
scoreboard objectives add ecx dummy
scoreboard objectives add edx dummy
scoreboard objectives add esi dummy
scoreboard objectives add edi dummy
scoreboard objectives add ebp dummy
scoreboard objectives add eip dummy
scoreboard objectives add esp dummy

say [INFO::waypoints] Initialized all registers