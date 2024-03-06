localparam[63:0] RAM_BANK_SIZE        = 64'h01_0000_0000;
localparam[63:0] BANK0_BASE_ADDR      = 64'h10_0000_0000;
localparam[63:0] BANK1_BASE_ADDR      = 64'h20_0000_0000;

localparam       RAM_BLOCK_SIZE       = 32'h1000;
localparam       CYCLES_PER_RAM_BLOCK = RAM_BLOCK_SIZE / 64;
localparam       RAM_BLOCKS_PER_BANK  = RAM_BANK_SIZE / RAM_BLOCK_SIZE;
