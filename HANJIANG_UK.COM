;;// compile cycle alarme
// CP = 1252
// IDEO = NO
// ANSI = YES
// UNICODE = NO

// ALARM TEXT 
89901 0 0 "Disk A"
89902 0 0 "Disk _"
89903 0 0 "Disk _"
89904 0 0 "Disk _"

85100   0   0   "Engrav.%ncycle"
85101   0   0   "Alternat."
85102   0   0   "Cancel"
85103   0   0   "Ok"
85110   0   0   "Engraving cycle"
85111   0   0   "Actual tool"
85112   0   0   ""
85113   0   0   ""
85114   0   0   ""
85115   0   0   ""
85116   0   0   ""
85117   0   0   ""
85118   0   0   ""
85119   0   0   ""
// Lang- Kurztexte
85120   0   0   "Tool name"
85121   0   0   "1.cutter/2.cutter"
85122   0   0   "Engraving text"
85123   0   0   "Reset level, absolute"
85124   0   0   "Safety distance, without digit sign"
85125   0   0   "Text"
85126   0   0   ""
85127   0   0   "Reset level"
85128   0   0   "Safety distance"
85129   0   0   "Engraving depth"
85130   0   0   "Font size"
85131   0   0   "Factor font distance"
85132   0   0   "Start position X"
85133   0   0   "Start position Y"
85134   0   0   "Immersion feed"
85135   0   0   "Milling feed"
85136   0   0   "Font distance"
85137   0   0   "Reference surface"
85138   0   0   "Font distance"
// Meldungen
85139   0   0   "Save"

85000 0 0 "Hanjiang "Interface
85001 0 0 "Grinding "Parameters
85002 0 0 "Process Parameters"; For worm grinding
85003 0 0 "";NC dressing worm profile
85004 0 0 "Dressing data"
85005 0 0 "Profile data"
85006 0 0 "Redeem data";
85007 0 0 "Help";
85008 0 0 "Return"
85009 0 0 "Dressing data1";
85010 0 0 "End thread";

;MASK1:Grinding Parameters////////////////////////////PCU20 85011-->74;PCU5085011-->76
85011 0 0 "---------------------------------------------------------------------------------------------------------------------------";76
85012 0 0 "============================================================================";76
85013 0 0 "***********************************************************";60

85020 0 0 "Model:SK7140 Serial No.[02]Date[July,2011] Tel:0916-2295468"

85021 0 0 "First face?0=YES"  ;R106
85022 0 0 "Mode[1.single;2.both]"   ;R113
85023 0 0 "State[1.grinding;2.adjust]"   ;R134
85024 0 0 "Type[Scr./End-Au./End-Ma./Cyl.]"   ;R100

85025 0 0 "No. of starts"        ;R101   
85026 0 0 "Direction[1=R;-1=L]" ;R102
85027 0 0 "Pitch "                 ;R103
85028 0 0 "Taper"              ;R99
85029 0 0 "Pitch compensate value"         ;R107
85030 0 0 "X back distance"           ;R111

85031 0 0 "Milling left  Z coordinate"        ;R105
85032 0 0 "Milling right Z coordinate"        ;R104
85033 0 0 "Jump_off point X coordinate"        ;R108
85034 0 0 "Grinding wheel goto speed"          ;R115
85014 0 0 "Milling X coordinate"     ;R109
85015 0 0 "C angle of start"        ;R135


85035 0 0 "Compensate?0=NO" ;R114
85036 0 0 "Cumulative dress amt"           ;R185
85037 0 0 " X axis DRF view"              ;R131
85038 0 0 " Z axis DRF view"              ;R133
85039 0 0 " Cut add up"              ;R90


85412 0 0 "Left  Z coordinate" ;R35
85413 0 0 "Right Z coordinate" ;R34
85414 0 0 "Left excursion No. of pitch" ;R37
85415 0 0 "Right excursion No. of pitch" ;R36


85016 0 0 "LF length of half thread"        ;R136
85017 0 0 "RT length of half thread"        ;R137

85170 0 0 "Left  Jump_off point X "        ;R60  coordinate
85171 0 0 "Right  Jump_off point X  "        ;R61 X coordinate  
85172 0 0 "Left  grinding angle "        ;R62
85173 0 0 "Right  grinding  angle "        ;R65
85174 0 0 "Height  of  profile"              ;R64
85418 0 0 "Grinding offset of wheel " R40

85175 0 0 "Thread"  
85176 0 0 "End thr.-Auto."
85515 0 0 "End thr.-Man."
85421 0 0 "Cylindrical" 


85516 0 0 "X-axis offset"  ;  R18


85177 0 0 "Grinding Parameters 1" 
85411 0 0 "Grinding Parameters 2" 

85410 0 0 "End thread "
85178 0 0 "Parameters of end thread:  Auto " 
85179 0 0 "Taper correction on  M.  "R311-CH2
85419 0 0 "Taper correction on EFF.  " R0-CH1

85510 0 0 " Parameters of end thread:  Manual"
85511 0 0 "C-axis start   value"  ;R19
85512 0 0 "End thread  grinding  angle"  ;R20
85513 0 0 "Z-axis  start   value"   R17


85520 0 0 "Cylindrical"  
85521 0 0 "Cylindrical  Parameters:"  
85522 0 0 "C-axis  speed:"   
85523 0 0 "Z-axis feed  speed:"  


85180 0 0 "mm" 
85181 0 0 "mm/min" 

85183 0 0 "rpm/min "
85184 0 0 "m/s"



85040 0 0 " First face"            
85041 0 0 "single"  
85042 0 0 "both"  
85044 0 0 "grinding;"  
85045 0 0 "adjust" 
85046 0 0 "screw"  
85047 0 0 "end thread" 
85048 0 0 "right"  
85049 0 0 "left" 
85050 0 0 "yes"  
85070 0 0 "no" 
85420 0 0 "batch" 


85043 0 0 "State[1=Grind feed clear]"   ;R134


;MASK2:Process Parameters//////////////////

85051 0 0 "Overall remaining"     ;R112
85052 0 0 "Procedure seelect [1-6] "         ;R110

85053 0 0 "1:Roughing"; Kibble

85054 0 0 "Workhead speed"        ;1st rotate speedR116
85055 0 0 "Depth of cut"        ;R117
85056 0 0 "No of cut"           ;R118
85057 0 0 "Dressing frequency"        ;R119

85330 0 0 "No. of  dressings"            ;R70
85331 0 0 "Traverse speed"            ;R71
85332 0 0 "Depth of cut"                  ;R72
85333 0 0 "Wh speed in grinding"    ;R73


85059 0 0 "2:Semi-roughing"

85060 0 0 "Workhead speed"       ;R120
85061 0 0 "Depth of cut"               ;R121
85062 0 0 "No. of cut"                    ; R122
85063 0 0 "Dressing frequency"      ;R123


85335 0 0 "No. of  dressings"        ;R75
85336 0 0 "Traverse speed"        ;R76
85337 0 0 "Depth of cut"    ;R77
85338 0 0 "Wh speed in grinding"        ;R78


85065 0 0 "3:Pre-finishing"    

85066 0 0 "Workhead speed"     ;R124
85067 0 0 "Depth of cut"     ;R125
85068 0 0 "No. of cut"     ;R126
85069 0 0 "Dressing frequency"     ;R127


85340 0 0 "No. of  dressings"        ;R80
85341 0 0 "Traverse speed"        ;R81
85342 0 0 "Depth of cut"    ;R82
85343 0 0 "Wh speed in grinding"        ;R83


85071 0 0 "4:Finish grinding"

85072 0 0 "Workhead speed"     ;R128
85073 0 0 "Depth of cut"     ;R129
85074 0 0 "No. of cut"     ;R130
85075 0 0 "Dressing frequency"     ;R132

85345 0 0 "No. of  dressings"        ;R85
85346 0 0 "Traverse speed"        ;R86
85347 0 0 "Depth of cut"    ;R87
85348 0 0 "Wh speed in grinding"        ;R88

85350 0 0 "Nonce procedure"        ;R264
85351 0 0 "Nonce whspeed in grinding"     ;R501
85352 0 0 "Nonce wheel speed"    ;CH2-R201


85353 0 0 "Procedure 1/2"
85354 0 0 "Procedure 3/4"
85355 0 0 "Procedure 5/6"
85356 0 0 "Procedure 7/8"

85076 0 0 ""
85150 0 0 "1:Roughing" 
85151 0 0 "2:Semi-roughing" 
85152 0 0 "3:Pre-finishing" 
85153 0 0 "4:Finish grinding" 
85154 0 0 "New wheel"

85370 0 0 "5:"

85371 0 0 "Workhead speed"      ;R165
85372 0 0 "Depth of cut"               ;R166
85373 0 0 "No. of cut"                   ;R167
85374 0 0 "Dressing frequency"   ;R168

85375 0 0 "No. of  dressings"        ;R173
85376 0 0 "Traverse speed"          ;R174
85377 0 0 "Depth of cut"                 ;R175
85378 0 0 "Wh speed in grinding"   ;R176

85379 0 0 "6:"

85500 0 0 "Workhead speed"      ;R169
85501 0 0 "Depth of cut"               ;R170
85502 0 0 "No. of cut"                   ;R171
85503 0 0 "Dressing frequency"   ;R172

85504 0 0 "No. of  dressings"        ;R177
85505 0 0 "Traverse speed"          ;R178
85506 0 0 "Depth of cut"                 ;R179
85507 0 0 "Wh speed in grinding"   ;R180

85416 0 0 "7:"

85600 0 0 "Workhead speed"      ;R181
85601 0 0 "Depth of cut"               ;R182
85602 0 0 "No. of cut"                   ;R183
85603 0 0 "Dressing frequency"   ;R184

85604 0 0 "No. of  dressings"        ;R189
85605 0 0 "Traverse speed"          ;R190
85606 0 0 "Depth of cut"                 ;R191
85607 0 0 "Wh speed in grinding"   ;R192

85417 0 0 "8:"

85620 0 0 "Workhead speed"      ;R185
85621 0 0 "Depth of cut"               ;R186
85622 0 0 "No. of cut"                   ;R187
85623 0 0 "Dressing frequency"   ;R188

85624 0 0 "No. of  dressings"        ;R193
85625 0 0 "Traverse speed"          ;R194
85626 0 0 "Depth of cut"                 ;R195
85627 0 0 "Wh speed in grinding"   ;R196


;MASK3:Dressing of Worm///////////////

85077 0 0 "New wheel?[0=Y]"            ;R65
85078 0 0 "Start position(V)"                ;R7 
85079 0 0 "Times preset"                   ;R3
85080 0 0 "Clear of start pos. changed"              ;R9
85081 0 0 "Times dressed"                   ;R25
85082 0 0 "Total dress. amount"                ;R185

85083 0 0 "Speed F in course dress"                 ;R18
85084 0 0 "Speed F in fine dress"                 ;R19
85085 0 0 "Feed in course dress"               ;R20
85086 0 0 "Feed in fine dress"               ;R21
85087 0 0 "Pos. speed F of dress"                 ;R22
85088 0 0 "Return speed F of dress"                 ;R23

85089 0 0 "Distance between dress disks"               ;R10
85090 0 0 "Dif. height of  dress disks"           ;R11
85091 0 0 "Center W of dress disk"          ;R14
85092 0 0 "Center dis. V:wheel & dress. disks"           ;R15
85093 0 0 "Radius R of dress disk"            ;R29
85094 0 0 "Shift of dress disk"           ;R28

85095 0 0 "Peripheral speed of wheel(m/s)"            ;R200
85096 0 0 "Wheel width"                   ;R8
85097 0 0 "Wheel speed(rpm)"            ;R201---R35
85098 0 0 "Diameter of wheel"                  ;R36
85099 0 0 ""

;MASK4:Dressing Data//////////////
85200 0 0 "New wheel?[0=New]"  ;R150
85201 0 0 "V of new wheel" ;R168

85202 0 0 "No. of  dressed"       ;R160

85204 0 0 "Traverse speed"      ;R162
85205 0 0 "Finish trav. speed"      ;R163
85206 0 0 "Depth of cut"       ;R164
85207 0 0 "Fin depth of cut"       ;R165

85208 0 0 "Current position (V)"      ;R166
85209 0 0 "Wheel center point (W)"      ;R167

85210 0 0 " Wh speed in grinding"  ;R200→CH1-R501
85211 0 0 "Wheel width"       ;R176
85212 0 0 "Wh speed in dressing "  ;R202
85213 0 0 "Diameter of wheel"       ;R177
85214 0 0 "Wheel speed"    ;R201 
85215 0 0 "No. of fin dressing"       ;R6

85216 0 0 "Radius of dressing disk(R)" ;R170
85217 0 0 "Distance between  disks(W)" ;R171
85218 0 0 "Speed of dressing disk"  ;R172
;85219 0 0 "L is high than R(V)"       ;R10  mistake of  two dressing   不要
85220 0 0 "Speed of dressing disk"    ;R203
85221 0 0 "Diameter of dressing disk"       ;R175

85222 0 0 "Radius of dressing disk(L)"       ;R9


85360 0 0 "Nonce no. of  dressed"       ;R41
85361 0 0 "Nonce traverse speed"       ;R35
85362 0 0 "Nonce procedure"       ;CH1-R264
85363 0 0 "Nonce depth of cut"       ;R36
85364 0 0 "Disk direction[0 CW;1CCW]"       ;R208

;MASK5:Profile Data ///////////////

85243 0 0 "Pitch of tooth"  ;R30齿型螺距
85223 0 0 "Type of profile[1-13]"  ;R151
85224 0 0 "Taper"       ;R180
85225 0 0 "Half thread angle(left)"     ;R154
85226 0 0 "Half thread angle(right)"     ;R155
85227 0 0 "Height of profile"       ;R181

85228 0 0 "1.Sharp  V thread" 
85229 0 0 "Radii of tooth bottom (R)"    ;牙底半径R300

85230 0 0 "2.Acme thread"   
85231 0 0 "Width of tooth root" ;齿根宽度  ;R309 

85232 0 0 "3.Knuckle go thread"   ;圆弧形螺纹
85233 0 0 "Angle "     ;角度        ;R304
85234 0 0 "Radii of tooth bottom (R1) "  ;牙底半径 ;R302
85235 0 0 "Radii of  tooth tip (R2)"     ;牙顶半径    ;R303

85236 0 0 "4.NPT thread" 
;Half thread angle(left)
;Half thread angle(right)
85237 0 0 "Half thread angle  sbc case of profile tip"   ;牙型角    ;R305 XXXXXXHalf thread angle  sbc case of profile tip
85238 0 0 "D/A clearing angle  "    ;间隙槽角   ;R306D/A clearing angle  sbc case of profilecase  root
85239 0 0 "D/A clearing flat "  ;间root 隙槽宽     ;R307D/A clearing flat width of profile root
85240 0 0 "D/A clearing height  "   ;间隙槽深    ;R308  Double/Angle  D/A clearing height deep of profile root
85241 0 0 "5.multirib of 3" ;圆弧形螺纹多线      
85242 0 0 "6.multirib of 4 "  ;双梯形螺纹多线   

85155 0 0 "1.Whitworth thread"
85156 0 0 "2.Acme thread"
85157 0 0 "3.Knuckle go thread"
85158 0 0 "4.NPT"
85159 0 0 "5.MultiribCC of 3"
85160 0 0 "6.Multirib of 4 "


85380 0 0 "CW"
85381 0 0 "CCW"
85382 0 0 "deg"　　
85383 0 0 "'"
85384 0 0 "”"
85700 0 0 "Offset value"        ;CH2-R37

   
85430 0 0 "1.SR  W/O  M  W/O  R"        ;
85387 0 0 "2.SR  W/O  M  W   R" 
85388 0 0 "3.SR  W  M  W/O  R  (L/R.H thread)" 
85389 0 0 "  " 
85390 0 0 "4.SR  W  M  W R  (L/R.H thread)"
85391 0 0 " "
85392 0 0 "5.MR  W  M  W/O  R (offset)  (L/R.H thread)"
85393 0 0 " "
85394 0 0 "6.MR  W/O  M  W/O  R (offset)"


85395 0 0 "7.SR  W/O  M  acme "
85396 0 0 "8.SR  W/O  M  rectangle"
85400 0 0 "14.SR  W  M  (L/R.H thread) acme "

85397 0 0 "9.SR knuckle go thread"
85398 0 0 "10.MR knuckle go thread"  

85399 0 0 "11.SR  W  M  NPT   (L/R.H thread)"
85401 0 0 "12.MR  W  M  NPT (offset)  (L/R.H thread)"
85402 0 0 "13.MR W/O  M  NPT (offset) "

85404 0 0 "1111"


;MASK6:Redeem Data ///////////////
85300 0 0 "R of  tooth tip(left)"     ;R4牙顶左R
85301 0 0 "R of  tooth tip(right)"   ;R1牙顶右R

85302 0 0 "R of  tooth bottom(left)"     ;R2牙底左R
85303 0 0 "R of  tooth bottom(right)"   ;R3牙底右R

85307 0 0 " Adjust of DIA"       ;R8大径调整量

85308 0 0 "Repair parameter of tooth(increment)"   ;齿型补偿参数(增量)" 
85309 0 0 ""   ; 
85310 0 0 ""   ;
85311 0 0 ""   ;
85312 0 0 ""   ;

;MASK7:Help  ///////////////
85250 0 0 "Power Mode:6SN1145-1BA01-0BA1,16/21KW"
85251 0 0 "Driver for axis Z/C:6SN1123-1AB00-0CA2, 2x50A"
85252 0 0 "Driver for axis X:   6SN1123-1AA00-0BA1, 25A"
85253 0 0 "Driver for axis V/W:6SN1123-1AB00-0HA1, 2x8A"
85254 0 0 "Motor of axis X: 1FT6064-1AF71-4AG1-Z,i=1:4  ,Pitch=5"
85255 0 0 "Motor of axis Z: 1FT6084-1AF71-4AG1-Z,i=1:1  ,Pitch=5"
85256 0 0 "Motor of axis C: 1FT6082-1AF71-4AG1,  i=1:64 "
85257 0 0 "Motor of axis V/W: 1FT7042-7AF71-1AH5,  i=1:1  ,Pitch=4"
85258 0 0 "NCU571.5:6FC5357-0BB15-0AA0"
85259 0 0 "PCU50:   6FC5210-0DF31-2AA0";361-3CAO1-OAA0  1 PLC接口
85260 0 0 "OP010S:  6AF5203-0AF04-0AA0";321-1BH02-0AA0  2 SM321-DI:16×DC24V
85261 0 0 "Operation Panel:6FC5203-0AF23-1AA0";322-1BH01-0AA0  2 SM321-DI:16×DC24V×DC24V/0.5A 
85262 0 0 "3-DIx16+2-Dox16+AOx2";332-5BH01-0AB0  1 SM332-AO:2×12bit 
85263 0 0 ""
85264 0 0 ""
85265 0 0 "HELP"
85266 0 0 ""











