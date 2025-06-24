module mealy_101 (
    input wire clk,
    input wire rst,
    input wire x,
    output reg y
);

    typedef enum logic [1:0] {S0, S1, S2} state_t;
    state_t current_state, next_state;
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end
    always @(*) begin
        next_state = current_state;
        y = 0;

        case (current_state)
            S0: begin
                if (x) next_state = S1;
            end
            S1: begin
                if (~x) next_state = S2;
                else    next_state = S1;
            end
            S2: begin
                if (x) begin
                    y = 1;             // Sequence 101 detected
                    next_state = S1;   // Allow overlapping detection
                end else
                    next_state = S0;
            end
        endcase
    end

endmodule
