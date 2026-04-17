# r28 is pointer to map string to be loaded

# SX4E01/SX4P01
# Inject at 0x801664E0

lis r21, 0x8066        # 3EA08066
ori r21, r21, 0x7588   # 62B57588 > 0x80667588 is pointer to title0
cmpw r21, r28          # 7C15E000 > Check if pointer is to title0
beq is_eq              # 41820010 > break if next map is title0
addi r28, r21, 0x8     # 3B950008 > set pointer to ma0101 (8 bytes after title0)
li r21, 0x38           # 3AA00038
stb r21, 0x3(r28)      # 9ABC0003 > set 3rd byte of ma0101 to 8 -> ma0801 (Bionis' Shoulder)
is_eq:

# SX4J01
# Inject at 0x8016533C

lis r21, 0x8066        # 3EA08066
ori r21, r21, 0x9E48   # 62B59E48 > 0x80669E48 is pointer to title0
cmpw r21, r28          # 7C15E000 > Check if pointer is to title0
beq is_eq              # 41820010 > break if next map is title0
addi r28, r21, 0x8     # 3B950008 > set pointer to ma0101 (8 bytes after title0)
li r21, 0x38           # 3AA00038
stb r21, 0x3(r28)      # 9ABC0003 > set 3rd byte of ma0101 to ASCII 8 -> ma0801 (Bionis' Shoulder)
is_eq:
