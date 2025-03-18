`timescale 1 ns / 1 ps

module main (
    input  clk,  // 输入时钟
    input  resetn, // 输入复位(Tang Nano 20K按键按下后为高,松开为低,所以实际逻辑会取反!)
    output trap,  // 陷阱(执行了不被支持的东西,处理器故障!)
    output reg [7:0] out_byte,  // 数据输出
    output reg out_byte_en  // 当前out_byte有效
);

    parameter MEM_SIZE = 4096;  // 4096 32bit words = 16kB 内存

    wire mem_valid;
    wire mem_instr;
    reg mem_ready;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0] mem_wstrb;
    reg [31:0] mem_rdata;

    picorv32 #(
        .ENABLE_COUNTERS(0),
        .ENABLE_COUNTERS64(0),
        .ENABLE_REGS_16_31(0),
        .ENABLE_REGS_DUALPORT(0),
        .TWO_STAGE_SHIFT(0),
        .COMPRESSED_ISA(1)  // 压缩指令
    ) picorv32_core (
        .clk      (clk),
        .resetn   (!resetn),
        .trap     (trap),
        .mem_valid(mem_valid),
        .mem_instr(mem_instr),
        .mem_ready(mem_ready),
        .mem_addr (mem_addr),
        .mem_wdata(mem_wdata),
        .mem_wstrb(mem_wstrb),
        .mem_rdata(mem_rdata)
    );

    reg [31:0] memory[0:MEM_SIZE-1]; // 存放 cpu 程序
    initial $readmemh("project.hex", memory);  // 融合固件

    reg [31:0] m_read_data;
    reg m_read_en;

    // 下面代码会推断出BSRAM
    always @(posedge clk) begin
        m_read_en   <= 0;
        mem_ready   <= mem_valid && !mem_ready && m_read_en;

        m_read_data <= memory[mem_addr>>2]; // 代码数据
        mem_rdata   <= m_read_data;

        out_byte_en <= 0;

        (* parallel_case *)
        case (1)
            // 当 cpu 不输出数据时则响应 cpu 的读取
            mem_valid && !mem_ready && !mem_wstrb && (mem_addr >> 2) < MEM_SIZE: begin
                m_read_en <= 1;
            end

            // cpu 输出的数据写入到程序空间里
            mem_valid && !mem_ready && |mem_wstrb && (mem_addr >> 2) < MEM_SIZE: begin
                if (mem_wstrb[0]) memory[mem_addr>>2][7:0] <= mem_wdata[7:0];
                if (mem_wstrb[1]) memory[mem_addr>>2][15:8] <= mem_wdata[15:8];
                if (mem_wstrb[2]) memory[mem_addr>>2][23:16] <= mem_wdata[23:16];
                if (mem_wstrb[3]) memory[mem_addr>>2][31:24] <= mem_wdata[31:24];
                mem_ready <= 1;
            end

            // 显示 cpu 输出到 0x1000_0000(128) 的数据
            mem_valid && !mem_ready && |mem_wstrb && mem_addr == 32'h1000_0000: begin
                out_byte_en <= 1;
                out_byte <= mem_wdata;
                mem_ready <= 1;
            end
        endcase
    end

endmodule
