module moore_1010 (
    input wire clk,
    input wire rst,
    input wire x,
    output reg y
);

    typedef enum logic [2:0] {
        S0, S1, S2, S3, S4
    } state_t;

    state_t current_state, next_state;

    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end
    // Output logic (Moore - depends only on state)
    always @(*) begin
        case (current_state)
            S4: y = 1;
            default: y = 0;
        endcase
    end
    always @(*) begin
        case (current_state)
            S0: next_state = (x) ? S1 : S0;
            S1: next_state = (x) ? S1 : S2;
            S2: next_state = (x) ? S3 : S0;
            S3: next_state = (x) ? S1 : S4; // Sequence 1010 ends here
            S4: next_state = (x) ? S1 : S0; // For overlapping detection
            default: next_state = S0;
        endcase
    end

endmodule
