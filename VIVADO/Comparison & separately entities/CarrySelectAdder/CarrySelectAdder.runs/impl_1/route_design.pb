
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s %s %s %s %s %s %s %s%s*DRC26
 " 
a[15:0]a2default:default2default:default28
 ""
a[15]a[15]2default:default2default:default28
 ""
a[14]a[14]2default:default2default:default28
 ""
a[13]a[13]2default:default2default:default28
 ""
a[12]a[12]2default:default2default:default28
 ""
a[11]a[11]2default:default2default:default28
 ""
a[10]a[10]2default:default2default:default26
 " 
a[9]a[9]2default:default2default:default26
 " 
a[8]a[8]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px� 
�
�Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s %s %s %s %s %s %s %s %s %s  and 2 more (total of 13.)%s*DRC26
 " 
b[19:0]b2default:default2default:default28
 ""
b[19]b[19]2default:default2default:default28
 ""
b[18]b[18]2default:default2default:default28
 ""
b[17]b[17]2default:default2default:default28
 ""
b[16]b[16]2default:default2default:default28
 ""
b[15]b[15]2default:default2default:default28
 ""
b[14]b[14]2default:default2default:default28
 ""
b[13]b[13]2default:default2default:default28
 ""
b[12]b[12]2default:default2default:default28
 ""
b[11]b[11]2default:default2default:default28
 ""
b[10]b[10]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 4bd63ed1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:32 ; elapsed = 00:00:29 . Memory (MB): peak = 1316.398 ; gain = 124.7622default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: 4bd63ed1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:29 . Memory (MB): peak = 1316.398 ; gain = 124.7622default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 4bd63ed1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:29 . Memory (MB): peak = 1322.203 ; gain = 130.5662default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 4bd63ed1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:29 . Memory (MB): peak = 1322.203 ; gain = 130.5662default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 230a53f41
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:29 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.051  | TNS=0.000  | WHS=-1.517 | THS=-31.611|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 21763bcc3
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:29 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
B
-Phase 3 Initial Routing | Checksum: ba5b5c3f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:33 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.007  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 287c6641e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 287c6641e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 2829f8f51
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.007  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 2829f8f51
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 2829f8f51
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 2829f8f51
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 254c9115c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.007  | TNS=0.000  | WHS=-0.572 | THS=-1.961 |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 135da1365
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 1592e3329
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 1980c011c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 1980c011c
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 1d875a888
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 10.1 Update Timing | Checksum: 1a521df2f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.007  | TNS=0.000  | WHS=0.102  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 1a521df2f
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1337.504 ; gain = 145.8672default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
652default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:352default:default2
00:00:312default:default2
1337.5042default:default2
145.8672default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0622default:default2
1337.5042default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.runs/impl_1/TOP_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_drc -file TOP_drc_routed.rpt -pb TOP_drc_routed.pb -rpx TOP_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2e
Qreport_drc -file TOP_drc_routed.rpt -pb TOP_drc_routed.pb -rpx TOP_drc_routed.rpx2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.runs/impl_1/TOP_drc_routed.rpt�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.runs/impl_1/TOP_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file TOP_methodology_drc_routed.rpt -pb TOP_methodology_drc_routed.pb -rpx TOP_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
}report_methodology -file TOP_methodology_drc_routed.rpt -pb TOP_methodology_drc_routed.pb -rpx TOP_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
�
FSetting input delay on a clock pin '%s' is not supported, ignoring it
96*constraints2
clk2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.srcs/constrs_1/imports/FPGA y Vivado/Nexys4DDR_Master.xdc2default:default2
102default:default8@Z18-96h px� 
�
FSetting input delay on a clock pin '%s' is not supported, ignoring it
96*constraints2
clk2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.srcs/constrs_1/imports/FPGA y Vivado/Nexys4DDR_Master.xdc2default:default2
112default:default8@Z18-96h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
FSetting input delay on a clock pin '%s' is not supported, ignoring it
96*constraints2
clk2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.srcs/constrs_1/imports/FPGA y Vivado/Nexys4DDR_Master.xdc2default:default2
102default:default8@Z18-96h px� 
�
FSetting input delay on a clock pin '%s' is not supported, ignoring it
96*constraints2
clk2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.srcs/constrs_1/imports/FPGA y Vivado/Nexys4DDR_Master.xdc2default:default2
112default:default8@Z18-96h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.runs/impl_1/TOP_methodology_drc_routed.rpt�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.runs/impl_1/TOP_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
nExecuting : report_power -file TOP_power_routed.rpt -pb TOP_power_summary_routed.pb -rpx TOP_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2u
areport_power -file TOP_power_routed.rpt -pb TOP_power_summary_routed.pb -rpx TOP_power_routed.rpx2default:defaultZ4-113h px� 
�
FSetting input delay on a clock pin '%s' is not supported, ignoring it
96*constraints2
clk2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.srcs/constrs_1/imports/FPGA y Vivado/Nexys4DDR_Master.xdc2default:default2
102default:default8@Z18-96h px� 
�
FSetting input delay on a clock pin '%s' is not supported, ignoring it
96*constraints2
clk2default:default2�
�C:/Users/srome/Desktop/ETSIT/TFG/Pablo Ituero/FPGA y Vivado/COMPARATIVAS/CarrySelectAdder/CarrySelectAdder.srcs/constrs_1/imports/FPGA y Vivado/Nexys4DDR_Master.xdc2default:default2
112default:default8@Z18-96h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
772default:default2
182default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2g
SExecuting : report_route_status -file TOP_route_status.rpt -pb TOP_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file TOP_timing_summary_routed.rpt -pb TOP_timing_summary_routed.pb -rpx TOP_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
|
%s4*runtcl2`
LExecuting : report_incremental_reuse -file TOP_incremental_reuse_routed.rpt
2default:defaulth px� 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px� 
|
%s4*runtcl2`
LExecuting : report_clock_utilization -file TOP_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file TOP_bus_skew_routed.rpt -pb TOP_bus_skew_routed.pb -rpx TOP_bus_skew_routed.rpx
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 


End Record