// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module DigitalClock (
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif

    input clk,       // クロック信号
    input reset,     // リセット信号
    output reg [5:0] hours,   // 時 (00-23)
    output reg [5:0] hours_oeb,   // 時 (00-23)
    output reg [5:0] minutes, // 分 (00-59)
    output reg [5:0] minutes_oeb, // 分 (00-59)
    output reg [5:0] seconds,  // 秒 (00-59)
    output reg [5:0] seconds_oeb  // 秒 (00-59)

);

// assign hours_oeb = 6'b000000;
// assign minutes_oeb = 6'b000000;
// assign seconds_oeb = 6'b000000;

// 1秒ごとにインクリメントするためのカウンタ
reg [25:0] one_second_counter;



always @(posedge clk or posedge reset) begin
    if (reset) begin
        // リセット時の初期化
        one_second_counter <= 0;
        hours <= 0;
        minutes <= 0;
        seconds <= 0;
        hours_oeb <= 0;  // ここに追加
        minutes_oeb <= 0; // ここに追加
        seconds_oeb <= 0; // ここに追加
    end else begin
        // 1秒ごとのインクリメント
        if (one_second_counter >= 50000000) begin // 50MHzのクロックで1秒
            one_second_counter <= 0;
            seconds <= seconds + 1;
            if (seconds >= 59) begin
                seconds <= 0;
                minutes <= minutes + 1;
                if (minutes >= 59) begin
                    minutes <= 0;
                    hours <= hours + 1;
                    if (hours >= 23) begin
                        hours <= 0;
                    end
                end
            end
        end else begin
            one_second_counter <= one_second_counter + 1;
        end
    end
end

endmodule
    
`default_nettype wire
