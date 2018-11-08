
;================================================================================================================
;V05.03.10 07.08.00
;================================================================================================================
;* V05.01.01F 27.05.99  Msr  
;* Pictures area Parameter for ISO-dialect
;================================================================================================================
//S(Start)
HS7=($85000,ac7,se1) ;Access level 7, visible	"汉江界面"	
PRESS(HS7)   
LM("Mask1")  ;Load mask "Mask 1"
END_PRESS			
//END

;MASK1:磨削参数1 /////////////////////////////////////////////////////////////////////////510000
//M(Mask1/$85001/)

;DEF work2=(I///,$85015,,/wr0///10,30,480)

;DEF VAR1=(I/0,99//$85021,$85021,,/WR2,AC4//al0/Channel/Parameter/r[u1,106]"/20,40,160/190,40,80/),
DEF VAR1=(I/*0=$85040//$85021,$85021,,/WR2,AC4//"/Channel/Parameter/r[u1,106]"/20,40,160/190,40,80/7/),
;DEF VAR1=(I/*0="0:first "//$85021,$85021,,/WR2,AC4//"/Channel/Parameter/r[u1,106]"/20,40,160/190,40,80/),
;DEF VAR2=(I/1,2//$85022,$85022,,/WR2,AC4//"/Channel/Parameter/r[u1,113]"/290,40,160/450,40,80/),
DEF VAR2=(I/*1=$85041,2=$85042//$85022,$85022,,/WR2,AC4//"/Channel/Parameter/r[u1,113]"/290,40,160/450,40,80/),;OK
;DEF VAR2=(I/*1="1:single",2="2:both"//$85022,$85022,,/WR2,AC4//"/Channel/Parameter/r[u1,113]"/290,40,160/450,40,80/),
;DEF VAR4=(I/1,2//$85023,$85023,,/WR2,AC4//"/Channel/Parameter/r[u1,134]"/20,60,160/190,60,80/),
DEF VAR4=(I/*1=$85044,2=$85045//$85023,$85023,,/WR2,AC4//"/Channel/Parameter/r[u1,134]"/20,60,160/190,60,80/),
;DEF VAR5=(I/1,2//$85024,$85024,,/WR2,AC4//"/Channel/Parameter/r[u1,100]"/290,60,160/450,60,80/),
DEF VAR5=(I/*1=$85046,2=$85176,3=$85515,4=$85421//$85024,$85024,,/WR2,AC4//"/Channel/Parameter/r[u1,100]"/250,60,210/450,60,100/),

DEF work2=(I///,$85012,,/wr0///20,80,515);===========

DEF VAR6=(I/1,599//$85025,$85025,,/WR2,AC4//"/Channel/Parameter/r[u1,101]"/20,100,160/190,100,80/),
DEF VAR7=(I/*1=$85048,-1=$85049//$85026,$85026,,/WR2,AC4//"/Channel/Parameter/r[u1,102]"/290,100,160/450,100,80/),
DEF VAR8=(R/0.0,99999.0//$85027,$85027,,/WR2,AC4//"/Channel/Parameter/r[u1,103]"/20,120,160/190,120,80/),
DEF work110=(I///,$85180,,/wr0///255,120,20)
DEF VAR9=(R///$85039,$85039,,/WR1,AC4//"/Channel/Parameter/r[u1,90]"/290,120,160/450,120,80/),
DEF work111=(I///,$85180,,/wr0///515,120,20)
DEF VAR10=(R///$85029,$85029,,/WR2,AC4//"/Channel/Parameter/r[u1,107]"/20,140,160/190,140,80/),
DEF work112=(I///,$85180,,/wr0///255,140,20)
DEF VAR11=(R/0.0,2000.0//$85030,$85030,,/WR2,AC4//"/Channel/Parameter/r[u1,111]"/290,140,160/450,140,80/),
DEF work113=(I///,$85180,,/wr0///515,140,20)
DEF work3=(I///,$85011,,/wr0///20,155,515);-----------

DEF VAR12=(R///$85412,$85412,,/WR2,AC4//"/Channel/Parameter/r[u1,35]"/20,170,160/190,170,80/),
DEF work114=(I///,$85180,,/wr0///255,170,20)
DEF VAR13=(R///$85413,$85413,,/WR2,AC4//"/Channel/Parameter/r[u1,34]"/290,170,160/450,170,80/),
DEF work115=(I///,$85180,,/wr0///515,170,20)
DEF VAR14=(I/0,100//$85414,$85414,,/WR2,AC4//"/Channel/Parameter/r[u1,37]"/20,190,160/190,190,80/),
;DEF work116=(I///,$85180,,/wr0///255,190,20)
DEF VAR15=(I/0,100//$85415,$85415,,/WR2,AC4//"/Channel/Parameter/r[u1,36]"/290,190,160/450,190,80/),
;DEF work117=(I///,$85181,,/wr0///513,190,60)
DEF VAR16=(R///$85033,$85033,,/WR2,AC4//"/Channel/Parameter/r[u1,108]"/20,210,160/190,210,80/),
DEF work118=(I///,$85180,,/wr0///255,210,20)
DEF VAR17=(R/0.0,9999.0//$85034,$85034,,/WR2,AC4//"/Channel/Parameter/r[u1,115]"/290,210,160/450,210,80/),
DEF work119=(I///,$85181,,/wr0///513,210,50)


DEF work4=(I///,$85011,,/wr0///20,225,515);-----------


DEF VAR18=(R///$85031,$85031,,/WR1,AC4//"/Channel/Parameter/r[u1,105]"/20,240,160/190,240,80/),
DEF work120=(I///,$85180,,/wr0///255,240,20)
DEF VAR19=(R///$85032,$85032,,/WR1,AC4//"/Channel/Parameter/r[u1,104]"/290,240,160/450,240,80/),
DEF work121=(I///,$85180,,/wr0///515,240,20)

DEF VAR20=(R///$85014,$85014,,/WR1,AC4//"/Channel/Parameter/r[u1,109]"/20,260,160/190,260,80/),
DEF work122=(I///,$85180,,/wr0///255,260,20)
DEF VAR21=(R///$85015,$85015,,/WR1,AC4//"/Channel/Parameter/r[u1,135]"/290,260,160/450,260,80/),
DEF work123=(I///,$85382,,/wr0///515,260,50)




DEF work124=(I///,$85012,,/WR0///20,290,515);=============



 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85177,ac7,se1);磨削参数1
 VS2=($85411,ac7,se1);磨削参数2
 VS3=($85010,ac7,se1);半扣参数
 VS4=($85520,ac7,se1);外圆参数
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(VS1)
LM("MASK1")
END_PRESS

PRESS(VS2)
LM("MASK11")
END_PRESS

PRESS(VS3)
LM("MASK12")
END_PRESS


PRESS(VS4)
LM("MASK13")
END_PRESS


PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS





;MASK11:磨削参数2 /////////////////////////////////////////////////////////////////////////510000
//M(Mask11/$85411/)


;DEF VAR300=(R///$85035,$85035,,/WR2,AC4//"/Channel/Parameter/r[u1,114]"/20,40,160/190,40,80/),
DEF VAR300=(I/*0=$85070,1=$85050//$85035,$85035,,/WR2,AC4//"/Channel/Parameter/r[u1,114]"/20,40,160/190,40,80/),
DEF VAR301=(R///$85036,$85036,,/WR1,AC4//"/Channel/Parameter/r[u2,185]"/290,40,160/450,40,80/),
DEF work125=(I///,$85180,,/wr0///515,40,20)
DEF VAR302=(R///$85037,$85037,,/WR1,AC4//"/Channel/Parameter/r[u1,131]"/20,60,160/190,60,80/),
DEF work126=(I///,$85180,,/wr0///255,60,20)
DEF VAR303=(R///$85038,$85038,,/WR1,AC4//"/Channel/Parameter/r[u1,133]"/290,60,160/450,60,80/),
DEF work127=(I///,$85180,,/wr0///515,60,20)
DEF work128=(I///,$85011,,/WR0///20,80,515);--------------

DEF VAR304=(R///$85179,$85179,,/WR2,AC4//"/Channel/Parameter/r[u2,311]"/20,100,160/190,100,80/),
DEF work129=(I///,$85382,,/wr0///255,100,50)
DEF VAR305=(R///$85419,$85419,,/WR2,AC4//"/Channel/Parameter/r[u1,0]"/290,100,160/450,100,80/),
DEF work130=(I///,$85382,,/wr0///515,100,50)
DEF VAR306=(R///$85307,$85307,,/WR2,AC4//"/Channel/Parameter/r[u2,8]"/20,120,160/190,120,80/),
DEF work131=(I///,$85180,,/wr0///255,120,50)

DEF work132=(I///,$85011,,/WR0///20,140,515);--------------
DEF VAR307=(R/-2.0,2.0//$85516,$85516,,/WR2,AC4//"/Channel/Parameter/r[u1,18]"/20,160,160/190,160,80/),
DEF work133=(I///,$85180,,/wr0///255,160,20)

DEF work134=(I///,$85012,,/WR0///20,290,515);=============



 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85177,ac7,se1);磨削参数1
 VS2=($85411,ac7,se1);磨削参数2
 VS3=($85010,ac7,se1);半扣参数
 VS4=($85520,ac7,se1);外圆参数
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(VS1)
LM("MASK1")
END_PRESS

PRESS(VS2)
LM("MASK11")
END_PRESS

PRESS(VS3)
LM("MASK12")
END_PRESS

PRESS(VS4)
LM("MASK13")
END_PRESS


PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS



;MASK12:半扣参数 /////////////////////////////////////////////////////////////////////////
//M(Mask12/$85010/)

DEF work350=(I///,$85178,,/wr0///20,40,300)
DEF work351=(I///,$85012,,/wr0///20,60,515);===========

DEF VAR120=(R///$85170,$85170,,/WR1,AC4//"/Channel/Parameter/r[u1,60]"/20,80,160/190,80,80/),
DEF work352=(I///,$85180,,/wr0///255,80,20)
DEF VAR121=(R///$85171,$85171,,/WR1,AC4//"/Channel/Parameter/r[u1,61]"/290,80,160/450,80,80/),
DEF work353=(I///,$85180,,/wr0///515,80,20)
DEF VAR122=(R/0.0,10000.0//$85172,$85172,,/WR2,AC4//"/Channel/Parameter/r[u1,62]"/20,100,160/190,100,80/),
DEF work354=(I///,$85382,,/wr0///255,100,50)
DEF VAR123=(R/0.0,10000.0//$85173,$85173,,/WR2,AC4//"/Channel/Parameter/r[u1,65]"/290,100,160/450,100,80/),
DEF work355=(I///,$85382,,/wr0///515,100,50)
DEF VAR124=(R/0.0,9999.0//$85174,$85174,,/WR2,AC4//"/Channel/Parameter/r[u1,64]"/20,120,160/190,120,80/),
DEF work356=(I///,$85180,,/wr0///255,120,20)
DEF VAR125=(R///$85418,$85418,,/WR2,AC4//"/Channel/Parameter/r[u1,40]"/290,120,160/450,120,80/),
DEF work357=(I///,$85180,,/wr0///515,120,50)
;DEF work358=(I///,$85012,,/WR0///20,140,515);=============

DEF work359=(I///,$85510,,/wr0///20,210,300)
DEF work360=(I///,$85012,,/WR0///20,230,515);=============
DEF VAR126=(R/0.0,1000.0//$85511,$85511,,/WR2,AC4//"/Channel/Parameter/r[u1,19]"/20,250,160/190,250,80/),
;DEF work361=(I///,$85382,,/wr0///255,250,50)
DEF VAR127=(R/0.0,10000.0//$85512,$85512,,/WR2,AC4//"/Channel/Parameter/r[u1,20]"/290,250,160/450,250,80/),
DEF work362=(I///,$85382,,/wr0///515,250,50)
DEF VAR128=(R///$85513,$85513,,/WR2,AC4//"/Channel/Parameter/r[u1,17]"/20,270,160/190,270,80/),
DEF work363=(I///,$85180,,/wr0///255,270,50)

DEF work364=(I///,$85012,,/WR0///20,290,515);=============



 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85177,ac7,se1);磨削参数1
 VS2=($85411,ac7,se1);磨削参数2
 VS3=($85010,ac7,se1);半扣参数
 VS4=($85520,ac7,se1);外圆参数
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(VS1)
LM("MASK1")
END_PRESS

PRESS(VS2)
LM("MASK11")
END_PRESS

PRESS(VS3)
LM("MASK12")
END_PRESS

PRESS(VS4)
LM("MASK13")
END_PRESS



PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS




;//////////////////////////////2012-01-26////////////////////
;MASK13:外圆参数 /////////////////////////////////////////////////////////////////////////
//M(Mask13/$85520/)

DEF work280=(I///,$85521,,/wr0///20,40,300)
DEF work281=(I///,$85012,,/wr0///20,60,515);===========

DEF VAR320=(R/0.0,40.0//$85522,$85522,,/WR2,AC4//"/Channel/Parameter/r[u1,15]"/20,80,150/170,80,60/),
DEF work282=(I///,$85183,,/wr0///233,80,50)
DEF VAR321=(R/0.0,5000.0//$85523,$85523,,/WR2,AC4//"/Channel/Parameter/r[u1,16]"/290,80,150/440,80,70/),
DEF work283=(I///,$85181,,/wr0///500,80,55)



DEF work284=(I///,$85012,,/WR0///20,290,515);=============



 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85177,ac7,se1);磨削参数1
 VS2=($85411,ac7,se1);磨削参数2
 VS3=($85010,ac7,se1);半扣参数
 VS4=($85520,ac7,se1);外圆参数
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(VS1)
LM("MASK1")
END_PRESS

PRESS(VS2)
LM("MASK11")
END_PRESS

PRESS(VS3)
LM("MASK12")
END_PRESS

PRESS(VS4)
LM("MASK13")
END_PRESS



PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS








;MASK2:工艺参数 ////////////////////////////////////////////////////////////////////////工序1/2

//M(Mask2/$85002/)

DEF VAR26=(R///$85051,$85051,,/WR2,AC4//"/Channel/Parameter/r[u1,112]"/20,30,160/180,30,80/),
DEF work137=(I///,$85180,,/wr0///245,30,20)
DEF VAR27=(I/*1=$85150,2=$85151,3=$85152,4=$85153,5=$85370,6=$85379//$85052,$85052,,/WR2,AC4//"/Channel/Parameter/r[u1,110]"/290,30,160/405,30,145/),
;DEF VAR27=(I/*1,2,3,4//$85052,$85052,,/WR2,AC4//"/Channel/Parameter/r[u1,110]"/290,30,160/450,30,80/),
DEF work138=(I///,$85012,,/wr0///20,50,515);===========

DEF work139=(I///,$85053,,/wr0///20,70,200)         ;1:->粗磨
DEF work140=(I///,$85059,,/wr0///290,70,200)     ;2:->半精磨

DEF VAR30=(R/0.0,60.0//$85054,$85054,,/WR2,AC4//"/Channel/Parameter/r[u1,116]"/20,90,160/180,90,80/),
DEF work141=(I///,$85183,,/wr0///243,90,50);
DEF VAR31=(R/0.0,60.0//$85060,$85060,,/WR2,AC4//"/Channel/Parameter/r[u1,120]"/290,90,160/440,90,80/),
DEF work142=(I///,$85183,,/wr0///503,90,50);
DEF VAR32=(R/0.0,100.0//$85055,$85055,,/WR2,AC4//"/Channel/Parameter/r[u1,117]"/20,110,160/180,110,80/),
DEF work143=(I///,$85180,,/wr0///245,110,20)
DEF VAR33=(R/0.0,100.0//$85061,$85061,,/WR2,AC4//"/Channel/Parameter/r[u1,121]"/290,110,160/440,110,80/),
DEF work144=(I///,$85180,,/wr0///505,110,20)
DEF VAR34=(I/0,300//$85056,$85056,,/WR2,AC4//"/Channel/Parameter/r[u1,118]"/20,130,160/180,130,80/),
DEF VAR35=(I/0,300//$85062,$85062,,/WR2,AC4//"/Channel/Parameter/r[u1,122]"/290,130,160/440,130,80/),
DEF VAR36=(I/0,300//$85057,$85057,,/WR2,AC4//"/Channel/Parameter/r[u1,119]"/20,150,160/180,150,80/),
DEF VAR37=(I/0,300//$85063,$85063,,/WR2,AC4//"/Channel/Parameter/r[u1,123]"/290,150,160/440,150,80/),

DEF VAR38=(I/0,9999//$85330,$85330,,/WR2,AC4//"/Channel/Parameter/r[u1,70]"/20,170,160/180,170,80/),
DEF VAR39=(I/0,9999//$85335,$85335,,/WR2,AC4//"/Channel/Parameter/r[u1,75]"/290,170,160/440,170,80/),
DEF VAR40=(R/0.0,9999.0//$85331,$85331,,/WR2,AC4//"/Channel/Parameter/r[u1,71]"/20,190,160/180,190,80/),
DEF work145=(I///,$85181,,/wr0///243,190,50)
DEF VAR41=(R/0.0,9999.0//$85336,$85336,,/WR2,AC4//"/Channel/Parameter/r[u1,76]"/290,190,160/440,190,80/),
DEF work146=(I///,$85181,,/wr0///503,190,50)
DEF VAR42=(R/0.0,100.0//$85332,$85332,,/WR2,AC4//"/Channel/Parameter/r[u1,72]"/20,210,160/180,210,80/),
DEF work147=(I///,$85180,,/wr0///245,210,20)
DEF VAR43=(R/0.0,100.0//$85337,$85337,,/WR2,AC4//"/Channel/Parameter/r[u1,77]"/290,210,160/440,210,80/),
DEF work148=(I///,$85180,,/wr0///505,210,20)
DEF VAR44=(R/0.0,100.0//$85333,$85333,,/WR2,AC4//"/Channel/Parameter/r[u1,73]"/20,230,160/180,230,80/),
DEF work149=(I///,$85184,,/wr0///245,230,40)
DEF VAR45=(R/0.0,100.0//$85338,$85338,,/WR2,AC4//"/Channel/Parameter/r[u1,78]"/290,230,160/440,230,80/),
DEF work150=(I///,$85184,,/wr0///505,230,40)
DEF work151=(I///,$85012,,/wr0///20,250,515);===========
DEF VAR46=(R///$85350,$85350,,/WR1,AC4//"/Channel/Parameter/r[u1,264]"/20,270,160/180,270,80/),
DEF VAR47=(R///$85351,$85351,,/WR1,AC4//"/Channel/Parameter/r[u1,501]"/290,270,160/440,270,80/),
DEF work152=(I///,$85184,,/wr0///505,270,40)
DEF VAR48=(R///$85352,$85352,,/WR1,AC4//"/Channel/Parameter/r[u2,201]"/290,290,160/440,290,80/),
DEF work153=(I///,$85183,,/wr0///505,290,50)


;到屏幕上方最小距离30，小于将不显示！
;到屏幕下方超过290显示不正常，！

 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85353,ac7,se1);工序1/2
 VS2=($85354,ac7,se1);工序3/4
 VS3=($85355,ac7,se1);工序5/6
 VS4=("");$85356,ac7,se1工序7/8
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

PRESS(VS1)
LM("MASK2")
END_PRESS

PRESS(VS2)
LM("MASK22")
END_PRESS

PRESS(VS3)
LM("MASK23")
END_PRESS

;PRESS(VS4)
;LM("MASK24")
;END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS


PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS





;MASK22:工艺参数 ////////////////////////////////////////////////////////////////////////工序3/4

//M(Mask22/$85354/)


DEF VAR130=(R///$85051,$85051,,/WR2,AC4//"/Channel/Parameter/r[u1,112]"/20,30,160/180,30,80/),
DEF work160=(I///,$85180,,/wr0///245,30,20)
DEF VAR131=(I/*1=$85150,2=$85151,3=$85152,4=$85153,5=$85370,6=$85379//$85052,$85052,,/WR2,AC4//"/Channel/Parameter/r[u1,110]"/290,30,160/405,30,145/),

DEF work50=(I///,$85012,,/wr0///20,50,515);===========

DEF work51=(I///,$85065,,/wr0///20,70,200)         ;3:->精磨
DEF work52=(I///,$85071,,/wr0///290,70,200)     ;4:->终磨(光刀)

DEF VAR132=(R/0.0,60.0//$85066,$85066,,/WR2,AC4//"/Channel/Parameter/r[u1,124]"/20,90,160/180,90,80/),
DEF work161=(I///,$85183,,/wr0///243,90,50);
DEF VAR133=(R/0.0,60.0//$85072,$85072,,/WR2,AC4//"/Channel/Parameter/r[u1,128]"/290,90,160/440,90,80/),
DEF work162=(I///,$85183,,/wr0///503,90,50);
DEF VAR134=(R/0.0,100.0//$85067,$85067,,/WR2,AC4//"/Channel/Parameter/r[u1,125]"/20,110,160/180,110,80/),
DEF work163=(I///,$85180,,/wr0///245,110,20)
DEF VAR135=(R/0.0,100.0//$85073,$85073,,/WR2,AC4//"/Channel/Parameter/r[u1,129]"/290,110,160/440,110,80/),
DEF work164=(I///,$85180,,/wr0///505,110,20)
DEF VAR136=(I/0,300//$85068,$85068,,/WR2,AC4//"/Channel/Parameter/r[u1,126]"/20,130,160/180,130,80/),
DEF VAR137=(I/0,300//$85074,$85074,,/WR2,AC4//"/Channel/Parameter/r[u1,130]"/290,130,160/440,130,80/),
DEF VAR138=(I/0,300//$85069,$85069,,/WR2,AC4//"/Channel/Parameter/r[u1,127]"/20,150,160/180,150,80/),
DEF VAR139=(I/0,300//$85075,$85075,,/WR2,AC4//"/Channel/Parameter/r[u1,132]"/290,150,160/440,150,80/),

DEF VAR140=(I/0,300//$85340,$85340,,/WR2,AC4//"/Channel/Parameter/r[u1,80]"/20,170,160/180,170,80/),
DEF VAR141=(I/0,300//$85345,$85345,,/WR2,AC4//"/Channel/Parameter/r[u1,85]"/290,170,160/440,170,80/),
DEF VAR142=(R/0.0,9999.0//$85341,$85341,,/WR2,AC4//"/Channel/Parameter/r[u1,81]"/20,190,160/180,190,80/),
DEF work165=(I///,$85181,,/wr0///243,190,50)
DEF VAR143=(R/0.0,9999.0//$85346,$85346,,/WR2,AC4//"/Channel/Parameter/r[u1,86]"/290,190,160/440,190,80/),
DEF work166=(I///,$85181,,/wr0///503,190,50)
DEF VAR144=(R/0.0,100.0//$85342,$85342,,/WR2,AC4//"/Channel/Parameter/r[u1,82]"/20,210,160/180,210,80/),
DEF work167=(I///,$85180,,/wr0///245,210,20)
DEF VAR145=(R/0.0,100.0//$85347,$85347,,/WR2,AC4//"/Channel/Parameter/r[u1,87]"/290,210,160/440,210,80/),
DEF work168=(I///,$85180,,/wr0///505,210,20)
DEF VAR146=(R/0.0,100.0//$85343,$85343,,/WR2,AC4//"/Channel/Parameter/r[u1,83]"/20,230,160/180,230,80/),
DEF work169=(I///,$85184,,/wr0///245,230,40)
DEF VAR147=(R/0.0,100.0//$85348,$85348,,/WR2,AC4//"/Channel/Parameter/r[u1,88]"/290,230,160/440,230,80/),
DEF work170=(I///,$85184,,/wr0///505,230,40)
DEF work53=(I///,$85012,,/wr0///20,250,515);===========
DEF VAR148=(R///$85350,$85350,,/WR1,AC4//"/Channel/Parameter/r[u1,264]"/20,270,160/180,270,80/),
DEF VAR149=(R///$85351,$85351,,/WR1,AC4//"/Channel/Parameter/r[u1,501]"/290,270,160/440,270,80/),
DEF work171=(I///,$85184,,/wr0///505,270,40)
DEF VAR150=(R///$85352,$85352,,/WR1,AC4//"/Channel/Parameter/r[u2,201]"/290,290,160/440,290,80/),
DEF work172=(I///,$85183,,/wr0///505,290,50)
;到屏幕上方最小距离30，小于将不显示！
;到屏幕下方超过290显示不正常，！

 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85353,ac7,se1);工序1/2
 VS2=($85354,ac7,se1);工序3/4
 VS3=($85355,ac7,se1);工序5/6
 VS4=("");工序7/8
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

PRESS(VS1)
LM("MASK2")
END_PRESS

PRESS(VS2)
LM("MASK22")
END_PRESS

PRESS(VS3)
LM("MASK23")
END_PRESS

;PRESS(VS4)
;LM("MASK24")
;END_PRESS


;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS


PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS

;MASK23:工艺参数 ////////////////////////////////////////////////////////////////////////工序5/6

//M(Mask23/$85355/)


DEF VAR190=(R///$85051,$85051,,/WR2,AC4//"/Channel/Parameter/r[u1,112]"/20,30,160/180,30,80/),
DEF work175=(I///,$85180,,/wr0///245,30,20)
DEF VAR191=(I/*1=$85150,2=$85151,3=$85152,4=$85153,5=$85370,6=$85379//$85052,$85052,,/WR2,AC4//"/Channel/Parameter/r[u1,110]"/290,30,160/405,30,145/),

DEF work176=(I///,$85012,,/wr0///20,50,515);===========

DEF work177=(I///,$85370,,/wr0///20,70,200)         ;5:
DEF work178=(I///,$85379,,/wr0///290,70,200)     ;6:

DEF VAR192=(R/0.0,60.0//$85371,$85371,,/WR2,AC4//"/Channel/Parameter/r[u1,165]"/20,90,160/180,90,80/),
DEF work179=(I///,$85183,,/wr0///243,90,50);
DEF VAR193=(R/0.0,60.0//$85500,$85500,,/WR2,AC4//"/Channel/Parameter/r[u1,169]"/290,90,160/440,90,80/),
DEF work180=(I///,$85183,,/wr0///503,90,50);
DEF VAR194=(R/0.0,100.0//$85372,$85372,,/WR2,AC4//"/Channel/Parameter/r[u1,166]"/20,110,160/180,110,80/),
DEF work181=(I///,$85180,,/wr0///245,110,20)
DEF VAR195=(R/0.0,100.0//$85501,$85501,,/WR2,AC4//"/Channel/Parameter/r[u1,170]"/290,110,160/440,110,80/),
DEF work182=(I///,$85180,,/wr0///505,110,20)
DEF VAR196=(I/0,300//$85373,$85373,,/WR2,AC4//"/Channel/Parameter/r[u1,167]"/20,130,160/180,130,80/),
DEF VAR197=(I/0,300//$85502,$85502,,/WR2,AC4//"/Channel/Parameter/r[u1,171]"/290,130,160/440,130,80/),
DEF VAR198=(I/0,300//$85374,$85374,,/WR2,AC4//"/Channel/Parameter/r[u1,168]"/20,150,160/180,150,80/),
DEF VAR199=(I/0,300//$85503,$85503,,/WR2,AC4//"/Channel/Parameter/r[u1,172]"/290,150,160/440,150,80/),

DEF VAR200=(I/0,300//$85375,$85375,,/WR2,AC4//"/Channel/Parameter/r[u1,173]"/20,170,160/180,170,80/),
DEF VAR201=(I/0,300//$85504,$85504,,/WR2,AC4//"/Channel/Parameter/r[u1,177]"/290,170,160/440,170,80/),
DEF VAR202=(R/0.0,9999.0//$85376,$85376,,/WR2,AC4//"/Channel/Parameter/r[u1,174]"/20,190,160/180,190,80/),
DEF work183=(I///,$85181,,/wr0///243,190,50)
DEF VAR203=(R/0.0,9999.0//$85505,$85505,,/WR2,AC4//"/Channel/Parameter/r[u1,178]"/290,190,160/440,190,80/),
DEF work184=(I///,$85181,,/wr0///503,190,50)
DEF VAR204=(R/0.0,100.0//$85377,$85377,,/WR2,AC4//"/Channel/Parameter/r[u1,175]"/20,210,160/180,210,80/),
DEF work185=(I///,$85180,,/wr0///245,210,20)
DEF VAR205=(R/0.0,100.0//$85506,$85506,,/WR2,AC4//"/Channel/Parameter/r[u1,179]"/290,210,160/440,210,80/),
DEF work186=(I///,$85180,,/wr0///505,210,20)
DEF VAR206=(R/0.0,100.0//$85378,$85378,,/WR2,AC4//"/Channel/Parameter/r[u1,176]"/20,230,160/180,230,80/),
DEF work187=(I///,$85184,,/wr0///245,230,40)
DEF VAR207=(R/0.0,100.0//$85507,$85507,,/WR2,AC4//"/Channel/Parameter/r[u1,180]"/290,230,160/440,230,80/),
DEF work188=(I///,$85184,,/wr0///505,230,40)
DEF work189=(I///,$85012,,/wr0///20,250,515);===========
DEF VAR208=(R///$85350,$85350,,/WR1,AC4//"/Channel/Parameter/r[u1,264]"/20,270,160/180,270,80/),
DEF VAR209=(R///$85351,$85351,,/WR1,AC4//"/Channel/Parameter/r[u1,501]"/290,270,160/440,270,80/),
DEF work190=(I///,$85184,,/wr0///505,270,40)
DEF VAR210=(R///$85352,$85352,,/WR1,AC4//"/Channel/Parameter/r[u2,201]"/290,290,160/440,290,80/),
DEF work191=(I///,$85183,,/wr0///505,290,50)
;到屏幕上方最小距离30，小于将不显示！
;到屏幕下方超过290显示不正常，！

 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85353,ac7,se1);工序1/2
 VS2=($85354,ac7,se1);工序3/4
 VS3=($85355,ac7,se1);工序5/6
 VS4=("");工序7/8
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

PRESS(VS1)
LM("MASK2")
END_PRESS

PRESS(VS2)
LM("MASK22")
END_PRESS

PRESS(VS3)
LM("MASK23")
END_PRESS

;PRESS(VS4)
;LM("MASK24")
;END_PRESS


;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS


PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS



MASK24:工艺参数 ////////////////////////////////////////////////////////////////////////工序7/8;暂时没用

//M(Mask24/$85356/)


DEF VAR220=(R///$85051,$85051,,/WR2,AC4//"/Channel/Parameter/r[u1,112]"/20,30,160/180,30,80/),
DEF work195=(I///,$85180,,/wr0///245,30,20)
DEF VAR221=(I/*1=$85150,2=$85151,3=$85152,4=$85153,5=$85370,6=$85379//$85052,$85052,,/WR2,AC4//"/Channel/Parameter/r[u1,110]"/290,30,160/405,30,145/),

DEF work196=(I///,$85012,,/wr0///20,50,515);===========

DEF work197=(I///,$85416,,/wr0///20,70,200)         ;7:
DEF work198=(I///,$85417,,/wr0///290,70,200)     ;8:

DEF VAR222=(R/0.0,100.0//$85066,$85066,,/WR2,AC4//"/Channel/Parameter/r[u1,181]"/20,90,160/180,90,80/),
DEF work199=(I///,$85183,,/wr0///243,90,50);
DEF VAR223=(R/0.0,100.0//$85072,$85072,,/WR2,AC4//"/Channel/Parameter/r[u1,185]"/290,90,160/440,90,80/),
DEF work200=(I///,$85183,,/wr0///503,90,50);
DEF VAR224=(R/0.0,100.0//$85067,$85067,,/WR2,AC4//"/Channel/Parameter/r[u1,182]"/20,110,160/180,110,80/),
DEF work201=(I///,$85180,,/wr0///245,110,20)
DEF VAR225=(R/0.0,100.0//$85073,$85073,,/WR2,AC4//"/Channel/Parameter/r[u1,186]"/290,110,160/440,110,80/),
DEF work202=(I///,$85180,,/wr0///505,110,20)
DEF VAR226=(I/0,300//$85068,$85068,,/WR2,AC4//"/Channel/Parameter/r[u1,183]"/20,130,160/180,130,80/),
DEF VAR227=(I/0,300//$85074,$85074,,/WR2,AC4//"/Channel/Parameter/r[u1,187]"/290,130,160/440,130,80/),
DEF VAR228=(I/0,300//$85069,$85069,,/WR2,AC4//"/Channel/Parameter/r[u1,184]"/20,150,160/180,150,80/),
DEF VAR229=(I/0,300//$85075,$85075,,/WR2,AC4//"/Channel/Parameter/r[u1,188]"/290,150,160/440,150,80/),

DEF VAR230=(I/0,300//$85340,$85340,,/WR2,AC4//"/Channel/Parameter/r[u1,189]"/20,170,160/180,170,80/),
DEF VAR231=(I/0,300//$85345,$85345,,/WR2,AC4//"/Channel/Parameter/r[u1,193]"/290,170,160/440,170,80/),
DEF VAR232=(R/0.0,9999.0//$85341,$85341,,/WR2,AC4//"/Channel/Parameter/r[u1,190]"/20,190,160/180,190,80/),
DEF work203=(I///,$85181,,/wr0///243,190,50)
DEF VAR233=(R/0.0,9999.0//$85346,$85346,,/WR2,AC4//"/Channel/Parameter/r[u1,194]"/290,190,160/440,190,80/),
DEF work204=(I///,$85181,,/wr0///503,190,50)
DEF VAR234=(R/0.0,100.0//$85342,$85342,,/WR2,AC4//"/Channel/Parameter/r[u1,191]"/20,210,160/180,210,80/),
DEF work205=(I///,$85180,,/wr0///245,210,20)
DEF VAR235=(R/0.0,100.0//$85347,$85347,,/WR2,AC4//"/Channel/Parameter/r[u1,195]"/290,210,160/440,210,80/),
DEF work206=(I///,$85180,,/wr0///505,210,20)
DEF VAR236=(R/0.0,100.0//$85343,$85343,,/WR2,AC4//"/Channel/Parameter/r[u1,192]"/20,230,160/180,230,80/),
DEF work207=(I///,$85184,,/wr0///245,230,40)
DEF VAR237=(R/0.0,100.0//$85348,$85348,,/WR2,AC4//"/Channel/Parameter/r[u1,196]"/290,230,160/440,230,80/),
DEF work208=(I///,$85184,,/wr0///505,230,40)
DEF work209=(I///,$85012,,/wr0///20,250,515);===========
DEF VAR238=(R///$85350,$85350,,/WR1,AC4//"/Channel/Parameter/r[u1,264]"/20,270,160/180,270,80/),
DEF VAR239=(R///$85351,$85351,,/WR1,AC4//"/Channel/Parameter/r[u1,501]"/290,270,160/440,270,80/),
DEF work210=(I///,$85184,,/wr0///505,270,40)
DEF VAR240=(R///$85352,$85352,,/WR1,AC4//"/Channel/Parameter/r[u2,201]"/290,290,160/440,290,80/),
DEF work211=(I///,$85183,,/wr0///505,290,50)
;到屏幕上方最小距离30，小于将不显示！
;到屏幕下方超过290显示不正常，！

 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85353,ac7,se1);工序1/2
 VS2=($85354,ac7,se1);工序3/4
 VS3=($85355,ac7,se1);工序5/6
 VS4=("");工序7/8
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

PRESS(VS1)
LM("MASK2")
END_PRESS

PRESS(VS2)
LM("MASK22")
END_PRESS

PRESS(VS3)
LM("MASK23")
END_PRESS

;PRESS(VS4)
;LM("MASK24")
;END_PRESS


;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS


PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS


;MASK3:蜗杆修整 /////////////////////////////////////////////////////////////////////////没用
//M(Mask3/$85003/)
DEF VAR51=(I/*0="新砂轮",//$85077,$85077,,/WR2,AC4//"/Channel/Parameter/r[u2,65]"/20,30,160/190,30,80/),
DEF VAR52=(R///$85078,$85078,,/WR2,AC4//"/Channel/Parameter/r[u2,7]"/290,30,160/450,30,80/),
DEF VAR53=(R///$85079,$85079,,/WR2,AC4//"/Channel/Parameter/r[u2,3]"/20,50,160/190,50,80/),
DEF VAR54=(R///$85080,$85080,,/WR2,AC4//"/Channel/Parameter/r[u2,9]"/290,50,160/450,50,80/),
DEF VAR55=(R///$85081,$85081,,/WR2,AC4//"/Channel/Parameter/r[u2,25]"/20,70,160/190,70,80/),
DEF VAR56=(R///$85082,$85082,,/WR2,AC4//"/Channel/Parameter/r[u2,185]"/290,70,160/450,70,80/),
DEF work15=(I///,$85012,,/wr0///20,85,515);===========

DEF VAR57=(R///$85083,$85083,,/WR2,AC4//"/Channel/Parameter/r[u2,18]"/20,100,160/190,100,80/),
DEF VAR58=(R///$85084,$85084,,/WR2,AC4//"/Channel/Parameter/r[u2,19]"/290,100,160/450,100,80/),
DEF VAR59=(R///$85085,$85085,,/WR2,AC4//"/Channel/Parameter/r[u2,20]"/20,120,160/190,120,80/),
DEF VAR60=(R///$85086,$85086,,/WR2,AC4//"/Channel/Parameter/r[u2,21]"/290,120,160/450,120,80/),
DEF VAR61=(R///$85087,$85087,,/WR2,AC4//"/Channel/Parameter/r[u2,22]"/20,140,160/190,140,80/),
DEF VAR62=(R///$85088,$85088,,/WR2,AC4//"/Channel/Parameter/r[u2,23]"/290,140,160/450,140,80/),
DEF work16=(I///,$85011,,/wr0///20,155,515);----------------

DEF VAR63=(R///$85089,$85089,,/WR2,AC4//"/Channel/Parameter/r[u2,10]"/20,170,160/190,170,80/),
DEF VAR64=(R///$85090,$85090,,/WR2,AC4//"/Channel/Parameter/r[u2,11]"/290,170,160/450,170,80/),
DEF VAR65=(R///$85091,$85091,,/WR2,AC4//"/Channel/Parameter/r[u2,14]"/20,190,160/190,190,80/),
DEF VAR66=(R///$85092,$85092,,/WR2,AC4//"/Channel/Parameter/r[u2,15]"/290,190,160/450,190,80/),
DEF VAR67=(R///$85093,$85093,,/WR1,AC4//"/Channel/Parameter/r[u2,29]"/20,210,160/190,210,60/),
DEF VAR68=(R///$85094,$85094,,/WR2,AC4//"/Channel/Parameter/r[u2,28]"/290,210,160/450,210,80/),
DEF work17=(I///,$85011,,/wr0///20,225,515);----------------

DEF VAR69=(R/30,65.0//$85095,$85095,,/WR2,AC4//"/Channel/Parameter/r[u2,200]"/20,240,160/190,240,80/),
DEF VAR70=(R///$85096,$85096,,/WR2,AC4//"/Channel/Parameter/r[u2,8]"/290,240,160/450,240,80/),
DEF VAR71=(R///$85097,$85097,,/WR1,AC4//"/Channel/Parameter/r[u2,201]"/20,260,160/190,260,80/),
DEF VAR72=(R///$85098,$85098,,/WR1,AC4//"/Channel/Parameter/r[u2,36]"/290,260,160/450,260,80/),
DEF work18=(I///,$85012,,/wr0///20,280,515);===========

  HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=("")
 VS2=("")
 VS3=("")
 VS4=("")
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS

;MASK4:修整参数 ////////////////////////////////////////////////////////////////////////

//M(Mask4/$85004/)


DEF VAR51=(I/*0=$85154,1111=$85404//$85200,$85200,,/WR2,AC4//"/Channel/Parameter/r[u2,150]"/20,30,160/180,30,80/),
DEF VAR52=(R///$85201,$85201,,/WR2,AC4//"/Channel/Parameter/r[u2,168]"/290,30,160/450,30,80/),
DEF work380=(I///,$85180,,/wr0///515,30,20)
DEF VAR53=(R///$85208,$85208,,/WR2,AC4//"/Channel/Parameter/r[u2,166]"/20,50,160/180,50,80/),
DEF work381=(I///,$85180,,/wr0///245,50,20)
DEF VAR54=(R///$85209,$85209,,/WR2,AC4//"/Channel/Parameter/r[u2,167]"/290,50,160/450,50,80/),
DEF work382=(I///,$85180,,/wr0///515,50,20)
DEF work383=(I///,$85012,,/wr0///20,70,515);===========

DEF VAR55=(I///$85360,$85360,,/WR1,AC4//"/Channel/Parameter/r[u2,41]"/20,90,160/180,90,80/),
DEF VAR56=(I///$85362,$85362,,/WR1,AC4//"/Channel/Parameter/r[u1,264]"/290,90,160/450,90,80/),
DEF VAR57=(R///$85361,$85361,,/WR1,AC4//"/Channel/Parameter/r[u2,35]"/20,110,160/180,110,80/),
DEF work384=(I///,$85181,,/wr0///243,110,50)
DEF VAR58=(R///$85363,$85363,,/WR1,AC4//"/Channel/Parameter/r[u2,36]"/290,110,160/450,110,80/),
DEF work385=(I///,$85180,,/wr0///515,110,20)
;DEF VAR59=(R///$85210,$85210,,/WR1,AC4//"/Channel/Parameter/r[u1,501]"/20,130,160/180,130,80/),
;DEF work386=(I///,$85184,,/wr0///245,130,40)
DEF VAR60=(R///$85036,$85036,,/WR1,AC4//"/Channel/Parameter/r[u2,185]"/290,130,160/450,130,80/),
DEF work387=(I///,$85180,,/wr0///515,130,20)
DEF work388=(I///,$85011,,/wr0///20,145,515);---------------------

DEF VAR61=(R/0.0,100.0//$85212,$85212,,/WR2,AC4//"/Channel/Parameter/r[u2,202]"/20,160,160/180,160,80/),
DEF work389=(I///,$85184,,/wr0///245,160,40)
DEF VAR62=(R/0.0,900.0//$85211,$85211,,/WR2,AC4//"/Channel/Parameter/r[u2,176]"/290,160,160/450,160,80/),
DEF work390=(I///,$85180,,/wr0///515,160,20)
DEF VAR63=(R///$85214,$85214,,/WR1,AC4//"/Channel/Parameter/r[u2,201]"/20,180,160/160,180,100/),
DEF work391=(I///,$85183,,/wr0///243,180,50)
DEF VAR64=(R/0.0,99999.0//$85213,$85213,,/WR2,AC4//"/Channel/Parameter/r[u2,177]"/290,180,160/450,180,80/),
DEF work392=(I///,$85180,,/wr0///515,180,20)
DEF work393=(I///,$85011,,/wr0///20,195,515);---------------------

DEF VAR65=(R/0.0,100.0//$85222,$85222,,/WR2,AC4//"/Channel/Parameter/r[u2,9]"/20,210,160/180,210,80/),
DEF work394=(I///,$85180,,/wr0///245,210,20)
DEF VAR66=(R/0.0,100.0//$85216,$85216,,/WR2,AC4//"/Channel/Parameter/r[u2,170]"/290,210,160/450,210,80/),
DEF work395=(I///,$85180,,/wr0///515,210,20)

DEF VAR67=(R/0.0,200.0//$85218,$85218,,/WR2,AC4//"/Channel/Parameter/r[u2,172]"/20,230,160/180,230,80/),
DEF work396=(I///,$85184,,/wr0///243,230,40)
DEF VAR68=(R/0.0,1000.0//$85217,$85217,,/WR2,AC4//"/Channel/Parameter/r[u2,171]"/290,230,160/450,230,80/),
DEF work397=(I///,$85180,,/wr0///515,230,20)
DEF VAR69=(R///$85220,$85220,,/WR1,AC4//"/Channel/Parameter/r[u2,203]"/20,250,160/160,250,100/),
DEF work398=(I///,$85183,,/wr0///243,250,50)
DEF VAR70=(R/0.0,500.0//$85221,$85221,,/WR2,AC4//"/Channel/Parameter/r[u2,175]"/290,250,160/450,250,80/),
DEF work399=(I///,$85180,,/wr0///515,250,20)

DEF VAR71=(I/*0=$85380,1=$85381//$85364,$85364,,/WR2,AC4//"/Channel/Parameter/r[u2,208]"/20,270,160/180,270,80/),

DEF work400=(I///,$85012,,/wr0///20,290,515);===========

 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=("")$85009
 VS2=("")$85010
 VS3=("")
 VS4=("")
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS



PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS





;MASK5:齿形参数 ////////////////////////////////////////////////////////////////////////三角螺纹

//M(Mask5/$85005/)

;DEF VAR75=(I/*1=$85155,2=$85156,3=$85157,4=$85158,5=$85159,6=$85160//$85223,$85223,,/WR2,AC4//"/Channel/Parameter/r[u2,151]"/20,30,130/140,30,130/),

DEF VAR75=(I/1,30//$85223,$85223,,/WR2,AC4//"/Channel/Parameter/r[u2,151]"/20,30,130/150,30,130/),
;DEF VAR76=(R///$85224,$85224,,/WR2,AC4//"/Channel/Parameter/r[u2,60]"/290,30,80/370,30,40/),
;DEF VAR77=(R///$85382,$85382,,/WR2,AC4//"/Channel/Parameter/r[u2,61]"/395,30,10/420,30,40/),
;DEF VAR78=(R///$85383,$85383,,/WR2,AC4//"/Channel/Parameter/r[u2,62]"/440,30,10/470,30,40/),
;DEF work25=(I///,$85384,,/wr0///490,30,10);″

DEF VAR76=(R///$85224,$85224,,/WR2,AC4//"/Channel/Parameter/r[u2,180]"/290,30,160/450,30,80/),
DEF work25=(I///,$85382,,/wr0///515,30,30);°
DEF work26=(I///,$85011,,/wr0///20,45,515);---------------------

DEF VAR79=(R/0.0,500.0//$85225,$85225,,/WR2,AC4//"/Channel/Parameter/r[u2,154]"/20,60,160/190,60,80/),
DEF work100=(I///,$85382,,/wr0///255,60,30)
DEF VAR80=(R/0.0,500.0//$85226,$85226,,/WR2,AC4//"/Channel/Parameter/r[u2,155]"/290,60,160/450,60,80/),
DEF work101=(I///,$85382,,/wr0///515,60,30)
DEF VAR81=(R/0.0,100.0//$85229,$85229,,/WR2,AC4//"/Channel/Parameter/r[u2,300]"/20,80,160/190,80,80/),
DEF work102=(I///,$85180,,/wr0///255,80,20)
DEF VAR82=(R/0.0,900.0//$85227,$85227,,/WR2,AC4//"/Channel/Parameter/r[u2,181]"/290,80,160/450,80,80/),
DEF work103=(I///,$85180,,/wr0///515,80,20)
DEF VAR83=(R/0.0,100.0//$85700,$85700,,/WR2,AC4//"/Channel/Parameter/r[u2,37]"/20,100,160/190,100,80/),

DEF work104=(I///,$85180,,/wr0///255,100,20)
DEF VAR84=(R/0.0,500.0//$85243,$85243,,/WR2,AC4//"/Channel/Parameter/r[u2,30]"/290,100,160/450,100,80/),
DEF work105=(I///,$85180,,/wr0///515,100,20)
DEF work27=(I///,$85011,,/wr0///20,115,515);---------------------

DEF work28=(I///,$85430,,/wr0///20,130,300)
DEF work29=(I///,$85387,,/wr0///20,150,300)
DEF work30=(I///,$85388,,/wr0///20,170,300)
;DEF work31=(I///,$85389,,/wr0///20,190,300)
DEF work32=(I///,$85390,,/wr0///20,190,300);

;DEF work33=(I///,$85391,,/wr0///20,230,300);
DEF work34=(I///,$85392,,/wr0///20,210,300)
;DEF work35=(I///,$85393,,/wr0///20,270,300)
DEF work36=(I///,$85394,,/wr0///20,230,300)

 
 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85228,ac7,se1);三角螺纹
 VS2=($85230,ac7,se1);梯形螺纹
 VS3=($85232,ac7,se1);圆弧形螺纹
 VS4=($85236,ac7,se1);NPT螺纹
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

PRESS(VS1)
LM("MASK5")
END_PRESS

PRESS(VS2)
LM("MASK52")
END_PRESS

PRESS(VS3)
LM("MASK53")
END_PRESS

PRESS(VS4)
LM("MASK54")
END_PRESS


;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS




;MASK52:齿形参数 ////////////////////////////////////////////////////////////////////////梯形螺纹

//M(Mask52/$85230/)


DEF VAR85=(I/1,30//$85223,$85223,,/WR2,AC4//"/Channel/Parameter/r[u2,151]"/20,30,130/140,30,130/),
DEF VAR91=(R///$85224,$85224,,/WR2,AC4//"/Channel/Parameter/r[u2,180]"/290,30,160/450,30,80/),
DEF work95=(I///,$85382,,/wr0///515,30,30);°
DEF work40=(I///,$85012,,/wr0///20,50,515);===========

DEF VAR86=(R/0.0,500.0//$85225,$85225,,/WR2,AC4//"/Channel/Parameter/r[u2,154]"/20,70,160/190,70,80/),
DEF work90=(I///,$85382,,/wr0///255,70,30)
DEF VAR87=(R/0.0,500.0//$85226,$85226,,/WR2,AC4//"/Channel/Parameter/r[u2,155]"/290,70,160/450,70,80/),
DEF work91=(I///,$85382,,/wr0///515,70,30)
DEF VAR88=(R/0.0,100.0//$85231,$85231,,/WR2,AC4//"/Channel/Parameter/r[u2,309]"/20,90,160/190,90,80/),
DEF work92=(I///,$85180,,/wr0///255,90,20)
DEF VAR89=(R/0.0,900.0//$85227,$85227,,/WR2,AC4//"/Channel/Parameter/r[u2,181]"/290,90,160/450,90,80/),
DEF work93=(I///,$85180,,/wr0///515,90,20)
DEF VAR90=(R/0.0,500.0//$85243,$85243,,/WR2,AC4//"/Channel/Parameter/r[u2,30]"/290,110,160/450,110,80/),
DEF work94=(I///,$85180,,/wr0///515,110,20)
DEF work41=(I///,$85011,,/wr0///20,125,515);---------------------

DEF work42=(I///,$85395,,/wr0///20,140,300)
DEF work43=(I///,$85396,,/wr0///20,160,300)
;DEF work60=(I///,$85400,,/wr0///20,180,300)

DEF work44=(I///,$85012,,/wr0///20,290,515);===========


 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
VS1=($85228,ac7,se1);三角螺纹
 VS2=($85230,ac7,se1);梯形螺纹
 VS3=($85232,ac7,se1);圆弧形螺纹
 VS4=($85236,ac7,se1);NPT螺纹
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

PRESS(VS1)
LM("MASK5")
END_PRESS

PRESS(VS2)
LM("MASK52")
END_PRESS

PRESS(VS3)
LM("MASK53")
END_PRESS

PRESS(VS4)
LM("MASK54")
END_PRESS


;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS





;MASK53:齿形参数 ////////////////////////////////////////////////////////////////////////圆弧形螺纹

//M(Mask53/$85232/)


DEF VAR160=(I/1,30//$85223,$85223,,/WR2,AC4//"/Channel/Parameter/r[u2,151]"/20,30,130/140,30,130/),
DEF VAR161=(R///$85224,$85224,,/WR2,AC4//"/Channel/Parameter/r[u2,180]"/290,30,160/450,30,80/),
DEF work79=(I///,$85382,,/wr0///515,30,20)
DEF work74=(I///,$85012,,/wr0///20,50,515);===========
DEF VAR162=(R/0.0,500.0//$85225,$85225,,/WR2,AC4//"/Channel/Parameter/r[u2,154]"/20,70,160/190,70,80/),
DEF work80=(I///,$85382,,/wr0///255,70,30)
DEF VAR163=(R/0.0,500.0//$85226,$85226,,/WR2,AC4//"/Channel/Parameter/r[u2,155]"/290,70,160/450,70,80/),
DEF work81=(I///,$85382,,/wr0///515,70,30)
DEF VAR164=(R/0.0,200.0//$85234,$85234,,/WR2,AC4//"/Channel/Parameter/r[u2,302]"/20,90,160/190,90,80/),
DEF work82=(I///,$85180,,/wr0///255,90,20)
DEF VAR165=(R/0.0,900.0//$85227,$85227,,/WR2,AC4//"/Channel/Parameter/r[u2,181]"/290,90,160/450,90,80/),
DEF work83=(I///,$85180,,/wr0///515,90,20)
DEF VAR166=(R/0.0,200.0//$85235,$85235,,/WR2,AC4//"/Channel/Parameter/r[u2,303]"/20,110,160/190,110,80/),
DEF work84=(I///,$85180,,/wr0///255,110,20)
DEF VAR167=(R/0.0,500.0//$85243,$85243,,/WR2,AC4//"/Channel/Parameter/r[u2,30]"/290,110,160/450,110,80/),
DEF work85=(I///,$85180,,/wr0///515,110,20)
DEF work70=(I///,$85011,,/wr0///20,125,515);---------------------

DEF work71=(I///,$85397,,/wr0///20,140,300)
DEF work72=(I///,$85398,,/wr0///20,160,300)


DEF work73=(I///,$85012,,/wr0///20,290,515);===========



 
 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
VS1=($85228,ac7,se1);三角螺纹
 VS2=($85230,ac7,se1);梯形螺纹
 VS3=($85232,ac7,se1);圆弧形螺纹
 VS4=($85236,ac7,se1);NPT螺纹
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

PRESS(VS1)
LM("MASK5")
END_PRESS

PRESS(VS2)
LM("MASK52")
END_PRESS

PRESS(VS3)
LM("MASK53")
END_PRESS

PRESS(VS4)
LM("MASK54")
END_PRESS


;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS




;MASK54:齿形参数 ////////////////////////////////////////////////////////////////////////NPT螺纹

//M(Mask54/$85236/)


DEF VAR180=(I/1,30//$85223,$85223,,/WR2,AC4//"/Channel/Parameter/r[u2,151]"/20,30,130/140,30,130/),
DEF VAR181=(R///$85224,$85224,,/WR2,AC4//"/Channel/Parameter/r[u2,180]"/290,30,160/450,30,80/),
DEF work322=(I///,$85382,,/wr0///515,30,20)
DEF work323=(I///,$85012,,/wr0///20,50,515);===========
DEF VAR182=(R/0.0,500.0//$85225,$85225,,/WR2,AC4//"/Channel/Parameter/r[u2,154]"/20,70,160/190,70,80/),
DEF work324=(I///,$85382,,/wr0///255,70,30)
DEF VAR183=(R/0.0,500.0//$85226,$85226,,/WR2,AC4//"/Channel/Parameter/r[u2,155]"/290,70,160/450,70,80/),
DEF work325=(I///,$85382,,/wr0///515,70,30)
DEF VAR184=(R/0.0,500.0//$85239,$85239,,/WR2,AC4//"/Channel/Parameter/r[u2,307]"/20,90,160/190,90,80/),
DEF work326=(I///,$85180,,/wr0///255,90,20)
DEF VAR185=(R/0.0,900.0//$85227,$85227,,/WR2,AC4//"/Channel/Parameter/r[u2,181]"/290,90,160/450,90,80/),
DEF work327=(I///,$85180,,/wr0///515,90,20)
DEF VAR186=(R/0.0,500.0//$85240,$85240,,/WR2,AC4//"/Channel/Parameter/r[u2,308]"/20,110,160/190,110,80/),
DEF work328=(I///,$85180,,/wr0///255,110,20)
DEF VAR187=(R/0.0,500.0//$85243,$85243,,/WR2,AC4//"/Channel/Parameter/r[u2,30]"/290,110,160/450,110,80/),
DEF work329=(I///,$85180,,/wr0///515,110,20)
DEF VAR188=(R/0.0,500.0//$85238,$85238,,/WR2,AC4//"/Channel/Parameter/r[u2,306]"/20,130,160/190,130,80/),
DEF work330=(I///,$85382,,/wr0///255,130,20)
DEF VAR189=(R/0.0,100.0//$85700,$85700,,/WR2,AC4//"/Channel/Parameter/r[u2,37]"/290,130,160/450,130,80/),
DEF work331=(I///,$85180,,/wr0///515,110,20)
DEF work332=(I///,$85011,,/wr0///20,145,515);---------------------

DEF work333=(I///,$85399,,/wr0///20,160,300)
DEF work334=(I///,$85401,,/wr0///20,180,300)
DEF work335=(I///,$85402,,/wr0///20,200,300)

DEF work336=(I///,$85012,,/wr0///20,290,515);===========


 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=($85228,ac7,se1);三角螺纹
 VS2=($85230,ac7,se1);梯形螺纹
 VS3=($85232,ac7,se1);圆弧形螺纹
 VS4=($85236,ac7,se1);NPT螺纹
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

PRESS(VS1)
LM("MASK5")
END_PRESS

PRESS(VS2)
LM("MASK52")
END_PRESS

PRESS(VS3)
LM("MASK53")
END_PRESS

PRESS(VS4)
LM("MASK54")
END_PRESS


;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS


;MASK6:补偿参数 ////////////////////////////////////////////////////////////////////////

//M(Mask6/$85006/)

DEF work300=(I///,$85308,,/wr0///20,30,500)  
DEF work301=(I///,$85012,,/wr0///20,50,515);---------------------
DEF VAR100=(R///$85300,$85300,,/WR2,AC4//"/Channel/Parameter/r[u2,4]"/20,70,160/190,70,80/),
DEF VAR101=(R///$85301,$85301,,/WR2,AC4//"/Channel/Parameter/r[u2,1]"/290,70,160/450,70,80/),
DEF VAR102=(R///$85302,$85302,,/WR2,AC4//"/Channel/Parameter/r[u2,2]"/20,90,160/190,90,80/),
DEF VAR103=(R///$85303,$85303,,/WR2,AC4//"/Channel/Parameter/r[u2,3]"/290,90,160/450,90,80/),
DEF work302=(I///,$85011,,/wr0///20,105,515);---------------------

DEF VAR104=(R///$85307,$85307,,/WR2,AC4//"/Channel/Parameter/r[u2,8]"/20,120,160/190,120,80/),

DEF work303=(I///,$85012,,/wr0///20,290,515);===========





 
 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 VS1=("")
 VS2=("")
 VS3=("")
 VS4=("")
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS

PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS

PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS

;MASK7:帮助 ////////////////////////////////////////////////////////////////////////

//M(Mask7/$85007//)

;DEF work9=(I///,$85011,,/wr0///30,30,480)
DEF work9=(I///,$85020,,/wr0///20,30,560//HELP *);机床型号
DEF work10=(I///,$85250,,/wr0///30,50,480)
DEF work11=(I///,$85251,,/wr0///30,70,480)
DEF work12=(I///,$85252,,/wr0///30,90,480)
DEF work13=(I///,$85253,,/wr0///30,110,480)
DEF work14=(I///,$85254,,/wr0///30,130,480)
DEF work15=(I///,$85255,,/wr0///30,150,480)
DEF work16=(I///,$85256,,/wr0///30,170,480)
DEF work17=(I///,$85257,,/wr0///30,190,480)
DEF work18=(I///,$85258,,/wr0///30,210,480)
DEF work19=(I///,$85259,,/wr0///30,230,480)
DEF work20=(I///,$85260,,/wr0///30,250,480)
DEF work21=(I///,$85261,,/wr0///30,270,480)
DEF work22=(I///,$85262,,/wr0///30,290,480)



 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 ;VS1=($85265)
 VS2=("")
 VS3=("")
 VS4=("")
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS


PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS


PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

;PRESS(VS1)
;LM("MASK71")
;END_PRESS


PRESS(HS8)  
  EXIT
END_PRESS


;MASK7:帮助 ////////////////////////////////////////////////////////////////////////

//M(MASK71/$85265//)

CUS.DIR\hlp.dir





 HS1=($85001,ac7,se1);"磨削参数"
 HS2=($85002,ac7,se1);"工艺参数" 
 HS3=("");"蜗杆修整"  
 HS4=($85004,ac7,se1);修整参数
 HS5=($85005,ac7,se1);齿形参数
 HS6=("");"$85006,ac7,se1补偿参数"
 HS7=($85007,ac7,se1);"帮 助"
 HS8=($85008,ac7,se1);"返回"   
 ;VS1=($85265)
 VS2=("")
 VS3=("")
 VS4=("")
 VS5=("")
 VS6=("")
 VS7=("")
 VS8=("")    ;Softkey 8  Vertical: Exit

PRESS(HS1)
LM("MASK1")
END_PRESS



PRESS(HS2)
LM("MASK2")
END_PRESS

;PRESS(HS3)
;LM("MASK3")
;END_PRESS

PRESS(HS4)
LM("MASK4")
END_PRESS


PRESS(HS5)
LM("MASK5")
END_PRESS

;PRESS(HS6)
;LM("MASK6")
;END_PRESS

PRESS(HS7)
LM("MASK7")
END_PRESS

;PRESS(VS1)
;LM("MASK71")
;END_PRESS

PRESS(HS8)  
  EXIT
END_PRESS





//END