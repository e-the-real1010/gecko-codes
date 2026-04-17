# r28 is pointer to map string to be loaded
# really wanted to use rlwimi here to feel cooler :P

# SX4E01/SX4P01
# Inject at 0x801664E0

li r10, 0x90                 # 39400090
rlwimi r28, r10, 0, 24, 31   # 515C063E > set LSB to 0x90 s.t. r28 is pointer to ma0101
li r10, 0x38                 # 39400038
stb r10, 0x3(r28)            # 995C0003 > set 3rd byte of ma0101 to ASCII 8 -> ma0801 (Bionis' Shoulder)

# SX4J01
# Inject at 0x8016533C

li r10, 0x50                 # 39400050
rlwimi r28, r10, 0, 24, 31   # 515C063E > set LSB to 0x50 s.t. r28 is pointer to ma0101
li r10, 0x38                 # 39400038
stb r10, 3(r28)              # 995C0003 > set 3rd byte of ma0101 to ASCII 8 -> ma0801 (Bionis' Shoulder)
