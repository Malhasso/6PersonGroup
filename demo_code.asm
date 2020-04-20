ORG 0

Main:
    LOADI   &H03
    OUT     SRAM_ADHI_00
    LOADI   &HAA
    OUT     SRAM_DATA_EN

    LOADI   &H06
    OUT     SRAM_ADHI_00
    LOADI   &HBB
    OUT     SRAM_DATA_EN

    LOADI   &H03
    OUT     SRAM_ADHI_00
    IN      SRAM_DATA_EN

    LOADI   &H06
    OUT     SRAM_ADHI_00
    IN      SRAM_DATA_EN

    ADDI    1
    OUT     SRAM_DATA_EN

    LOADI   &H25
    OUT     SRAM_ADHI_00
    IN      SRAM_DATA_EN

DataArray:
    DW 0

    SRAM_ADHI_00:   EQU &H10;
    SRAM_ADHI_01:   EQU &H11;
    SRAM_ADHI_10:   EQU &H12;
    SRAM_ADHI_11:   EQU &H13;
    SRAM_DATA_EN:   EQU &H14;
