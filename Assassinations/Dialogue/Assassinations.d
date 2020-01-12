// Bernard: passing the message

INTERJECT BERNARD 22 O#CrBernard1
== BERNARD IF ~Global("O#CrLynnMet","GLOBAL",0) !Class(Player1,PALADIN_ALL) ReputationLT(Player1,17)~ THEN @0
DO ~SetGlobal("O#CrLynnSpawn1","GLOBAL",1) 
GiveItemCreate("O#CrNot1",Player1,1,0,0) 
AddJournalEntry(@10000,QUEST)~
END
++ @1 EXTERN BERNARD O#CrB2
++ @2 EXTERN BERNARD O#CrB1
++ @3 EXTERN BERNARD O#CrB1
++ @4 EXTERN BERNARD O#CrB2

CHAIN BERNARD O#CrB1
@5
END
++ @6 EXTERN BERNARD O#CrB2
++ @7 EXTERN BERNARD O#CrB2

CHAIN BERNARD O#CrB2
@8
END
COPY_TRANS BERNARD 22

CHAIN IF WEIGHT #-1 ~Global("O#CrLynnSpawn2","GLOBAL",0) 
OR(2) 
Global("Chapter","GLOBAL",%bg2_chapter_7%) 
Dead("C6Bodhi") 
Global("O#CrLynnNineQuestsComplete","GLOBAL",1)
Global("O#CrLynnFinalQuest","GLOBAL",0)
Global("O#CrLynnBetrayed","GLOBAL",0)~ THEN BERNARD O#CrBernard2
@9
DO ~SetGlobal("O#CrLynnSpawn2","GLOBAL",1) 
GiveItemCreate("O#CrNot2",Player1,1,0,0)
AddJournalEntry(@10460,QUEST)~
EXIT

BEGIN O#CRBOY 

CHAIN IF ~Global("O#CrLynnSpawn2","GLOBAL",0)~ THEN O#CRBOY task1
@10
END
++ @11 EXTERN O#CRBOY task1.1
++ @12 EXTERN O#CRBOY task1.1
++ @13 EXTERN O#CRBOY task1.1

CHAIN O#CRBOY task1.1
@14
END
++ @15 EXTERN O#CRBOY task1.2
++ @16 EXTERN O#CRBOY task1.3
++ @17 EXTERN O#CRBOY task1.3

CHAIN O#CRBOY task1.2
@18
DO ~SetGlobal("O#CrLynnSpawn2","GLOBAL",1) AddJournalEntry(@10560,QUEST) EscapeArea()~
EXIT

CHAIN O#CRBOY task1.3
@19
DO ~SetGlobal("O#CrLynnSpawn2","GLOBAL",1) AddJournalEntry(@10560,QUEST) EscapeArea()~
EXIT

// Lynn, introduction

BEGIN O#LYNN

CHAIN IF ~AreaCheck("AR0511")
OR(5)
See(Player2)
See(Player3)
See(Player4)
See(Player5)
See(Player6)~ THEN O#LYNN a1
@20 
EXIT

CHAIN IF ~Global("O#CrLynnBetrayed","GLOBAL",1) Global("O#CrLynnAmbushTalk","GLOBAL",1)~ THEN O#LYNN aBetrayed1
@21 
DO ~SetGlobal("O#CrLynnAmbushTalk","GLOBAL",2)
AddJournalEntry(@10080,QUEST_DONE)
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040)
EraseJournalEntry(@10050)
EraseJournalEntry(@10060)
EraseJournalEntry(@10070)
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130)
EraseJournalEntry(@10140)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170)
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)
EraseJournalEntry(@10200)
EraseJournalEntry(@10210)
EraseJournalEntry(@10220)
EraseJournalEntry(@10230)
EraseJournalEntry(@10240)
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270)
EraseJournalEntry(@10280)
EraseJournalEntry(@10290)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330)
EraseJournalEntry(@10340)
EraseJournalEntry(@10350)
EraseJournalEntry(@10360)
EraseJournalEntry(@10370)
EraseJournalEntry(@10380)
EraseJournalEntry(@10390)
EraseJournalEntry(@10400)
EraseJournalEntry(@10410)
EraseJournalEntry(@10420)
EraseJournalEntry(@10430)
EraseJournalEntry(@10440)
EraseJournalEntry(@10510)
Enemy()~
EXIT

CHAIN IF ~!Global("O#CrLynnBetrayed","GLOBAL",1) Global("O#CrLynnAmbushTalk","GLOBAL",1)~ THEN O#LYNN aBetrayed2
@22 
DO ~SetGlobal("O#CrLynnAmbushTalk","GLOBAL",2)
AddJournalEntry(@10080,QUEST_DONE)
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040)
EraseJournalEntry(@10050)
EraseJournalEntry(@10060)
EraseJournalEntry(@10070)
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130)
EraseJournalEntry(@10140)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170)
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)
EraseJournalEntry(@10200)
EraseJournalEntry(@10210)
EraseJournalEntry(@10220)
EraseJournalEntry(@10230)
EraseJournalEntry(@10240)
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270)
EraseJournalEntry(@10280)
EraseJournalEntry(@10290)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330)
EraseJournalEntry(@10340)
EraseJournalEntry(@10350)
EraseJournalEntry(@10360)
EraseJournalEntry(@10370)
EraseJournalEntry(@10380)
EraseJournalEntry(@10390)
EraseJournalEntry(@10400)
EraseJournalEntry(@10410)
EraseJournalEntry(@10420)
EraseJournalEntry(@10430)
EraseJournalEntry(@10440)
EraseJournalEntry(@10510)
Enemy()~
EXIT

CHAIN IF ~Global("O#CrLynnMet","GLOBAL",0) 
!Global("O#CrLynnBetrayed","GLOBAL",1) 
Global("O#CrLynnQuest","GLOBAL",0)
!See(Player2)
!See(Player3)
!See(Player4)
!See(Player5)
!See(Player6)~ THEN O#LYNN a1
@23 
DO ~SetGlobal("O#CrLynnMet","GLOBAL",1) 
EraseJournalEntry(@10000)~
END
++ @24 EXTERN O#LYNN a1.1
++ @25 EXTERN O#LYNN a1.0
++ @26 EXTERN O#LYNN a1.1

CHAIN O#LYNN a1.0
@27
END
IF ~~ EXTERN O#LYNN a1.1

CHAIN O#LYNN a1.1
@28
= @29
END
++ @30 EXTERN O#LYNN a1.2
++ @31 EXTERN O#LYNN a1.3
++ @32 EXTERN O#LYNN a1.3
++ @33 EXTERN O#LYNN a1.3
++ @34 EXTERN O#LYNN a1.4

CHAIN O#LYNN a1.2
@35
= @36
DO ~SetGlobal("O#CrTestQuest","GLOBAL",1) AddJournalEntry(@10530,QUEST) GiveGoldForce(3000) GiveItemCreate("O#CrSeal",Player1,1,0,0)~
EXIT

CHAIN O#LYNN a1.3
@37
END
++ @38 EXTERN O#LYNN a1.2
++ @39 EXTERN O#LYNN a1.4

CHAIN O#LYNN a1.4
@40
DO ~AddJournalEntry(@10520,QUEST_DONE)
EscapeArea()~
EXIT

// Fein

BEGIN O#CRFEIN

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRFEIN f1
@41
END
++ @42 EXTERN O#CRFEIN f1.1
++ @43 EXTERN O#CRFEIN f1.1
++ @44 EXTERN O#CRFEIN f1.2
++ @45 EXTERN O#CRFEIN f1.0

CHAIN O#CRFEIN f1.0
@46
EXIT

CHAIN O#CRFEIN f1.1
@47
END
+ ~PartyHasItem("O#CrSeal") PartyGoldGT(2999)~ + @48 EXTERN O#CRFEIN f1.3
++ @49 EXTERN O#CRFEIN f1.0
++ @50 EXTERN O#CRFEIN f1.0

CHAIN O#CRFEIN f1.2
@51
END
+ ~PartyHasItem("O#CrSeal") PartyGoldGT(2999)~ + @48 EXTERN O#CRFEIN f1.3
++ @52 EXTERN O#CRFEIN f1.0
++ @53 EXTERN O#CRFEIN f1.0

CHAIN O#CRFEIN f1.3
@54 
DO ~TakePartyItem("O#CrSeal") TakePartyGold(3000)~
END
IF ~Global("O#CrSealIsBroken","GLOBAL",1)~ EXTERN O#CRFEIN f1.4
IF ~!Global("O#CrSealIsBroken","GLOBAL",1)~ EXTERN O#CRFEIN f1.5

CHAIN O#CRFEIN f1.4
@55
DO ~SetGlobal("O#CrLynnAmbush","GLOBAL",1) 
EscapeArea()~
EXIT

CHAIN O#CRFEIN f1.5
@56
= @57
DO ~SetGlobal("O#CrSealIsNotBroken","GLOBAL",1)
EscapeArea()~
EXIT

CHAIN IF ~NumTimesTalkedToGT(0)~ THEN O#CRFEIN f2
@58
END
+ ~PartyHasItem("O#CrSeal") PartyGoldGT(2999)~ + @48 EXTERN O#CRFEIN f1.3
++ @59 EXTERN O#CRFEIN f2.0
++ @60 EXTERN O#CRFEIN f2.0

CHAIN O#CRFEIN f2.0
@61
EXIT

// The note

BEGIN O#CRSEAL

CHAIN IF ~True()~ THEN O#CRSEAL crseal1
@62
DO ~SetGlobal("O#CrSealIsBroken","GLOBAL",1)~
EXIT

// Lynn again

CHAIN IF ~Global("O#CrTestQuest","GLOBAL",1)~ THEN O#LYNN c1
@63 
END
+ ~Global("O#CrSealIsNotBroken","GLOBAL",1)~ + @64 EXTERN O#LYNN a1.5
++ @65 EXTERN O#LYNN c1.1
++ @66 EXTERN O#LYNN c1.2
+ ~Global("O#CrSealIsBroken","GLOBAL",1)~ + @67 EXTERN O#LYNN c1.2
+ ~Global("O#CrSealIsNotBroken","GLOBAL",0) PartyGoldLT(3000)~ + @68 EXTERN O#LYNN c1.3

CHAIN O#LYNN c1.1
@69
EXIT

CHAIN O#LYNN c1.2
@70
DO ~EraseJournalEntry(@10530)
AddJournalEntry(@10540,QUEST_DONE)
Enemy()~
EXIT

CHAIN O#LYNN c1.3
@71
EXIT

CHAIN O#LYNN a1.5
@72
DO ~EraseJournalEntry(@10530) SetGlobal("O#CrTestQuest","GLOBAL",2)~
== O#LYNN @73 
= @74
= @75
= @76
END
++ @77 EXTERN O#LYNN a1.7
++ @78 EXTERN O#LYNN a1.6
++ @79 EXTERN O#LYNN a1.Refuse

CHAIN O#LYNN a1.Refuse
@80
DO ~AddJournalEntry(@10010,QUEST_DONE) 
Enemy()~
EXIT

CHAIN O#LYNN a1.6
@81
= @82
END
++ @83 EXTERN O#LYNN a1.7
++ @84 EXTERN O#LYNN a1.Refuse

CHAIN O#LYNN a1.7
@85
= @86
= @87
END
++ @88 EXTERN O#LYNN a1.16
++ @89 EXTERN O#LYNN a1.Refuse
++ @90 EXTERN O#LYNN a1.16

CHAIN O#LYNN a1.16
@91
= @92
DO ~SetGlobal("O#CrLynnQuest","GLOBAL",1)
AddJournalEntry(@10020,QUEST)~
EXIT

// Lynn: Main body of conversation

CHAIN IF ~GlobalGT("O#CrLynnQuest","GLOBAL",0) 
!Global("O#CrLynnBetrayed","GLOBAL",1)
Global("O#CrLynnNineQuestsComplete","GLOBAL",0)
!See(Player2)
!See(Player3)
!See(Player4)
!See(Player5)
!See(Player6)~ THEN O#LYNN main0
@93
END
++ @94 EXTERN O#LYNN a0.NotYet
++ @95 EXTERN O#LYNN a0.How
+ ~Global("O#CrPlayerBhaal","GLOBAL",0)~ + @96 DO ~SetGlobal("O#CrPlayerBhaal","GLOBAL",1)~ EXTERN O#LYNN a0.Bhaal
+ ~!Dead("O#CrMel") Global("O#CrLynnQuest","GLOBAL",1)~ + @97 EXTERN O#LYNN a0.Refuse1
+ ~GlobalGT("O#CrLynnQuest","GLOBAL",1) GlobalLT("O#CrLynnQuest","GLOBAL",9) GlobalLT("O#CrLynnRefuse","GLOBAL",2)~ + @97 DO ~IncrementGlobal("O#CrLynnRefuse","GLOBAL",1)~ EXTERN O#LYNN a0.Refuse2
+ ~GlobalGT("O#CrLynnQuest","GLOBAL",1) GlobalLT("O#CrLynnQuest","GLOBAL",9) Global("O#CrLynnRefuse","GLOBAL",2)~ + @97 EXTERN O#LYNN a0.Refuse3

+ ~Dead("O#CrMel") Global("O#CrLynnQuest","GLOBAL",1)~ + @98 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",2) 
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040) 
EraseJournalEntry(@10050)~ EXTERN O#LYNN t1
+ ~!Dead("O#CrMel") Global("O#CrLynnLetGo1","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",1)~ + @98 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",2) 
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040) 
EraseJournalEntry(@10050)~ EXTERN O#LYNN t1.M
+ ~!Dead("O#CrMel") Global("O#CrLynnLetGo1","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",1)~ + @99 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",2) 
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040) 
EraseJournalEntry(@10050)~ EXTERN O#LYNN t1.letgo

+ ~Dead("O#CrNev") Global("O#CrLynnQuest","GLOBAL",2)~ + @100 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",3)
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130) 
EraseJournalEntry(@10140)~ EXTERN O#LYNN t2
+ ~!Dead("O#CrNev") Global("O#CrLynnLetGo2","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",2)~ + @100 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",3) 
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130) 
EraseJournalEntry(@10140)~ EXTERN O#LYNN t2.M
+ ~!Dead("O#CrNev") Global("O#CrLynnLetGo2","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",2)~ + @101 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",3) 
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130) 
EraseJournalEntry(@10140)~ EXTERN O#LYNN t2.letgo

+ ~Dead("O#CrAma") Global("O#CrLynnQuest","GLOBAL",3)~ + @102 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",30)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170) 
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)~ EXTERN O#LYNN t3
+ ~!Dead("O#CrAma") Global("O#CrLynnLetGo3","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",3)~ + @102 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",30)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170) 
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)~ EXTERN O#LYNN t3.M
+ ~!Dead("O#CrAma") Global("O#CrLynnLetGo3","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",3)~ + @103 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",30)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170) 
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)~ EXTERN O#LYNN t3.letgo

+ ~Global("O#CrLynnQuest","GLOBAL",30)~ + @104 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",4)
AddJournalEntry(@10200,QUEST)~ EXTERN O#LYNN task4
+ ~Global("O#CrLynnQuest","GLOBAL",40)~ + @104 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",5)
AddJournalEntry(@10250,QUEST)~ EXTERN O#LYNN task5
+ ~Global("O#CrLynnQuest","GLOBAL",50)~ + @104 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",6)
AddJournalEntry(@10300,QUEST)~ EXTERN O#LYNN task6

+ ~Dead("O#CrDat") Global("O#CrLynnQuest","GLOBAL",4)~ + @105 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",40)
EraseJournalEntry(@10200)
EraseJournalEntry(@10210)
EraseJournalEntry(@10220) 
EraseJournalEntry(@10230)
EraseJournalEntry(@10240)~ EXTERN O#LYNN t4

+ ~Dead("O#CrAle") Global("O#CrLynnQuest","GLOBAL",5)~ + @106 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",50)
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270) 
EraseJournalEntry(@10280) 
EraseJournalEntry(@10290)~ EXTERN O#LYNN t5
+ ~!Dead("O#CrAle") Global("O#CrLynnLetGo5","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",5)~ + @106 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",50) 
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270) 
EraseJournalEntry(@10280) 
EraseJournalEntry(@10290)~ EXTERN O#LYNN t5.M
+ ~!Dead("O#CrAle") Global("O#CrLynnLetGo5","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",5)~ + @107 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",50) 
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270) 
EraseJournalEntry(@10280) 
EraseJournalEntry(@10290)~ EXTERN O#LYNN t5.M

+ ~Dead("O#CrStee") Global("O#CrLynnBlackLotus","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",6)~ + @108 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",60)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330) 
EraseJournalEntry(@10340)~ EXTERN O#LYNN t6.1
+ ~Dead("O#CrStee") Global("O#CrLynnBlackLotus","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",6)~ + @109 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",60)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330) 
EraseJournalEntry(@10340)
EraseJournalEntry(@10510)~ EXTERN O#LYNN t6.2

+ ~Global("O#CrLynnQuest","GLOBAL",60)~ + @104 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",7)~ EXTERN O#LYNN t6.Nothing

+ ~Dead("O#CrQyr") PartyHasItem("O#CrPap1") Global("O#CrLynnQuest","GLOBAL",7)~ + @110 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",70)
EraseJournalEntry(@10350)
EraseJournalEntry(@10360) 
EraseJournalEntry(@10370)~ EXTERN O#LYNN t7

+ ~Dead("O#CrTea") Dead("O#CrGan") Global("O#CrLynnQuest","GLOBAL",8)~ + @111 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",80)
EraseJournalEntry(@10380)
EraseJournalEntry(@10390) 
EraseJournalEntry(@10410)~ EXTERN O#LYNN t8
+ ~!Dead("O#CrTea") !Dead("O#CrGan") Global("O#CrLynnLetGo8","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",8)~ + @111 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",80) 
EraseJournalEntry(@10380)
EraseJournalEntry(@10390) 
EraseJournalEntry(@10400)~ EXTERN O#LYNN t8.M
+ ~!Dead("O#CrTea") !Dead("O#CrGan") Global("O#CrLynnLetGo8","GLOBAL",1) Global("O#CrLynnQuest","GLOBAL",8)~ + @112 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",80) 
EraseJournalEntry(@10380)
EraseJournalEntry(@10390) 
EraseJournalEntry(@10400)~ EXTERN O#LYNN t8.letgo

+ ~Dead("O#CrKern") Global("O#CrLynnQuest","GLOBAL",9)~ + @113 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",100)
EraseJournalEntry(@10420)
EraseJournalEntry(@10430)
EraseJournalEntry(@10440)~ EXTERN O#LYNN t9

+ ~Global("O#CrLynnQuest","GLOBAL",70)~ + @114 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",8)~ EXTERN O#LYNN task8
+ ~Global("O#CrLynnQuest","GLOBAL",80)~ + @114 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",9)~ EXTERN O#LYNN task9

+ ~Global("O#CrLynnQuest","GLOBAL",1) Global("O#CrLynnTalks","GLOBAL",0) Gender(Player1,MALE)~ + @115 EXTERN O#LYNN t0
+ ~Global("O#CrLynnQuest","GLOBAL",1) Global("O#CrLynnTalks","GLOBAL",0) Gender(Player1,MALE)~ + @116 EXTERN O#LYNN t0

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",1) Global("O#CrLynnTalks","GLOBAL",0) Gender(Player1,MALE)~ + @117 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",1)~ EXTERN O#LYNN b1

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",1) Global("O#CrLynnTalks","GLOBAL",1)~ + @118 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",2)~ EXTERN O#LYNN b2

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",2) Global("O#CrLynnTalks","GLOBAL",2)~ + @119 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",3)~ EXTERN O#LYNN b3

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",2) Global("O#CrLynnTalks","GLOBAL",3)~ + @120 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",4)~ EXTERN O#LYNN b4

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",3) Global("O#CrLynnTalks","GLOBAL",4)~ + @121 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",5)~ EXTERN O#LYNN b5

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",4) 
!Global("O#CrLynnQuest","GLOBAL",30) 
Global("O#CrLynnTalks","GLOBAL",5)~ + @122 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",6)~ EXTERN O#LYNN b6

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",5) 
!Global("O#CrLynnQuest","GLOBAL",30)
!Global("O#CrLynnQuest","GLOBAL",40)
Global("O#CrLynnTalks","GLOBAL",6)~ + @123 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",7)~ EXTERN O#LYNN b7

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",6) 
!Global("O#CrLynnQuest","GLOBAL",30)
!Global("O#CrLynnQuest","GLOBAL",40)
!Global("O#CrLynnQuest","GLOBAL",50)
Global("O#CrLynnTalks","GLOBAL",7)~ + @124 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",8)~ EXTERN O#LYNN b8

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",7) 
!Global("O#CrLynnQuest","GLOBAL",30)
!Global("O#CrLynnQuest","GLOBAL",40)
!Global("O#CrLynnQuest","GLOBAL",50)
!Global("O#CrLynnQuest","GLOBAL",60)
Global("O#CrLynnTalks","GLOBAL",8)~ + @125 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",9)~ EXTERN O#LYNN b9

+ ~GlobalGT("O#CrLynnQuest","GLOBAL",8) 
!Global("O#CrLynnQuest","GLOBAL",30)
!Global("O#CrLynnQuest","GLOBAL",40)
!Global("O#CrLynnQuest","GLOBAL",50)
!Global("O#CrLynnQuest","GLOBAL",60)
!Global("O#CrLynnQuest","GLOBAL",70)
Global("O#CrLynnTalks","GLOBAL",9)~ + @126 DO ~SetGlobal("O#CrLynnTalks","GLOBAL",10)~ EXTERN O#LYNN b10

++ @127 EXTERN O#LYNN a0.Bye
++ @128 EXTERN O#LYNN a0.Break

// Talks with Lynn

CHAIN O#LYNN a0.Bhaal
@129
= @130
EXIT

// Banter 1

CHAIN O#LYNN b1
@131
END
++ @132 EXTERN O#LYNN b1.1
++ @133 EXTERN O#LYNN b1.2
++ @134 EXTERN O#LYNN b1.3

CHAIN O#LYNN b1.1
@135
END
IF ~~ EXTERN O#LYNN b1.4

CHAIN O#LYNN b1.2
@136
END
IF ~~ EXTERN O#LYNN b1.4

CHAIN O#LYNN b1.3
@137
EXIT

CHAIN O#LYNN b1.4
@138
END
++ @139 EXTERN O#LYNN b1.5
++ @140 EXTERN O#LYNN b1.5
++ @141 EXTERN O#LYNN b1.6

CHAIN O#LYNN b1.5
@142
= @143
END
IF ~~ EXTERN O#LYNN b1.7

CHAIN O#LYNN b1.6
@144
EXIT

CHAIN O#LYNN b1.7
@145
END
++ @146 EXTERN O#LYNN b1.8
++ @147 EXTERN O#LYNN b1.8
++ @148 EXTERN O#LYNN b1.8

CHAIN O#LYNN b1.8
@149
= @150
EXIT

// Banter 2

CHAIN O#LYNN b2
@151
= @152
END
++ @153 EXTERN O#LYNN b2.1
++ @154 EXTERN O#LYNN b2.2
++ @155 EXTERN O#LYNN b2.2

CHAIN O#LYNN b2.1
@156
END
IF ~~ EXTERN O#LYNN b2.2

CHAIN O#LYNN b2.2
@157
END
++ @158 EXTERN O#LYNN b2.3
++ @159 EXTERN O#LYNN b2.4
++ @160 EXTERN O#LYNN b2.5
++ @161 EXTERN O#LYNN b2.6

CHAIN O#LYNN b2.3
@162
EXIT

CHAIN O#LYNN b2.4
@163
EXIT

CHAIN O#LYNN b2.5
@164
EXIT

CHAIN O#LYNN b2.6
@165
EXIT

// Banter 3

CHAIN O#LYNN b3
@166
END
++ @167 EXTERN O#LYNN b3.1
++ @168 EXTERN O#LYNN b3.1
++ @169 EXTERN O#LYNN b3.1

CHAIN O#LYNN b3.1
@170
= @171
END
++ @172 EXTERN O#LYNN b3.2
++ @173 EXTERN O#LYNN b3.3
++ @174 EXTERN O#LYNN b3.4

CHAIN O#LYNN b3.2
@175
= @176
EXIT

CHAIN O#LYNN b3.3
@177
EXIT

CHAIN O#LYNN b3.4
@178
= @179
EXIT

// Banter 4

CHAIN O#LYNN b4
@180
END
++ @181 EXTERN O#LYNN b4.0
++ @182 EXTERN O#LYNN b4.1
++ @183 EXTERN O#LYNN b4.0
++ @184 EXTERN O#LYNN b4.1

CHAIN O#LYNN b4.0
@185
END
IF ~~ EXTERN O#LYNN b4.1

CHAIN O#LYNN b4.1
@186
= @187
END
++ @188 EXTERN O#LYNN b4.2
++ @189 EXTERN O#LYNN b4.2
++ @190 EXTERN O#LYNN b4.3
++ @191 EXTERN O#LYNN b4.4

CHAIN O#LYNN b4.2
@192
END
IF ~~ EXTERN O#LYNN b4.5

CHAIN O#LYNN b4.3
@193
END
IF ~~ EXTERN O#LYNN b4.5

CHAIN O#LYNN b4.4
@194
= @195
END
IF ~~ EXTERN O#LYNN b4.5

CHAIN O#LYNN b4.5
@196
EXIT

// Banter 5

CHAIN O#LYNN b5
@197
END
++ @198 EXTERN O#LYNN b5.1
++ @199 EXTERN O#LYNN b5.1
++ @200 EXTERN O#LYNN b5.1
++ @201 EXTERN O#LYNN b5.1
++ @202 EXTERN O#LYNN b5.1

CHAIN O#LYNN b5.1
@203 
= @204
= @205
END
++ @206 EXTERN O#LYNN b5.2
++ @207 EXTERN O#LYNN b5.3
++ @208 EXTERN O#LYNN b5.4

CHAIN O#LYNN b5.2
@209
END
IF ~~ EXTERN O#LYNN b5.4

CHAIN O#LYNN b5.3
@210
= @211
= @212
END
IF ~~ EXTERN O#LYNN b5.4

CHAIN O#LYNN b5.4
@213
= @214
= @215
= @216
= @217
= @218
= @219
= @220
END
++ @221 EXTERN O#LYNN b5.5 
++ @222 EXTERN O#LYNN b5.6
++ @223 EXTERN O#LYNN b5.7

CHAIN O#LYNN b5.5
@224
EXIT

CHAIN O#LYNN b5.6
@225
EXIT

CHAIN O#LYNN b5.7
@226
EXIT

// Banter 6

CHAIN O#LYNN b6
@227
= @228
END
++ @229 EXTERN O#LYNN b6.1
++ @230 EXTERN O#LYNN b6.1
++ @231 EXTERN O#LYNN b6.2
++ @232 EXTERN O#LYNN b6.0

CHAIN O#LYNN b6.0
@233
EXIT

CHAIN O#LYNN b6.1
@234
END
++ @235 EXTERN O#LYNN b6.3
++ @236 EXTERN O#LYNN b6.4
++ @237 EXTERN O#LYNN b6.5
++ @238 EXTERN O#LYNN b6.6
++ @239 EXTERN O#LYNN b6.7
++ @240 EXTERN O#LYNN b6.8
++ @241 EXTERN O#LYNN b6.9
++ @242 EXTERN O#LYNN b6.10
++ @243 EXTERN O#LYNN b6.11

CHAIN O#LYNN b6.2
@244
END
IF ~~ EXTERN O#LYNN b6.1

CHAIN O#LYNN b6.3
@245
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.4
@246
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.5
@247
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.6
@248
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.7
@249
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.8
@250
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.9
@251
= @252
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.10
@253
= @254
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.11
@255
= @256
END
IF ~~ EXTERN O#LYNN b6.12

CHAIN O#LYNN b6.12
@257
= @258
EXIT

// Banter 7

CHAIN O#LYNN b7
@259
END
++ @260 EXTERN O#LYNN b7.0
++ @261 EXTERN O#LYNN b7.0
++ @262 EXTERN O#LYNN b7.0

CHAIN O#LYNN b7.0
@263
= @264
= @265
END
++ @266 EXTERN O#LYNN b7.1
++ @267 EXTERN O#LYNN b7.2
++ @268 EXTERN O#LYNN b7.3

CHAIN O#LYNN b7.1
@269
EXIT

CHAIN O#LYNN b7.2
@270
EXIT

CHAIN O#LYNN b7.3
@271
EXIT

// Banter 8

CHAIN O#LYNN b8
@272
END
++ @273 EXTERN O#LYNN b8.0
++ @274 EXTERN O#LYNN b8.0
++ @275 EXTERN O#LYNN b8.0

CHAIN O#LYNN b8.0
@276
= @277
END
++ @278 EXTERN O#LYNN b8.1
++ @279 EXTERN O#LYNN b8.2
++ @280 EXTERN O#LYNN b8.3

CHAIN O#LYNN b8.1
@281
END
IF ~~ EXTERN O#LYNN b8.4

CHAIN O#LYNN b8.2
@282
END
IF ~~ EXTERN O#LYNN b8.4

CHAIN O#LYNN b8.3
@283
END
IF ~~ EXTERN O#LYNN b8.4

CHAIN O#LYNN b8.4
@284
= @285
= @286
END
++ @287 EXTERN O#LYNN b8.5
++ @288 EXTERN O#LYNN b8.5a
++ @289 EXTERN O#LYNN b8.5

CHAIN O#LYNN b8.5a
@290
END
IF ~~ EXTERN O#LYNN b8.5

CHAIN O#LYNN b8.5
@291
= @292
END
+ ~NumInPartyLT(2)~ + @293 EXTERN O#LYNN b8.6
++ @294 EXTERN O#LYNN b8.7
++ @295 EXTERN O#LYNN b8.8
++ @296 EXTERN O#LYNN b8.9
++ @297 EXTERN O#LYNN b8.7
++ @298 EXTERN O#LYNN b8.9

CHAIN O#LYNN b8.6
@299
END
++ @300 EXTERN O#LYNN b8.7
++ @301 EXTERN O#LYNN b8.7
++ @302 EXTERN O#LYNN b8.9

CHAIN O#LYNN b8.7
@303
END
IF ~~ EXTERN O#LYNN b8.11

CHAIN O#LYNN b8.8
@304
END
++ @305 EXTERN O#LYNN b8.11
++ @306 EXTERN O#LYNN b8.10
++ @307 EXTERN O#LYNN b8.11

CHAIN O#LYNN b8.9
@308
END
++ @309 EXTERN O#LYNN b8.11
++ @310 EXTERN O#LYNN b8.11
++ @311 EXTERN O#LYNN b8.10

CHAIN O#LYNN b8.10
@312
= @313
= @314
END
++ @315 EXTERN O#LYNN b8.10a
++ @316 EXTERN O#LYNN b8.10b
++ @317 EXTERN O#LYNN b8.10c
++ @318 EXTERN O#LYNN b8.10d

CHAIN O#LYNN b8.10a
@319
END
IF ~~ EXTERN O#LYNN b8.10z

CHAIN O#LYNN b8.10b
@320
END
IF ~~ EXTERN O#LYNN b8.10z

CHAIN O#LYNN b8.10c
@321
END
IF ~~ EXTERN O#LYNN b8.10z

CHAIN O#LYNN b8.10d
@322
END
IF ~~ EXTERN O#LYNN b8.10z

CHAIN O#LYNN b8.10z
@323
EXIT

CHAIN O#LYNN b8.11
@324
= @325
END
++ @326 EXTERN O#LYNN b8.12
++ @327 EXTERN O#LYNN b8.13
++ @328 EXTERN O#LYNN b8.14

CHAIN O#LYNN b8.12
@329
END
IF ~~ EXTERN O#LYNN b8.15

CHAIN O#LYNN b8.13
@330
END
IF ~~ EXTERN O#LYNN b8.15

CHAIN O#LYNN b8.14
@331
DO ~SetGlobal("O#CrLynnTalks","GLOBAL",100)~ 
EXIT

CHAIN O#LYNN b8.15
@332
= @333
END
++ @334 EXTERN O#LYNN b8.16
++ @335 EXTERN O#LYNN b8.17
++ @336 EXTERN O#LYNN b8.19

CHAIN O#LYNN b8.16
@337
END
IF ~~ EXTERN O#LYNN b8.18

CHAIN O#LYNN b8.17
@338
END
IF ~~ EXTERN O#LYNN b8.18

CHAIN O#LYNN b8.18
@339
END
++ @340 EXTERN O#LYNN b8.19
++ @341 EXTERN O#LYNN b8.19
++ @342 EXTERN O#LYNN b8.20
++ @343 EXTERN O#LYNN b8.14

CHAIN O#LYNN b8.19
@344
DO ~SetGlobal("O#LynnRomantic","GLOBAL",1)~ 
== O#LYNN @345
== O#LYNN @346
END
++ @347 EXTERN O#LYNN b8.20
++ @348 EXTERN O#LYNN b8.20
++ @349 EXTERN O#LYNN b8.20
++ @350 EXTERN O#LYNN b8.20

CHAIN O#LYNN b8.20
@351
= @352
END
++ @353 EXTERN O#LYNN b8.21
++ @354 EXTERN O#LYNN b8.21
++ @355 EXTERN O#LYNN b8.21

CHAIN O#LYNN b8.21
@356
END
++ @357 EXTERN O#LYNN b8.22
++ @358 EXTERN O#LYNN b8.23
++ @359 EXTERN O#LYNN b8.24

CHAIN O#LYNN b8.22
@360
END
IF ~~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieRomantic","GLOBAL",1)~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnJaheiraRomantic","GLOBAL",1)~ EXIT
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnViconiaRomantic","GLOBAL",1)~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieRomantic","GLOBAL",1) SetGlobal("O#LynnJaheiraRomantic","GLOBAL",1)~ EXIT
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieRomantic","GLOBAL",1) SetGlobal("O#LynnViconiaRomantic","GLOBAL",1)~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnJaheiraRomantic","GLOBAL",1) SetGlobal("O#LynnViconiaRomantic","GLOBAL",1)~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieRomantic","GLOBAL",1) SetGlobal("O#LynnJaheiraRomantic","GLOBAL",1) 
SetGlobal("O#LynnViconiaRomantic","GLOBAL",1)~ EXIT


CHAIN O#LYNN b8.23
@361
= @362
END
IF ~~ EXTERN O#LYNN b8.22

CHAIN O#LYNN b8.24
@363
END
IF ~~ EXTERN O#LYNN b8.22

// Banter 9

CHAIN O#LYNN b9
@364
= @365
END
++ @366 EXTERN O#LYNN b9.1
++ @367 EXTERN O#LYNN b9.2
++ @368 EXTERN O#LYNN b9.3

CHAIN O#LYNN b9.1
@369
END
IF ~~ EXTERN O#LYNN b9.4

CHAIN O#LYNN b9.2
@370
END
IF ~~ EXTERN O#LYNN b9.4

CHAIN O#LYNN b9.3
@371
END
IF ~~ EXTERN O#LYNN b9.4

CHAIN O#LYNN b9.4
@372
= @373
= @374
END
++ @375 EXTERN O#LYNN b9.4a
++ @376 EXTERN O#LYNN b9.4b
++ @377 EXTERN O#LYNN b9.4b

CHAIN O#LYNN b9.4a
@378
END
IF ~~ EXTERN O#LYNN b9.4b

CHAIN O#LYNN b9.4b
@379
END
++ @380 EXTERN O#LYNN b9.5
++ @381 EXTERN O#LYNN b9.6
++ @382 EXTERN O#LYNN b9.9
++ @383 EXTERN O#LYNN b9.7
++ @384 EXTERN O#LYNN b9.8

CHAIN O#LYNN b9.5
@385
END
++ @386 EXTERN O#LYNN b9.10
++ @387 EXTERN O#LYNN b9.9
++ @388 EXTERN O#LYNN b9.9
++ @389 EXTERN O#LYNN b9.10

CHAIN O#LYNN b9.6
@390
END
IF ~~ EXTERN O#LYNN b9.5

CHAIN O#LYNN b9.7
@391
END
IF ~~ EXTERN O#LYNN b9.5

CHAIN O#LYNN b9.8
@392
END
IF ~~ EXTERN O#LYNN b9.5

CHAIN O#LYNN b9.9
@393
= @394
END
++ @395 EXTERN O#LYNN b9.12
++ @396 EXTERN O#LYNN b9.12
++ @397 EXTERN O#LYNN b9.11
++ @398 EXTERN O#LYNN b9.11

CHAIN O#LYNN b9.10
@399
EXIT

CHAIN O#LYNN b9.11
@400
EXIT

CHAIN O#LYNN b9.12
@401
END
++ @402 EXTERN O#LYNN b9.13
++ @403 EXTERN O#LYNN b9.13
++ @404 EXTERN O#LYNN b9.13
++ @405 EXTERN O#LYNN b9.13
++ @406 EXTERN O#LYNN b9.11

CHAIN O#LYNN b9.13
@407
END
+ ~OR(2) CheckStatGT(Player1,9,WIS) CheckStatGT(Player1,9,INT)~ + @408 EXTERN O#LYNN b9.14
+ ~OR(2) CheckStatGT(Player1,9,WIS) CheckStatGT(Player1,9,INT)~ + @409 EXTERN O#LYNN b9.14
++ @410 EXTERN O#LYNN b9.14
++ @411 EXTERN O#LYNN b9.15
++ @412 EXTERN O#LYNN b9.15
++ @413 EXTERN O#LYNN b9.16

CHAIN O#LYNN b9.14
@414
END
++ @415 EXTERN O#LYNN b9.17
++ @416 EXTERN O#LYNN b9.18
++ @417 EXTERN O#LYNN b9.19

CHAIN O#LYNN b9.15
@418
END
IF ~~ EXTERN O#LYNN b9.12

CHAIN O#LYNN b9.16
@419
END
IF ~~ EXTERN O#LYNN b9.12

CHAIN O#LYNN b9.17
@420
EXIT

CHAIN O#LYNN b9.18
@421 
EXIT

CHAIN O#LYNN b9.19
@422
EXIT

// Banter 10

CHAIN O#LYNN b10
@423
END
++ @424 EXTERN O#LYNN b10.1
++ @425 EXTERN O#LYNN b10.2
++ @426 EXTERN O#LYNN b10.3
++ @427 EXTERN O#LYNN b10.4

CHAIN O#LYNN b10.1
@428
END
IF ~~ EXTERN O#LYNN b10.5

CHAIN O#LYNN b10.2
@429
END
IF ~~ EXTERN O#LYNN b10.5

CHAIN O#LYNN b10.3
@430
END
IF ~~ EXTERN O#LYNN b10.5

CHAIN O#LYNN b10.4
@431
END
IF ~~ EXTERN O#LYNN b10.5

CHAIN O#LYNN b10.5
@432
= @433
END
++ @434 EXTERN O#LYNN b10.6
++ @435 EXTERN O#LYNN b10.6
++ @436 EXTERN O#LYNN b10.6
++ @437 EXTERN O#LYNN b10.7

CHAIN O#LYNN b10.6
@438
EXIT

CHAIN O#LYNN b10.7
@439
EXIT

// General replies

CHAIN O#LYNN a0.Refuse1
@440
EXIT

CHAIN O#LYNN a0.Refuse2
@441
END
IF ~Global("O#CrLynnQuest","GLOBAL",2)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130)
EraseJournalEntry(@10140)~ EXTERN O#LYNN task3
IF ~Global("O#CrLynnQuest","GLOBAL",3)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170)
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)~ EXTERN O#LYNN task4
IF ~Global("O#CrLynnQuest","GLOBAL",4)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10200)
EraseJournalEntry(@10210)
EraseJournalEntry(@10220)
EraseJournalEntry(@10230)
EraseJournalEntry(@10240)~ EXTERN O#LYNN task5
IF ~Global("O#CrLynnQuest","GLOBAL",5)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270)
EraseJournalEntry(@10280)
EraseJournalEntry(@10290)~ EXTERN O#LYNN task6
IF ~Global("O#CrLynnQuest","GLOBAL",6)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330)
EraseJournalEntry(@10340)
EraseJournalEntry(@10510)~ EXTERN O#LYNN task7
IF ~Global("O#CrLynnQuest","GLOBAL",7)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10350)
EraseJournalEntry(@10360)
EraseJournalEntry(@10370)~ EXTERN O#LYNN task8
IF ~Global("O#CrLynnQuest","GLOBAL",8)~ DO ~IncrementGlobal("O#CrLynnQuest","GLOBAL",1)
EraseJournalEntry(@10380)
EraseJournalEntry(@10390)
EraseJournalEntry(@10400)
EraseJournalEntry(@10410)~ EXTERN O#LYNN task9

CHAIN O#LYNN a0.Refuse3
@442
END
++ @443 EXTERN O#LYNN a0.Refuse4
++ @444 EXTERN O#LYNN a0.Break

CHAIN O#LYNN a0.Refuse4
@445
EXIT

CHAIN O#LYNN a0.How
@446
= @447
EXIT

CHAIN O#LYNN a0.NotYet
@448
EXIT

CHAIN O#LYNN a0.Bye
@341
EXIT

CHAIN O#LYNN a0.Break
@449
DO ~SetGlobal("O#CrLynnAmbush","GLOBAL",1) 
AddJournalEntry(@10090,QUEST_DONE)
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040)
EraseJournalEntry(@10050)
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130)
EraseJournalEntry(@10140)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170)
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)
EraseJournalEntry(@10200)
EraseJournalEntry(@10210)
EraseJournalEntry(@10220)
EraseJournalEntry(@10230)
EraseJournalEntry(@10240)
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270)
EraseJournalEntry(@10280)
EraseJournalEntry(@10290)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330)
EraseJournalEntry(@10340)
EraseJournalEntry(@10350)
EraseJournalEntry(@10360)
EraseJournalEntry(@10370)
EraseJournalEntry(@10380)
EraseJournalEntry(@10390)
EraseJournalEntry(@10400)
EraseJournalEntry(@10410)
EraseJournalEntry(@10420)
EraseJournalEntry(@10430)
EraseJournalEntry(@10440)
EraseJournalEntry(@10510)
EscapeArea()~
EXIT

CHAIN O#LYNN a0.Mercy
@450
DO ~SetGlobal("O#CrLynnAmbush","GLOBAL",1) 
AddJournalEntry(@10100,QUEST_DONE)
EraseJournalEntry(@10020)
EraseJournalEntry(@10030)
EraseJournalEntry(@10040)
EraseJournalEntry(@10050)
EraseJournalEntry(@10110)
EraseJournalEntry(@10120)
EraseJournalEntry(@10130)
EraseJournalEntry(@10140)
EraseJournalEntry(@10150)
EraseJournalEntry(@10160)
EraseJournalEntry(@10170)
EraseJournalEntry(@10180)
EraseJournalEntry(@10190)
EraseJournalEntry(@10200)
EraseJournalEntry(@10210)
EraseJournalEntry(@10220)
EraseJournalEntry(@10230)
EraseJournalEntry(@10240)
EraseJournalEntry(@10250)
EraseJournalEntry(@10260)
EraseJournalEntry(@10270)
EraseJournalEntry(@10280)
EraseJournalEntry(@10290)
EraseJournalEntry(@10300)
EraseJournalEntry(@10310)
EraseJournalEntry(@10320)
EraseJournalEntry(@10330)
EraseJournalEntry(@10340)
EraseJournalEntry(@10350)
EraseJournalEntry(@10360)
EraseJournalEntry(@10370)
EraseJournalEntry(@10380)
EraseJournalEntry(@10390)
EraseJournalEntry(@10400)
EraseJournalEntry(@10410)
EraseJournalEntry(@10420)
EraseJournalEntry(@10430)
EraseJournalEntry(@10440)
EraseJournalEntry(@10510)
EscapeArea()~
EXIT

CHAIN O#LYNN t0
@451
EXIT

// Task 1 is complete

CHAIN O#LYNN t1
@452
DO ~GiveGoldForce(1000)~
END
IF ~~ EXTERN O#LYNN task2

CHAIN O#LYNN t1.M
@453
END
IF ~~ EXTERN O#LYNN t1.M1

CHAIN O#LYNN t1.M1
@454
= @455
END
IF ~~ EXTERN O#LYNN task2

CHAIN O#LYNN t1.letgo
@456
END
IF ~~ EXTERN O#LYNN t1.M1

// Task 2.

CHAIN O#LYNN task2
@457 
DO ~AddJournalEntry(@10110,QUEST)~
END
++ @458 EXTERN O#LYNN task2.1
++ @459 EXTERN O#LYNN task2.2
++ @460 EXTERN O#LYNN task2.3
++ @461 EXTERN O#LYNN a0.Break

CHAIN O#LYNN task2.1
@462
EXIT

CHAIN O#LYNN task2.2
@463
EXIT

CHAIN O#LYNN task2.3
@464
EXIT

// Task 2 is complete

CHAIN O#LYNN t2
@465
DO ~GiveGoldForce(1500)~
END
IF ~~ EXTERN O#LYNN task3

CHAIN O#LYNN t2.M
@466
END
IF ~!Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN t2.M1
IF ~Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN a0.Mercy

CHAIN O#LYNN t2.M1
@467
END
IF ~~ EXTERN O#LYNN task3

CHAIN O#LYNN t2.letgo
@468
END
IF ~!Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN t2.M1
IF ~Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN a0.Mercy

// Task 3.

CHAIN O#LYNN task3
@469
DO ~AddJournalEntry(@10150,QUEST)~
= @470
END
++ @471 EXTERN O#LYNN task3.1
++ @472 EXTERN O#LYNN task3.2
++ @473 EXTERN O#LYNN task3.3
+ ~GlobalLT("O#CrLynnRefuse","GLOBAL",2)~ + @97 DO ~IncrementGlobal("O#CrLynnRefuse","GLOBAL",1)~ EXTERN O#LYNN a0.Refuse2
++ @474 EXTERN O#LYNN a0.Break

CHAIN O#LYNN task3.1
@475
EXIT

CHAIN O#LYNN task3.2
@476
EXIT

CHAIN O#LYNN task3.3
@477
EXIT

// Task 3 is complete.

CHAIN O#LYNN t3
@478
DO ~GiveGoldForce(2000)~
END
IF ~~ EXTERN O#LYNN before.task4

CHAIN O#LYNN t3.M
@479
END
IF ~!Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN t3.M1
IF ~Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN a0.Mercy

CHAIN O#LYNN t3.M1
@480
== O#LYNN @481
== O#LYNN IF ~Gender(Player1,MALE)~ THEN @482
EXIT

CHAIN O#LYNN before.task4
@483
== O#LYNN IF ~Gender(Player1,MALE)~ THEN @482
EXIT

CHAIN O#LYNN t3.letgo
@484
END
IF ~!Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN t3.M1
IF ~Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN a0.Mercy

// Task 4.

CHAIN O#LYNN task4
@485
END
++ @486 EXTERN O#LYNN task4.1
++ @487 EXTERN O#LYNN task4.2
++ @488 EXTERN O#LYNN task4.3
++ @489 EXTERN O#LYNN task4.4

CHAIN O#LYNN task4.1
@490
END
IF ~~ EXTERN O#LYNN task4.5

CHAIN O#LYNN task4.2
@491
END
IF ~~ EXTERN O#LYNN task4.5

CHAIN O#LYNN task4.3
@492
END
IF ~~ EXTERN O#LYNN task4.5

CHAIN O#LYNN task4.4
@159
END
IF ~~ EXTERN O#LYNN task4.5

CHAIN O#LYNN task4.5
@493
END
++ @494 EXTERN O#LYNN task4.7
++ @495 EXTERN O#LYNN task4.6
++ @496 EXTERN O#LYNN task4.8
++ @497 EXTERN O#LYNN task4.9

CHAIN O#LYNN task4.6
@498
END
IF ~~ EXTERN O#LYNN task4.7

CHAIN O#LYNN task4.7
@499
END
IF ~~ EXTERN O#LYNN task4.9

CHAIN O#LYNN task4.8
@500
= @501
END
IF ~~ EXTERN O#LYNN task4.9

CHAIN O#LYNN task4.9
@502
EXIT

// Task 4 is complete.

CHAIN O#LYNN t4
@503
DO ~GiveGoldForce(2500)~
END
IF ~~ EXTERN O#LYNN t4.1

CHAIN O#LYNN t4.1
@504
END
++ @505 EXTERN O#LYNN t4.2
++ @506 EXTERN O#LYNN t4.3
++ @507 DO ~SetGlobal("O#CrLynnQuest","GLOBAL",5) AddJournalEntry(@10250,QUEST)~ EXTERN O#LYNN task5
++ @508 EXTERN O#LYNN t4.4

CHAIN O#LYNN t4.2
@509
EXIT

CHAIN O#LYNN t4.3
@510
EXIT

CHAIN O#LYNN t4.4
@511
EXIT

// Task 5.

CHAIN O#LYNN task5
@512
= @513
END
++ @514 EXTERN O#LYNN task5.1
++ @515 EXTERN O#LYNN task5.2

CHAIN O#LYNN task5.1
@516
== O#LYNN IF ~Gender(Player1,MALE)~ THEN @517
EXIT

CHAIN O#LYNN task5.2
@518
== O#LYNN IF ~Gender(Player1,MALE)~ THEN @517
EXIT

// Task 5 is complete.

CHAIN O#LYNN t5
@519
= @520
DO ~GiveGoldForce(3000)~
END
IF ~~ EXTERN O#LYNN t5.1

CHAIN O#LYNN t5.M
@521
END
IF ~!Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN t5.M1
IF ~Global("O#CrLynnMercy","GLOBAL",2)~ EXTERN O#LYNN a0.Mercy

CHAIN O#LYNN t5.M1
@522
END
IF ~~ EXTERN O#LYNN t5.1

CHAIN O#LYNN t5.1
@523
EXIT

// Task 6.

CHAIN O#LYNN task6
@524
END
++ @525 EXTERN O#LYNN task6.1
++ @526 EXTERN O#LYNN task6.2
++ @527 EXTERN O#LYNN task6.3
++ @528 EXTERN O#LYNN task6.4

CHAIN O#LYNN task6.1
@529
END
IF ~~ EXTERN O#LYNN task6.5

CHAIN O#LYNN task6.2
@530
END
IF ~~ EXTERN O#LYNN task6.5

CHAIN O#LYNN task6.3
@531
END
IF ~~ EXTERN O#LYNN task6.5

CHAIN O#LYNN task6.4
@532
END
IF ~~ EXTERN O#LYNN task6.5

CHAIN O#LYNN task6.5
@533
= @534
EXIT

// Task 6 is complete.

CHAIN O#LYNN t6.1
@535
DO ~GiveGoldForce(1000)~
END
IF ~Gender(Player1,MALE)~ EXTERN O#LYNN t6.3
IF ~Gender(Player1,FEMALE)~ EXTERN O#LYNN t6.4

CHAIN O#LYNN t6.2
@536
DO ~GiveGoldForce(2000)~
END
IF ~Gender(Player1,MALE)~ EXTERN O#LYNN t6.3
IF ~Gender(Player1,FEMALE)~ EXTERN O#LYNN t6.4

CHAIN O#LYNN t6.3
@537
END
IF ~~ EXTERN O#LYNN t6.4

CHAIN O#LYNN t6.4
@538
EXIT

// Task 7.

CHAIN O#LYNN t6.Nothing
@539
= @540
END
IF ~~ EXTERN O#LYNN task7

CHAIN O#LYNN task7
@541
= @542
= @543
END
++ @544 EXTERN O#LYNN task7.1
++ @545 EXTERN O#LYNN task7.2

CHAIN O#LYNN task7.1
@546
= @547
DO ~SetGlobal("O#CrLynnQuest","GLOBAL",7) AddJournalEntry(@10350,QUEST)~
EXIT

CHAIN O#LYNN task7.2
@548
DO ~SetGlobal("O#CrLynnQuest","GLOBAL",70)~
EXIT

// Task 7 is complete.

CHAIN O#LYNN t7
@549
= @550
DO ~TakePartyItem("O#CrPap1") GiveGoldForce(4000)~
= @551
EXIT

// Task 8.

CHAIN O#LYNN task8
@552
= @553
= @554
= @555
DO ~AddJournalEntry(@10380,QUEST)~
EXIT

// Task 8 is complete.

CHAIN O#LYNN t8
@556
DO ~GiveGoldForce(5000)~
END
++ @557 EXTERN O#LYNN t8.1
++ @558 EXTERN O#LYNN t8.2
++ @415 EXTERN O#LYNN t8.3

CHAIN O#LYNN t8.1
@559
END
IF ~~ EXTERN O#LYNN t8.3

CHAIN O#LYNN t8.2
@560
END
IF ~~ EXTERN O#LYNN t8.3

CHAIN O#LYNN t8.3
@561
EXIT

CHAIN O#LYNN t8.M
@562
END
IF ~~ EXTERN O#LYNN a0.Mercy

CHAIN O#LYNN t8.letgo
@563
END
IF ~~ EXTERN O#LYNN a0.Mercy

// Task 9.

CHAIN O#LYNN task9
@564
= @565
= @566
= @567
= @568 
= @569
DO ~AddJournalEntry(@10420,QUEST)~
EXIT

// Task 9 is complete.

CHAIN O#LYNN t9
@570
DO ~GiveGoldForce(5000)~
= @571
END
++ @572 EXTERN O#LYNN t9.1
++ @573 EXTERN O#LYNN t9.1
++ @574 EXTERN O#LYNN t9.1
++ @575 EXTERN O#LYNN t9.1

CHAIN O#LYNN t9.1
@576
= @577
DO ~SetGlobal("O#CrLynnNineQuestsComplete","GLOBAL",1)
AddJournalEntry(@10450,QUEST_DONE)
EscapeArea()~
EXIT

// The final task

CHAIN IF ~Global("O#CrLynnNineQuestsComplete","GLOBAL",1)
Global("O#CrLynnFinalQuest","GLOBAL",0)
!See(Player2)
!See(Player3)
!See(Player4)
!See(Player5)
!See(Player6)~ THEN O#LYNN f0
@578 
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",1)~
END
++ @579 EXTERN O#LYNN f0.1
++ @580 EXTERN O#LYNN f0.1
++ @581 EXTERN O#LYNN f0.1

CHAIN O#LYNN f0.1
@582
= @583 
= @584
= @585
END
++ @586 EXTERN O#LYNN f0.2
++ @587 EXTERN O#LYNN f0.3
++ @588 EXTERN O#LYNN f0.3
++ @589 EXTERN O#LYNN f0.5

CHAIN O#LYNN f0.2
@415
= @590
= @591
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut6")~
EXIT

CHAIN O#LYNN f0.3
@592
END
++ @576 EXTERN O#LYNN f0.4
++ @593 EXTERN O#LYNN f0.7
++ @594 EXTERN O#LYNN f0.2

CHAIN O#LYNN f0.4
@595
DO ~EraseJournalEntry(@10450)
EraseJournalEntry(@10460)
EraseJournalEntry(@10560)
AddJournalEntry(@10480,QUEST_DONE) 
EscapeArea()~
EXIT

CHAIN O#LYNN f0.5
@596
END
++ @597 EXTERN O#LYNN f0.6
++ @593 EXTERN O#LYNN f0.7
++ @598 EXTERN O#LYNN f0.2

CHAIN O#LYNN f0.6
@599
END
IF ~~ EXTERN O#LYNN f0.4

CHAIN O#LYNN f0.7
@600
END
IF ~~ EXTERN O#LYNN f0.4

BEGIN O#RHIN

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",1)~ THEN O#LYNN f1
@601 
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",2)~
== O#RHIN @602 
END
++ @603 EXTERN O#RHIN f1.1
++ @604 EXTERN O#RHIN f1.1
++ @605 EXTERN O#LYNN f1.b
++ @26 EXTERN O#LYNN f1.a

CHAIN O#LYNN f1.a
@606
END
IF ~~ EXTERN O#RHIN f1.1

CHAIN O#LYNN f1.b
@607
END
IF ~~ EXTERN O#RHIN f1.1

CHAIN O#RHIN f1.1
@608 
END
++ @609 EXTERN O#RHIN f1.3
++ @610 EXTERN O#RHIN f1.3
++ @611 EXTERN O#LYNN f1.2

CHAIN O#LYNN f1.2
@612
END
IF ~~ EXTERN O#RHIN f1.deed

CHAIN O#RHIN f1.3
@613
END
IF ~~ EXTERN O#RHIN f1.deed

CHAIN O#RHIN f1.deed
@614 
END
++ @615 EXTERN O#RHIN f1.5
++ @616 EXTERN O#RHIN f1.5
++ @617 EXTERN O#LYNN f1.4

CHAIN O#LYNN f1.4
@618
END
IF ~~ EXTERN O#RHIN f1.5

CHAIN O#RHIN f1.5
@619
= @620
END
++ @621 EXTERN O#RHIN f1.6
++ @622 EXTERN O#RHIN f1.7
++ @623 EXTERN O#RHIN f1.7

CHAIN O#RHIN f1.6
@624
END
IF ~~ EXTERN O#RHIN f1.7

CHAIN O#RHIN f1.7
@625
END
++ @626 EXTERN O#LYNN f1.10
++ @627 EXTERN O#RHIN f1.9
++ @628 EXTERN O#RHIN f1.8

CHAIN O#RHIN f1.8
@629
END
IF ~~ EXTERN O#LYNN f1.10

CHAIN O#RHIN f1.9
@630
END
IF ~~ EXTERN O#LYNN f1.10

CHAIN O#LYNN f1.10
@631
== O#RHIN @632 
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",3)
EraseJournalEntry(@10450)
EraseJournalEntry(@10460)
EraseJournalEntry(@10560)
AddJournalEntry(@10470,QUEST)
ApplySpell("O#Rhin",DRYAD_TELEPORT)
ApplySpell("O#Lynn",DRYAD_TELEPORT)~
EXIT

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",3)~ THEN O#LYNN f2
@633 
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",4)~
END
++ @634 EXTERN O#LYNN f2.1
++ @635 EXTERN O#LYNN f2.2
++ @636 EXTERN O#LYNN f2.2
++ @637 EXTERN O#LYNN f2.doit

CHAIN O#LYNN f2.1
@638
END
IF ~~ EXTERN O#LYNN f2.doit

CHAIN O#LYNN f2.2
@639
END
IF ~~ EXTERN O#LYNN f2.doit

CHAIN O#LYNN f2.doit
@640 
= @641
END
++ @642 EXTERN O#LYNN f2.3
++ @643 EXTERN O#LYNN f2.4
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @644 EXTERN O#LYNN f2.5
++ @645 EXTERN O#LYNN f2.6

CHAIN O#LYNN f2.3
@646
END
IF ~~ EXTERN O#LYNN f2.6

CHAIN O#LYNN f2.4
@647
END
IF ~~ EXTERN O#LYNN f2.6

CHAIN O#LYNN f2.5
@648
END
IF ~~ EXTERN O#LYNN f2.6

CHAIN O#LYNN f2.6
@649
== MAZZYJ IF ~InParty("Mazzy") Range(Player1,30) !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @650
DO ~LeaveParty() EscapeArea()~
== KELDORJ IF ~InParty("Keldorn") Range(Player1,30) !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @651
DO ~LeaveParty() EscapeArea()~
== O#LYNN @652
DO ~AddJournalEntry(@10490,QUEST) ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut7")~
EXIT

BEGIN O#GEWEN

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",7)~ THEN O#GEWEN g1
@653 
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",8)~
END
++ @654 EXTERN O#GEWEN g1.1
++ @655 EXTERN O#GEWEN g1.1
++ @656 EXTERN O#GEWEN g1.1

CHAIN O#GEWEN g1.1
@657
END
IF ~OR(4) !Dead("O#CrLah1") !Dead("O#CrLah2") !Dead("O#CrLah3") !Dead("O#CrLah4")~ 
DO ~SetGlobal("O#CrLynnClearedBodies","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut8")~ EXIT
IF ~Dead("O#CrLah1") Dead("O#CrLah2") Dead("O#CrLah3") Dead("O#CrLah4")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut8")~ EXIT

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",8)~ THEN O#LYNN f3
@658 
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",10)~
END
++ @659 EXTERN O#LYNN f3.1
++ @660 EXTERN O#LYNN f3.1
++ @661 EXTERN O#LYNN f3.1

CHAIN O#LYNN f3.1
@662
== O#LYNN IF ~Global("O#CrLynnClearedBodies","GLOBAL",1)~ THEN @663
== O#LYNN @664
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut9")~
EXIT

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",10)~ THEN O#GEWEN g2
@665 
= @666
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",11)
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCu10")~
EXIT

BEGIN O#DAMIR

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",11)~ THEN O#GEWEN g3
@667 
== O#DAMIR @668 
= @669
END
++ @670 EXTERN O#DAMIR g3.1
++ @671 EXTERN O#DAMIR g3.1
++ @672 EXTERN O#DAMIR g3.1
++ @673 EXTERN O#DAMIR g3.2

CHAIN O#DAMIR g3.1
@674
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",12) 
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCu11")~
EXIT

CHAIN O#DAMIR g3.2
@675
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",12) 
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCu11")~
EXIT

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",12)~ THEN O#DAMIR g4
@676 
== O#GEWEN @677 
== O#RHIN @678 
== O#RHIN @679 
== O#DAMIR @680 
== O#RHIN @681 
== O#DAMIR @682
== O#RHIN @683
== O#DAMIR @684
== O#RHIN @142
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",13) 
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCu12")~
EXIT

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",13)~ THEN O#LYNN g5
@685 
== O#DAMIR @686 
== O#LYNN @687 
== O#DAMIR @688 
== O#LYNN @689
= @690
== O#DAMIR @691
== O#RHIN @692
== O#DAMIR @693
== O#RHIN @694
DO ~SetGlobal("O#CrLynnFinalQuest","GLOBAL",14) 
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCu13")~
EXIT

CHAIN IF ~Global("O#CrLynnFinalQuest","GLOBAL",14)~ THEN O#LYNN g6
@695 
DO ~GiveGoldForce(10000) 
GiveItemCreate("O#CrAmul",Player1,1,0,0)
SetGlobal("O#CrLynnFinalQuest","GLOBAL",15)
SetGlobal("O#CrLynnFinalQuestOver","GLOBAL",1)
EraseJournalEntry(@10470)
EraseJournalEntry(@10490)
AddJournalEntry(@10500,QUEST_DONE)~
= @696
END
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @573 EXTERN O#LYNN g6.1
++ @697 EXTERN O#LYNN g6.3
++ @576 EXTERN O#LYNN g6.3
++ @698 EXTERN O#LYNN g6.2
++ @699 EXTERN O#LYNN g6.0
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @700 EXTERN O#LYNN g6.4
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @701 EXTERN O#LYNN g6.4

CHAIN O#LYNN g6.0
@702
END
++ @703 EXTERN O#LYNN g6.3
++ @704 EXTERN O#LYNN g6.2
++ @573 EXTERN O#LYNN g6.1

CHAIN O#LYNN g6.1
@705
END
++ @698 EXTERN O#LYNN g6.2
++ @576 EXTERN O#LYNN g6.3
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @701 EXTERN O#LYNN g6.4

CHAIN O#LYNN g6.2
@706
END
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @573 EXTERN O#LYNN g6.1
++ @576 EXTERN O#LYNN g6.3
++ @707 EXTERN O#LYNN g6.3
+ ~Global("O#LynnRomantic","GLOBAL",1)~ + @701 EXTERN O#LYNN g6.4

CHAIN O#LYNN g6.3
@708
DO ~ApplySpell("O#LYNN",DRYAD_TELEPORT)~
EXIT

CHAIN O#LYNN g6.4
@709
= @710
END
+ ~NumInPartyGT(1)~ + @711 EXTERN O#LYNN g6.hmm
++ @712 EXTERN O#LYNN g6.hmm
++ @713 EXTERN O#LYNN g6.hmm
++ @714 EXTERN O#LYNN g6.3
++ @715 EXTERN O#LYNN g6.see

CHAIN O#LYNN g6.see
@716
END
IF ~~ EXTERN O#LYNN g6.3

CHAIN O#LYNN g6.hmm
@717
= @718
= @719
= @720
END
++ @721 EXTERN O#LYNN g6.5
++ @722 EXTERN O#LYNN g6.5
++ @723 EXTERN O#LYNN g6.5
++ @724 EXTERN O#LYNN g6.6
++ @725 EXTERN O#LYNN g6.bad

CHAIN O#LYNN g6.bad
@726
= @727
END
++ @728 EXTERN O#LYNN g6.apo
++ @729 EXTERN O#LYNN g6.apo
++ @730 EXTERN O#LYNN g6.3

CHAIN O#LYNN g6.5
@731
END
IF ~~ EXTERN O#LYNN g6.last

CHAIN O#LYNN g6.apo
@732
END
IF ~~ EXTERN O#LYNN g6.6

CHAIN O#LYNN g6.6
@733
END
IF ~~ EXTERN O#LYNN g6.last

CHAIN O#LYNN g6.last
@734
DO ~SetGlobal("O#LynnSex","GLOBAL",1)~
== O#LYNN @735
== O#LYNN @736
END
IF ~~ DO ~RestParty()~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieSex","GLOBAL",1) RestParty()~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnJaheiraSex","GLOBAL",1) RestParty()~ EXIT
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnViconiaSex","GLOBAL",1) RestParty()~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieSex","GLOBAL",1) SetGlobal("O#LynnJaheiraSex","GLOBAL",1) RestParty()~ EXIT
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieSex","GLOBAL",1) SetGlobal("O#LynnViconiaSex","GLOBAL",1) RestParty()~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnJaheiraSex","GLOBAL",1) SetGlobal("O#LynnViconiaSex","GLOBAL",1) RestParty()~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ 
DO ~SetGlobal("O#LynnAerieSex","GLOBAL",1) SetGlobal("O#LynnJaheiraSex","GLOBAL",1) SetGlobal("O#LynnViconiaSex","GLOBAL",1) RestParty()~ EXIT

CHAIN IF ~Global("O#LynnSex","GLOBAL",2)~ THEN O#LYNN g7
@737 
= @738
DO ~SetGlobal("O#LynnSex","GLOBAL",3) EscapeArea()~
EXIT

// Aerie's reaction

CHAIN IF WEIGHT #-1 ~Global("O#LynnAerieRomantic","GLOBAL",1)~ THEN AERIEJ a1
@739 
DO ~SetGlobal("O#LynnAerieRomantic","GLOBAL",2)~
END
++ @740 EXTERN AERIEJ a1.1
++ @741 EXTERN AERIEJ a1.1
++ @742 EXTERN AERIEJ a1.1

CHAIN AERIEJ a1.1
@743
EXIT

CHAIN IF WEIGHT #-1 ~Global("O#LynnAerieSex","GLOBAL",1)~ THEN AERIEJ a2
@744 
DO ~SetGlobal("O#LynnAerieSex","GLOBAL",2)~
END
++ @745 EXTERN AERIEJ a2.1
++ @746 EXTERN AERIEJ a2.2
++ @747 EXTERN AERIEJ a2.3
++ @748 EXTERN AERIEJ a2.4

CHAIN AERIEJ a2.1
@749
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT

CHAIN AERIEJ a2.2
@750
END
IF ~~ EXTERN AERIEJ a2.5

CHAIN AERIEJ a2.3
@751
= @752
EXIT

CHAIN AERIEJ a2.4
@753
END
IF ~~ EXTERN AERIEJ a2.5

CHAIN AERIEJ a2.5
@754
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
EXIT

// Jaheira's reaction

CHAIN IF WEIGHT #-1 ~Global("O#LynnJaheiraRomantic","GLOBAL",1)~ THEN JAHEIRAJ j1
@755 
DO ~SetGlobal("O#LynnJaheiraRomantic","GLOBAL",2)~
END
++ @756 EXTERN JAHEIRAJ j1.1
++ @757 EXTERN JAHEIRAJ j1.1
++ @758 EXTERN JAHEIRAJ j1.1

CHAIN JAHEIRAJ j1.1
@759
EXIT

CHAIN IF WEIGHT #-1 ~Global("O#LynnJaheiraSex","GLOBAL",1)~ THEN JAHEIRAJ j2
@760 
DO ~SetGlobal("O#LynnJaheiraSex","GLOBAL",2)~
END
++ @761 EXTERN JAHEIRAJ j2.1
++ @762 EXTERN JAHEIRAJ j2.2
++ @763 EXTERN JAHEIRAJ j2.3
++ @764 EXTERN JAHEIRAJ j2.2

CHAIN JAHEIRAJ j2.1
@765
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT

CHAIN JAHEIRAJ j2.2
@766
= @767
EXIT

CHAIN JAHEIRAJ j2.3
@768
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT

// Viconia's reaction

CHAIN IF WEIGHT #-1 ~Global("O#LynnViconiaRomantic","GLOBAL",1)~ THEN VICONIJ v1
@769 
DO ~SetGlobal("O#LynnViconiaRomantic","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("O#LynnViconiaSex","GLOBAL",1)~ THEN VICONIJ v2
@770 
DO ~SetGlobal("O#LynnViconiaSex","GLOBAL",2)~
END
++ @771 EXTERN VICONIJ v2.1
++ @772 EXTERN VICONIJ v2.1
++ @773 EXTERN VICONIJ v2.1
++ @774 EXTERN VICONIJ v2.1

CHAIN VICONIJ v2.1
@775
= @776
END
++ @777 EXTERN VICONIJ v2.2
++ @778 EXTERN VICONIJ v2.2
++ @779 EXTERN VICONIJ v2.2

CHAIN VICONIJ v2.2
@780
EXIT

// Brega

EXTEND_BOTTOM HABREGA 0
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN HABREGA habrega1
+ ~!Dead("O#Lynn") Global("O#CrLynnBrega","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",1)~ + @782 DO ~SetGlobal("O#CrLynnBrega","GLOBAL",1)~ EXTERN HABREGA habrega2
+ ~!Dead("O#Lynn") Global("O#CrLynnBrega","GLOBAL",1) Global("O#CrLynnBetrayed","GLOBAL",1)~ + @783 DO ~SetGlobal("O#CrLynnBrega","GLOBAL",2)~ EXTERN HABREGA habrega3
+ ~Global("O#CrLynnFinalQuestOver","GLOBAL",1) Global("O#CrLynnBregaFinal","GLOBAL",0)~ + @784 DO ~SetGlobal("O#CrLynnBregaFinal","GLOBAL",1)~ EXTERN HABREGA habrega4
END

CHAIN HABREGA habrega1
@785
DO ~AddJournalEntry(@10060,QUEST)~
EXIT

CHAIN HABREGA habrega2
@786
EXIT

CHAIN HABREGA habrega3
@787
EXIT

CHAIN HABREGA habrega4
@788
EXIT

// Renal

EXTEND_BOTTOM RENAL 31
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 33
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 38
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 40
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 49
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 64
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 78
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

EXTEND_BOTTOM RENAL 109
+ ~!Dead("O#Lynn") GlobalGT("O#CrLynnQuest","GLOBAL",0) Global("O#CrLynnBetrayed","GLOBAL",0) Global("O#CrLynnNineQuestsComplete","GLOBAL",0)~ + @781 DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1) SetGlobal("O#CrLynnAmbush","GLOBAL",1)~ EXTERN RENAL renal1
END

CHAIN RENAL renal1
@789
END
++ @790 EXTERN RENAL renal1.1
++ @791 EXTERN RENAL renal1.2
++ @792 EXTERN RENAL renal1.3

CHAIN RENAL renal1.1
@793
END
IF ~~ EXTERN RENAL renal1.end

CHAIN RENAL renal1.2
@794
END
IF ~~ EXTERN RENAL renal1.end

CHAIN RENAL renal1.3
@795
END
IF ~~ EXTERN RENAL renal1.end

CHAIN RENAL renal1.end
@796
DO ~AddJournalEntry(@10070,QUEST)~
EXIT

// Assassination 1.

/* For some reason, the "Time()" trigger does not work inside this dialogue.
EXTEND_BOTTOM WINNKEEP 0
+ ~Global("O#CrLynnQuestSpawn1","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",1) 
OR(7) 
Time(18) Time(19) Time(20) Time(21) Time(22) Time(23) TimeOfDay(NIGHT)~ + @797 EXTERN WINNKEEP O#CrMithrest1.1
+ ~!Time(18) !Time(19) !Time(20) !Time(21) !Time(22) !Time(23) !TimeOfDay(NIGHT)
Global("O#CrLynnQuest","GLOBAL",1) GlobalLT("O#CrLynnQuestSpawn1","GLOBAL",2)~ + @797 DO ~SetGlobal("O#CrLynnQuestSpawn1_Add","GLOBAL",1)~ EXTERN WINNKEEP O#CrMithrest1.2
+ ~Global("O#CrLynnQuestSpawn1","GLOBAL",3) Global("O#CrLynnLetGo1","GLOBAL",1) GlobalTimerExpired("O#CrQuest1MoneyTimer","GLOBAL")~ + @798 DO ~SetGlobal("O#CrLynnQuestSpawn1","GLOBAL",4)~ EXTERN WINNKEEP O#CrMithrest1.3
END

*/

/* Give helper cre a dialogue (added by jastey) */

BEGIN O#C#Spy
IF ~Global("O#CrLynnQuestSpawn1_Add","GLOBAL",2)~ THEN O#CrMithrest_ItIsTime
SAY @799
IF ~~ THEN DO ~SetGlobal("O#CrLynnQuestSpawn1","GLOBAL",1) SetGlobal("O#CrLynnQuestSpawn1_Add","GLOBAL",0) AddJournalEntry(@10030,QUEST) DestroySelf()~ EXIT
END

/* new try: variable is set via the area script */

EXTEND_BOTTOM WINNKEEP 0
+ ~Global("O#CrLynnQuestSpawn1","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",1) 
Global("O#CrLynnQuestSpawn1_ItIsTime","MYAREA",1)~ + @797 EXTERN WINNKEEP O#CrMithrest1.1
+ ~Global("O#CrLynnQuestSpawn1_ItIsTime","MYAREA",0)
Global("O#CrLynnQuest","GLOBAL",1) GlobalLT("O#CrLynnQuestSpawn1","GLOBAL",2)~ + @797 DO ~SetGlobal("O#CrLynnQuestSpawn1_Add","GLOBAL",1)~ EXTERN WINNKEEP O#CrMithrest1.2
+ ~Global("O#CrLynnQuestSpawn1","GLOBAL",3) Global("O#CrLynnLetGo1","GLOBAL",1) GlobalTimerExpired("O#CrQuest1MoneyTimer","GLOBAL")~ + @798 DO ~SetGlobal("O#CrLynnQuestSpawn1","GLOBAL",4)~ EXTERN WINNKEEP O#CrMithrest1.3
END

CHAIN WINNKEEP O#CrMithrest1.1
@799
DO ~SetGlobal("O#CrLynnQuestSpawn1","GLOBAL",1) SetGlobal("O#CrLynnQuestSpawn1_Add","GLOBAL",0) AddJournalEntry(@10030,QUEST)~
EXIT

CHAIN WINNKEEP O#CrMithrest1.2
@800
EXIT

CHAIN WINNKEEP O#CrMithrest1.3
@801
= @802
EXIT

BEGIN O#CRMEL // Lord Melyin

CHAIN IF ~Global("O#CrLynnQuestSpawn1","GLOBAL",2)~ THEN O#CRMEL cr1
@803
DO ~SetGlobal("O#CrLynnQuestSpawn1","GLOBAL",3)~
END
++ @804 EXTERN O#CRMEL cr1.1
++ @805 EXTERN O#CRMEL cr1.1
++ @806 EXTERN O#CRMEL cr1.1

CHAIN O#CRMEL cr1.1
@807
END
++ @661 EXTERN O#CRMEL cr1.2
++ @808 EXTERN O#CRMEL cr1.2
++ @809 EXTERN O#CRMEL cr1.2
++ @810 EXTERN O#CRMEL cr1.please

CHAIN O#CRMEL cr1.2
@811
= @812
END
++ @813 EXTERN O#CRMEL cr1.please
++ @814 EXTERN O#CRMEL cr1.please
++ @815 EXTERN O#CRMEL cr1.3

CHAIN O#CRMEL cr1.3
@816
END
++ @817 EXTERN O#CRMEL cr1.please
++ @818 EXTERN O#CRMEL cr1.please
++ @623 DO ~SetGlobal("O#CrLynnLetGo1","GLOBAL",1) IncrementGlobal("O#CrLynnMercy","GLOBAL",1) 
SetGlobalTimer("O#CrQuest1MoneyTimer","GLOBAL",ONE_DAY)~ EXTERN O#CRMEL cr1.letgo

CHAIN O#CRMEL cr1.please
@819
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @820
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @821
== O#CRMEL @822
END
++ @823 EXTERN O#CRMEL cr1.end
++ @824 EXTERN O#CRMEL cr1.end
++ @825 DO ~SetGlobal("O#CrLynnLetGo1","GLOBAL",1) IncrementGlobal("O#CrLynnMercy","GLOBAL",1)
 SetGlobalTimer("O#CrQuest1MoneyTimer","GLOBAL",ONE_DAY)~ EXTERN O#CRMEL cr1.letgo

CHAIN O#CRMEL cr1.letgo
@826
= @827
DO ~AddJournalEntry(@10050,QUEST)
ActionOverride("O#CrMel",EscapeArea()) 
ActionOverride("O#CrGua1",EscapeArea())
ActionOverride("O#CrGua2",EscapeArea())~
EXIT

CHAIN O#CRMEL cr1.end
@828
== KELDORJ IF ~InParty("Keldorn") Range(Player1,30) !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @829
DO ~LeaveParty() Enemy()~
== MAZZYJ IF ~InParty("Mazzy") Range(Player1,30) !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @830
DO ~LeaveParty() Enemy()~
== O#CRMEL @831
DO ~AddJournalEntry(@10040,QUEST)
ReputationInc(-2)
ActionOverride("O#CrMel",Enemy()) 
ActionOverride("O#CrGua1",Enemy())
ActionOverride("O#CrGua2",Enemy())~
EXIT

// Assassination 2.

EXTEND_BOTTOM DAWNMAS 0
+ ~Global("O#CrLynnQuestSpawn2","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",2)~ + @832 DO ~SetGlobal("O#CrLynnQuestSpawn2","GLOBAL",1)~ EXTERN DAWNMAS lat1
+ ~!Dead("O#CrNev") GlobalGT("O#CrLynnLetGo2","GLOBAL",0) Global("O#CrLynnQuest2Lat","GLOBAL",0)~ + @833 DO ~SetGlobal("O#CrLynnQuest2Lat","GLOBAL",1)~ EXTERN DAWNMAS lat2
+ ~Dead("O#CrNev") Global("O#CrLynnQuest2Lat","GLOBAL",0)~ + @834 DO ~SetGlobal("O#CrLynnQuest2Lat","GLOBAL",1)~ EXTERN DAWNMAS lat2
END

CHAIN DAWNMAS lat1
@835
= @836
DO ~AddJournalEntry(@10120,QUEST)~
EXIT

CHAIN DAWNMAS lat2
@837
EXIT

BEGIN O#CRNEV // Nevier Costa
BEGIN O#CRGIR2 // Girl

CHAIN IF ~Global("O#CrLynnQuestSpawn2","GLOBAL",2)~ THEN O#CRNEV cr2
@838
== O#CRGIR2 @839
== O#CRGIR2 @840
== O#CRNEV @841
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @842
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @843
== O#CRGIR2 @844
== O#CRNEV @845
DO ~SetGlobal("O#CrLynnQuestSpawn2","GLOBAL",3) 
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut1")~
EXIT

CHAIN IF ~Global("O#CrLynnQuestSpawn2","GLOBAL",3)~ THEN O#CRNEV cr2.1
@846
DO ~SetGlobal("O#CrLynnQuestSpawn2","GLOBAL",4)~
END
++ @847 EXTERN O#CRNEV cr2.2
++ @848 EXTERN O#CRNEV cr2.3
++ @849 EXTERN O#CRNEV cr2.4
++ @850 EXTERN O#CRNEV cr2.5

CHAIN O#CRNEV cr2.2
@851
END
IF ~~ EXTERN O#CRNEV cr2.6

CHAIN O#CRNEV cr2.3
@852
END
IF ~~ EXTERN O#CRNEV cr2.6

CHAIN O#CRNEV cr2.4
@853
DO ~AddJournalEntry(@10130,QUEST)
Enemy()~
EXIT

CHAIN O#CRNEV cr2.5
@854
END
IF ~~ EXTERN O#CRNEV cr2.6

CHAIN O#CRNEV cr2.6
@855
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @856
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @857
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @858
== O#CRNEV @859
END
++ @860 EXTERN O#CRNEV cr2.7
++ @861 EXTERN O#CRNEV cr2.8
++ @862 EXTERN O#CRNEV cr2.4
++ @863 EXTERN O#CRNEV cr2.4

CHAIN O#CRNEV cr2.7
@864
DO ~GivePartyGold(500) 
SetGlobal("O#CrLynnLetGo2","GLOBAL",1) 
IncrementGlobal("O#CrLynnMercy","GLOBAL",1)
AddJournalEntry(@10140,QUEST) 
EscapeArea()~ 
EXIT

CHAIN O#CRNEV cr2.8
@823
END
++ @865 EXTERN O#CRNEV cr2.7
++ @866 EXTERN O#CRNEV cr2.4

// Assassination 3.

BEGIN O#CRWOM3 // Crying Woman
BEGIN O#CRAMA  // Amara
BEGIN O#CRGU31 // Guard 1
BEGIN O#CRGU32 // Guard 2

CHAIN IF ~Global("O#CrLynnQuestSpawn3","GLOBAL",1)~ THEN O#CRWOM3 cr3.1
@867
DO ~SetGlobal("O#CrLynnQuestSpawn3","GLOBAL",2) AddJournalEntry(@10160,QUEST)~
END
++ @868 EXTERN O#CRWOM3 cr3.2
++ @869 EXTERN O#CRWOM3 cr3.2
++ @870 EXTERN O#CRWOM3 cr3.3

CHAIN O#CRWOM3 cr3.2
@871
END
++ @872 EXTERN O#CRWOM3 cr3.4
++ @873 EXTERN O#CRWOM3 cr3.4
++ @874 EXTERN O#CRWOM3 cr3.4

CHAIN O#CRWOM3 cr3.3
@875
EXIT

CHAIN O#CRWOM3 cr3.4
@876
END
++ @877 EXTERN O#CRWOM3 cr3.5
++ @878 EXTERN O#CRWOM3 cr3.5
++ @879 EXTERN O#CRWOM3 cr3.3
++ @880 EXTERN O#CRWOM3 cr3.3

CHAIN O#CRWOM3 cr3.5
@881
DO ~SetGlobal("O#CrLynnQuestSpawn3","GLOBAL",3)~
END
++ @882 EXTERN O#CRWOM3 cr3.psycho
++ @883 EXTERN O#CRWOM3 cr3.hero
++ @884 EXTERN O#CRWOM3 cr3.hero
++ @885 EXTERN O#CRWOM3 cr3.3

CHAIN O#CRWOM3 cr3.psycho
@886
DO ~SetGlobal("O#CrLynnQuestSpawn3","GLOBAL",4) 
EscapeArea()~
EXIT

CHAIN O#CRWOM3 cr3.hero
@887
= @888
= @889
= @890
= @891
DO ~SetGlobal("O#CrLynnQuestSpawn3","GLOBAL",4)
EraseJournalEntry(@10160)
AddJournalEntry(@10170,QUEST)
EscapeArea()~
EXIT

CHAIN IF ~Global("O#CrLynnQuestSpawn3","GLOBAL",2)~ THEN O#CRWOM3 cr3.6
@892
END
++ @893 EXTERN O#CRWOM3 cr3.3
++ @894 EXTERN O#CRWOM3 cr3.2

CHAIN IF ~Global("O#CrLynnQuestSpawn3","GLOBAL",3)~ THEN O#CRWOM3 cr3.7
@895
END
++ @896 EXTERN O#CRWOM3 cr3.8
++ @897 EXTERN O#CRWOM3 cr3.5

CHAIN O#CRWOM3 cr3.8
@898
EXIT

CHAIN IF ~Global("O#CrLynnQuestSpawn3V","GLOBAL",1)~ THEN O#CRAMA cr3.9
@899 
DO ~SetGlobal("O#CrLynnQuestSpawn3V","GLOBAL",2)~
END
++ @900 EXTERN O#CRAMA cr3.10
++ @901 EXTERN O#CRAMA cr3.10
++ @902 EXTERN O#CRAMA cr3.10
++ @903 EXTERN O#CRAMA cr3.10

CHAIN O#CRAMA cr3.10
@904
= @905
= @906
END
++ @907 EXTERN O#CRAMA cr3.11
++ @908 EXTERN O#CRAMA cr3.11
++ @909 EXTERN O#CRAMA cr3.11
++ @910 EXTERN O#CRAMA cr3.aaa
++ @911 EXTERN O#CRAMA cr3.aaa

CHAIN O#CRAMA cr3.11
@912
END
++ @913 EXTERN O#CRAMA cr3.12
++ @914 EXTERN O#CRAMA cr3.12
++ @915 EXTERN O#CRAMA cr3.thanks
++ @916 EXTERN O#CRAMA cr3.aaa

CHAIN O#CRAMA cr3.12
@917 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @918
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @919 
== O#CRAMA @920
= @921
END
++ @922 EXTERN O#CRAMA cr3.13
++ @923 EXTERN O#CRAMA cr3.thanks
++ @924 EXTERN O#CRAMA cr3.13
++ @925 EXTERN O#CRAMA cr3.15

CHAIN O#CRAMA cr3.13
@926
END
++ @927 EXTERN O#CRAMA cr3.thanks
++ @928 EXTERN O#CRAMA cr3.14
++ @929 EXTERN O#CRAMA cr3.15

CHAIN O#CRAMA cr3.14
@930
END
++ @931 EXTERN O#CRAMA cr3.thanks
++ @932 EXTERN O#CRAMA cr3.15
++ @933 EXTERN O#CRAMA cr3.15

CHAIN O#CRAMA cr3.15
@934
= @935
END
++ @936 EXTERN O#CRAMA cr3.he
++ @937 EXTERN O#CRAMA cr3.thanks
++ @938 EXTERN O#CRAMA cr3.aaa
++ @939 EXTERN O#CRAMA cr3.aaa

CHAIN O#CRAMA cr3.he
@940
= @941
END
++ @942 EXTERN O#CRAMA cr3.thanks
++ @943 EXTERN O#CRAMA cr3.aaa
++ @944 EXTERN O#CRAMA cr3.aaa

CHAIN O#CRAMA cr3.aaa
@945
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut2")~
EXIT

CHAIN O#CRAMA cr3.thanks
@946
DO ~SetGlobal("O#CrLynnLetGo3","GLOBAL",1) 
IncrementGlobal("O#CrLynnMercy","GLOBAL",1)
AddJournalEntry(@10180,QUEST)
EscapeArea()~ 
EXIT

CHAIN IF ~Global("O#CrLynnQuestSpawn3V","GLOBAL",3)~ THEN O#CRGU31 cr3.guard
@947
DO ~SetGlobal("O#CrLynnQuestSpawn3V","GLOBAL",4)~
== O#CRAMA @948
== O#CRGU31 @949
== O#CRGU32 @950
== O#CRGU31 @951
END
++ @952 EXTERN O#CRAMA cr3.lies
++ @953 EXTERN O#CRAMA cr3.lies
++ @954 EXTERN O#CRGU31 cr3.killkillkillyeahcool
++ @955 EXTERN O#CRGU31 cr3.killkillkillyeahcool
++ @956 EXTERN O#CRGU31 c3.notatall

CHAIN O#CRAMA cr3.lies
@957
== O#CRGU31 @958
END
++ @959 EXTERN O#CRGU31 c3.notatall
++ @960 EXTERN O#CRGU31 cr3.killkillkillyeahcool
++ @961 EXTERN O#CRGU31 cr3.killkillkillyeahcool

CHAIN O#CRGU31 c3.notatall
@962
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @963
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Keldorn") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @964
== O#CRAMA @965
DO ~SetGlobal("O#CrLynnLetGo3","GLOBAL",1)
IncrementGlobal("O#CrLynnMercy","GLOBAL",1)
AddJournalEntry(@10180,QUEST)
ActionOverride("O#CRAMA",EscapeArea())
ActionOverride("O#CRGU31",EscapeArea())
ActionOverride("O#CRGU32",EscapeArea())~
EXIT

CHAIN O#CRGU31 cr3.killkillkillyeahcool
@966
== O#CRAMA @967
== KELDORJ IF ~InParty("Keldorn") Range(Player1,30) !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @968
DO ~LeaveParty() Enemy()~
== MAZZYJ IF ~InParty("Mazzy") Range(Player1,30) !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @969
DO ~LeaveParty() Enemy()~
== O#CRGU31 @970
DO ~AddJournalEntry(@10190,QUEST)
ReputationInc(-2)
ActionOverride("O#CRAMA",Enemy())
ActionOverride("O#CRGU31",Enemy())
ActionOverride("O#CRGU32",Enemy())~
EXIT

// Assassination 4.

CHAIN IF WEIGHT #-1 ~Global("O#CrAskedDaton","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",4)~ THEN DOCSOL01 ask
@971
DO ~SetGlobal("O#CrAskedDaton","GLOBAL",1)~ 
END
++ @972 EXTERN DOCSOL01 g1
++ @973 EXIT

CHAIN DOCSOL01 g1
@974
DO ~AddJournalEntry(@10210,QUEST)~
EXIT

BEGIN O#DATON   // Inspector Daton

CHAIN IF ~Global("O#CrSpawnedDaton","GLOBAL",1)~ THEN O#DATON d1
@975
END
+ ~ReputationGT(Player1,7)~ + @976 EXTERN O#DATON d1.1
+ ~ReputationLT(Player1,8)~ + @976 EXTERN O#DATON d1.2
+ ~ReputationGT(Player1,7)~ + @977 EXTERN O#DATON d1.3
+ ~ReputationLT(Player1,8)~ + @977 EXTERN O#DATON d1.4
++ @978 EXTERN O#DATON d1.5

CHAIN O#DATON d1.1
@979
END
IF ~~ EXTERN O#DATON d1.6

CHAIN O#DATON d1.2
@980
END
IF ~~ EXTERN O#DATON d1.6

CHAIN O#DATON d1.3
@981
END
IF ~~ EXTERN O#DATON d1.6

CHAIN O#DATON d1.4
@982
END
IF ~~ EXTERN O#DATON d1.6

CHAIN O#DATON d1.5
@983
END
++ @984 EXTERN O#DATON d1.7
++ @985 EXTERN O#DATON d1.7
++ @986 EXTERN O#DATON d1.7
++ @987 EXTERN O#DATON d1.8

CHAIN O#DATON d1.6
@988
END
++ @984 EXTERN O#DATON d1.7
++ @985 EXTERN O#DATON d1.7
++ @986 EXTERN O#DATON d1.7
++ @987 EXTERN O#DATON d1.8

CHAIN O#DATON d1.7
@989
= @990
END
IF ~~ EXTERN O#DATON d1.9

CHAIN O#DATON d1.8
@991
= @992
END
IF ~~ EXTERN O#DATON d1.9

CHAIN O#DATON d1.9
@993
END
IF ~~ THEN DO ~SetGlobal("O#CrSpawnedDaton","GLOBAL",2) AddJournalEntry(@10220,QUEST)
EscapeArea()~ EXIT

/*
Moved nto area script AR0300.bcs
DO ~AddJournalEntry(@10220,QUEST)
EscapeAreaMove("AR0300",4304,2458,0)~ 
EXIT
*/


CHAIN IF ~Global("O#CrSpawnedDaton","GLOBAL",3)~ THEN O#DATON d2
@994
DO ~SetGlobal("O#CrSpawnedDaton","GLOBAL",4)~
END
++ @995 EXTERN O#DATON d2.0
++ @996 EXTERN O#DATON d2.1
++ @997 EXTERN O#DATON d2.betray
++ @998 EXTERN O#DATON d2.attack
++ @824 EXTERN O#DATON d2.attack

CHAIN O#DATON d2.0
@999
END
++ @1000 EXTERN O#DATON d2.betray
++ @1001 EXTERN O#DATON d2.2
++ @1002 EXTERN O#DATON d2.1

CHAIN O#DATON d2.attack
@1003
END
++ @1004 EXTERN O#DATON d2.attack2
++ @1005 EXTERN O#DATON d2.attack2
++ @1006 EXTERN O#DATON d2.attack1
++ @1007 EXTERN O#DATON d2.attack1

CHAIN O#DATON d2.attack1
@1008
END
++ @1009 EXTERN O#DATON d2.attack2
++ @1010 EXTERN O#DATON d2.attack2
++ @1011 EXTERN O#DATON d2.attack2

CHAIN O#DATON d2.attack2
@1012
= @1013
END
++ @1014 EXTERN O#DATON d2.letgo
++ @1015 EXTERN O#DATON d2.attack3
++ @1016 EXTERN O#DATON d2.lie
++ @1017 EXTERN O#DATON d2.betray

CHAIN O#DATON d2.letgo
@1018
= @1019
END
++ @1020 EXTERN O#DATON d2.betray
++ @1021 EXTERN O#DATON d2.attack3
++ @1022 EXTERN O#DATON d2.attack3

CHAIN O#DATON d2.1
@1023
END
++ @1024 EXTERN O#DATON d2.2
++ @1025 EXTERN O#DATON d2.betray
++ @1026 EXTERN O#DATON d2.2

CHAIN O#DATON d2.2
@1027
END
++ @823 EXTERN O#DATON d2.attack2
++ @824 EXTERN O#DATON d2.attack
++ @1028 EXTERN O#DATON d2.betray

CHAIN O#DATON d2.lie
@1029
END
IF ~~ THEN EXTERN O#DATON d2.attack3

CHAIN O#DATON d2.attack3
@1030
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @1031
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1032
== KELDORJ IF ~InParty("Keldorn") Range(Player1,30) !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @1033
DO ~LeaveParty() Enemy()~
== MAZZYJ IF ~InParty("Mazzy") Range(Player1,30) !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1034
DO ~LeaveParty() Enemy()~
== O#DATON @1035
DO ~AddJournalEntry(@10240,QUEST)
ReputationInc(-2) 
Enemy()~
EXIT

CHAIN O#DATON d2.betray
@1036
= @1037
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1038
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @1039
== O#DATON @1040
END
++ @1041 EXTERN O#DATON d2.betray1
++ @1042 EXTERN O#DATON d2.betray2
++ @1043 EXTERN O#DATON d2.betray1
++ @1044 EXTERN O#DATON d2.attack3

CHAIN O#DATON d2.betray1
@1045
END
IF ~~ EXTERN O#DATON d2.betray2

CHAIN O#DATON d2.betray2
@1046
DO ~SetGlobal("O#CrLynnBetrayed","GLOBAL",1)
SetGlobal("O#CrLynnAmbush","GLOBAL",1)
AddJournalEntry(@10230,QUEST)
EscapeArea()~
EXIT

// Assassination 5.

BEGIN O#CRALE
BEGIN O#CRCHRI

EXTEND_BOTTOM HPRELATE 24
+ ~Global("O#CrAskedAlexis","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",5)~ + @1047 DO ~SetGlobal("O#CrAskedAlexis","GLOBAL",1)~ EXTERN HPRELATE p1
END

EXTEND_BOTTOM HPRELATE 64
IF ~Global("O#CrAskedAlexis","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",5)~ THEN EXTERN HPRELATE chapter_6
END

APPEND HPRELATE 
IF ~~ THEN chapter_6
SAY #42232 /* ~If there is nothing else, I bid you farewell.~ */
  IF ~~ THEN REPLY #42233 /* ~There is nothing. Thank you for your time.~ */ GOTO 25
+ ~Global("O#CrAskedAlexis","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",5)~ + @1047 DO ~SetGlobal("O#CrAskedAlexis","GLOBAL",1)~ EXTERN HPRELATE p1
END
END

CHAIN HPRELATE p1
@1048
= @1049
= @1050
DO ~AddJournalEntry(@10250,QUEST)~
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRALE c1
@1051
== O#CRCHRI @1052
== O#CRCHRI @1053
== O#CRALE @1054
== O#CRCHRI @1055
== O#CRALE @1056
== O#CRCHRI @1057
END
++ @1058 EXTERN O#CRCHRI c1.1
++ @1059 EXTERN O#CRCHRI c1.1
++ @1060 EXTERN O#CRCHRI c1.1
++ @1061 EXTERN O#CRCHRI c1.1

CHAIN O#CRCHRI c1.1
@1062
== O#CRALE @1063
== O#CRCHRI @1064
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @1065
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @1066
== O#CRALE @1067
== O#CRCHRI @1068
END
++ @1069 EXTERN O#CRALE c1.2
++ @1070 EXTERN O#CRALE c1.3
++ @1071 EXTERN O#CRALE c1.3
++ @1072 EXTERN O#CRALE c1.4

CHAIN O#CRALE c1.2
@1073
== O#CRCHRI @1074
DO ~SetGlobal("O#CrLynnLetGo5","GLOBAL",1)
IncrementGlobal("O#CrLynnMercy","GLOBAL",1) 
AddJournalEntry(@10290,QUEST)
ActionOverride("O#CRALE",EscapeArea())~
EXIT

CHAIN O#CRALE c1.3
@1075
DO ~ActionOverride("O#CRALE",Kill(Myself))~
== O#CRCHRI @1076
== O#CRCHRI @1077
END
++ @1078 EXTERN O#CRCHRI c1.5
++ @1079 EXTERN O#CRCHRI c1.5
++ @1080 EXTERN O#CRCHRI c1.7

CHAIN O#CRALE c1.4
@1081
== O#CRCHRI @1082
== O#CRALE @1083
== O#CRCHRI @1084
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @1085
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1086
== O#CRALE @1087
END
++ @1088 DO ~SetGlobal("O#CrLynnLetGo5","GLOBAL",1) 
IncrementGlobal("O#CrLynnMercy","GLOBAL",1)
AddJournalEntry(@10290,QUEST)
ActionOverride("O#CRALE",EscapeArea())~ EXTERN O#CRCHRI c1.5
++ @1089 EXTERN O#CRALE c1.3

CHAIN O#CRCHRI c1.5
@1090
EXIT

CHAIN IF ~Global("O#CrChrisGetScroll","GLOBAL",0)~ THEN O#CRCHRI c1.6
@1091
EXIT

CHAIN O#CRCHRI c1.7
@1092
END
++ @1093 EXTERN O#CRCHRI c1.8
++ @1094 EXTERN O#CRCHRI c1.8
++ @1095 EXTERN O#CRCHRI c1.5

CHAIN O#CRCHRI c1.8
@1096
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1097
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1098
== O#CRCHRI @1099
DO ~AddJournalEntry(@10270,QUEST)~
END
++ @1100 EXTERN O#CRCHRI c1.9
++ @1101 EXTERN O#CRCHRI c1.5
++ @1102 EXTERN O#CRCHRI c1.5
++ @1103 EXTERN O#CRCHRI c1.5
+ ~PartyHasItem("SCRL90")~ + @1104 DO ~SetGlobal("O#CrChrisGetScroll","GLOBAL",2) 
AddExperienceParty(18500)
ActionOverride("O#CrChri",TakePartyItem("SCRL90")) 
AddJournalEntry(@10280,QUEST_DONE)~ EXTERN O#CRCHRI c1.11

CHAIN O#CRCHRI c1.9
@415
DO ~SetGlobal("O#CrChrisGetScroll","GLOBAL",1)~
EXIT

CHAIN IF ~Global("O#CrChrisGetScroll","GLOBAL",1)~ THEN O#CRCHRI c1.10
@1105
END
++ @65 EXIT
+ ~PartyHasItem("SCRL90")~ + @1106 DO ~SetGlobal("O#CrChrisGetScroll","GLOBAL",2) 
AddExperienceParty(18500)
ActionOverride("O#CrChri",TakePartyItem("SCRL90")) 
AddJournalEntry(@10280,QUEST_DONE)~ EXTERN O#CRCHRI c1.11

CHAIN O#CRCHRI c1.11
@1107
= @1108
DO ~ApplySpell("O#CrChri",WIZARD_INVISIBILITY) ActionOverride("O#CrChri",DestroySelf())~
EXIT

// Assassination 6.

BEGIN O#CRSTEE
BEGIN O#CRSTG1
BEGIN O#CRSTG2

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRSTEE st1
@1109
== O#CRSTG1 @1110
== O#CRSTG2 @1111
== O#CRSTEE @1112
END
++ @1113 EXTERN O#CRSTEE s1.1
++ @1114 EXTERN O#CRSTEE s1.2
++ @1115 EXTERN O#CRSTEE s1.2
++ @1116 EXTERN O#CRSTEE s1.0

CHAIN O#CRSTEE s1.0
@1117
DO ~SetGlobal("O#CrSteeHiredKill","GLOBAL",1)~
END
++ @1118 EXTERN O#CRSTEE s1.01
++ @1119 EXTERN O#CRSTEE s1.02
++ @1120 EXTERN O#CRSTEE s1.03

CHAIN O#CRSTEE s1.01
@1121
END
++ @1122 EXTERN O#CRSTEE s1.job
++ @1123 EXTERN O#CRSTEE s1.03

CHAIN O#CRSTEE s1.02
@1124
END
IF ~~ EXTERN O#CRSTEE s1.job

CHAIN O#CRSTEE s1.03
@1125
DO ~AddJournalEntry(@10340,QUEST)
ActionOverride("O#CRSTEE",Enemy()) 
ActionOverride("O#CRSTG1",Enemy()) 
ActionOverride("O#CRSTG2",Enemy())~
EXIT

CHAIN O#CRSTEE s1.2
@1126
END
IF ~~ EXTERN O#CRSTEE s1.job

CHAIN O#CRSTEE s1.1
@1127
END
++ @1128 EXTERN O#CRSTEE s1.2
++ @1129 EXTERN O#CRSTEE s1.0
++ @1130 EXTERN O#CRSTEE s1.3

CHAIN O#CRSTEE s1.3
@1131
END
++ @1132 EXTERN O#CRSTEE s1.03
++ @1133 EXTERN O#CRSTEE s1.2
++ @1134 EXTERN O#CRSTEE s1.0

CHAIN O#CRSTEE s1.job
@1135
== O#CRSTEE @1136
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @1137
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @1138
== O#CRSTEE @1139
DO ~SetGlobal("O#CrSimonSpawn","GLOBAL",1) 
AddJournalEntry(@10310,QUEST)~
END
++ @1140 EXTERN O#CRSTEE s1.job1
++ @1141 EXTERN O#CRSTEE s1.job1
++ @1142 EXTERN O#CRSTEE s1.job2
++ @1143 EXTERN O#CRSTEE s1.03

CHAIN O#CRSTEE s1.job1
@1144
EXIT

CHAIN O#CRSTEE s1.job2
@1145
= @1146
END
IF ~~ EXTERN O#CRSTEE s1.job1

CHAIN IF ~NumTimesTalkedToGT(0) Global("O#CrTask6Tasks","GLOBAL",0)~ THEN O#CRSTEE st2
@1147
END
++ @1148 EXTERN O#CRSTEE s2.0
++ @1149 EXTERN O#CRSTEE s2.0
+ ~PartyGoldGT(399) Global("O#CrTask6Simon","GLOBAL",1)~ + @1150 DO ~TakePartyGold(400) SetGlobal("O#CrTask6Tasks","GLOBAL",1) AddExperienceParty(2500)~ EXTERN O#CRSTEE s2.1

CHAIN O#CRSTEE s2.0
@1151
EXIT

CHAIN O#CRSTEE s2.1
@1152
= @1153
DO ~EraseJournalEntry(@10310)
AddJournalEntry(@10320,QUEST)~
END
++ @1154 EXTERN O#CRSTEE s2.2
++ @860 EXTERN O#CRSTEE s2.3
++ @1155 EXTERN O#CRSTEE s2.4
++ @1156 EXTERN O#CRSTEE s2.5

CHAIN O#CRSTEE s2.2
@1157
EXIT

CHAIN O#CRSTEE s2.3
@1158
EXIT

CHAIN O#CRSTEE s2.4
@1159
EXIT

CHAIN O#CRSTEE s2.5
@1160
EXIT

CHAIN IF ~Global("O#CrTask6Tasks","GLOBAL",1)~ THEN O#CRSTEE st3
@1161
END
++ @1162 EXTERN O#CRSTEE s3.0
++ @1163 EXTERN O#CRSTEE s1.03
+ ~Global("O#CrTask6Thumb","GLOBAL",1)~ + @1164 DO ~SetGlobal("O#CrTask6Tasks","GLOBAL",2) AddExperienceParty(15500)~ EXTERN O#CRSTEE s3.1

CHAIN O#CRSTEE s3.0
@1165
EXIT

CHAIN O#CRSTEE s3.1
@1166
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @1167
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1168
== O#CRSTEE @1169
== O#CRSTEE @1170
DO ~EraseJournalEntry(@10320)
AddJournalEntry(@10330,QUEST)
GivePartyGold(800)~
END
++ @1171 EXTERN O#CRSTEE s3.2
++ @1172 EXTERN O#CRSTEE s3.2a
++ @1173 EXTERN O#CRSTEE s3.3
++ @1174 EXTERN O#CRSTEE s3.4

CHAIN O#CRSTEE s3.2
@1175
EXIT

CHAIN O#CRSTEE s3.2a
@1176
EXIT

CHAIN O#CRSTEE s3.3
@1177
EXIT

CHAIN O#CRSTEE s3.4
@1178
END
++ @1179 EXTERN O#CRSTEE s1.03
++ @1180 EXTERN O#CRSTEE s3.2

CHAIN IF ~Global("O#CrTask6Tasks","GLOBAL",2)~ THEN O#CRSTEE st4
@1181
END
++ @1182 EXTERN O#CRSTEE st4.0
++ @1183 EXTERN O#CRSTEE s1.03
+ ~Global("O#CrTask6Guard","GLOBAL",1)~ + @1184 DO ~SetGlobal("O#CrTask6Tasks","GLOBAL",3) AddExperienceParty(15500)~ EXTERN O#CRSTEE st4.1

CHAIN O#CRSTEE st4.0
@1185
EXIT

CHAIN O#CRSTEE st4.1
@1186
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @1187
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @1188
== O#CRSTEE @1189
END
IF ~!Global("O#CrSteeHiredKill","GLOBAL",1)~ EXTERN O#CRSTEE st4.notkill
IF ~Global("O#CrSteeHiredKill","GLOBAL",1)~ EXTERN O#CRSTEE st4.kill

CHAIN O#CRSTEE st4.kill
@1190
== O#CRSTG1 @1132
== O#CRSTEE @1191
DO ~AddJournalEntry(@10340,QUEST)
ActionOverride("O#CRSTEE",Enemy()) 
ActionOverride("O#CRSTG1",Enemy()) 
ActionOverride("O#CRSTG2",Enemy())~
EXIT

CHAIN O#CRSTEE st4.notkill
@1192
END
++ @1193 EXTERN O#CRSTEE st4.2
++ @1194 EXTERN O#CRSTEE st4.3
++ @1195 EXTERN O#CRSTEE st4.4

CHAIN O#CRSTEE st4.2
@1196
== O#CRSTG1 @1197
== O#CRSTEE @1198
DO ~AddJournalEntry(@10340,QUEST)
ActionOverride("O#CRSTEE",Enemy()) 
ActionOverride("O#CRSTG1",Enemy()) 
ActionOverride("O#CRSTG2",Enemy())~
EXIT

CHAIN O#CRSTEE st4.3
@1199
EXIT

CHAIN O#CRSTEE st4.4
@1200
END
++ @1201 EXTERN O#CRSTEE s1.03
++ @1202 EXTERN O#CRSTEE st4.3
++ @1203 EXTERN O#CRSTEE st4.2

CHAIN IF ~Global("O#CrTask6Tasks","GLOBAL",3)~ THEN O#CRSTEE st4.5
@1204
END
++ @1205 EXTERN O#CRSTEE st4.2
++ @1206 EXTERN O#CRSTEE st4.6

CHAIN O#CRSTEE st4.6
@1207
EXIT

CHAIN IF ~RandomNum(2,1)~ THEN O#CRSTG1 st5.1
@1208
EXIT

CHAIN IF ~RandomNum(2,2)~ THEN O#CRSTG1 st5.2
@1209
EXIT

CHAIN IF ~RandomNum(2,1)~ THEN O#CRSTG2 st5.3
@1210
EXIT

CHAIN IF ~RandomNum(2,2)~ THEN O#CRSTG2 st5.4
@1211
EXIT

BEGIN O#CRSIM

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRSim sim1
@1212
DO ~SetGlobal("O#CrTask6Simon","GLOBAL",1)~
END
++ @1213 EXTERN O#CRSIM sim1.1
++ @1214 EXTERN O#CRSIM sim1.1
++ @1215 DO ~ActionOverride("O#CRSIM",Kill(Myself))~ EXIT

CHAIN O#CRSIM sim1.1
@1216
END
++ @1217 EXTERN O#CRSIM sim1.2
++ @1218 EXTERN O#CRSIM sim1.2
++ @1219 EXTERN O#CRSIM sim1.2

CHAIN O#CRSIM sim1.2
@860
END
++ @1220 EXTERN O#CRSIM sim1.3
++ @1221 EXTERN O#CRSIM sim1.3
++ @1222 EXTERN O#CRSIM sim1.3

CHAIN O#CRSIM sim1.3
@1223
END
++ @1224 EXTERN O#CRSIM sim1.4
++ @1225 EXTERN O#CRSIM sim1.4
++ @1226 EXTERN O#CRSIM sim1.4

CHAIN O#CRSIM sim1.4
@1227
END
++ @1228 EXTERN O#CRSIM sim1.5
++ @1229 EXTERN O#CRSIM sim1.5
++ @1230 EXTERN O#CRSIM simS6.meddle
++ @1215 DO ~ActionOverride("O#CRSIM",Kill(Myself))~ EXIT

CHAIN O#CRSIM sim1.5
@1231
DO ~GivePartyGold(400)~
END
++ @1232 EXTERN O#CRSIM sim1.6
++ @1233 EXTERN O#CRSIM sim1.6
++ @1234 EXTERN O#CRSIM sim1.7

CHAIN O#CRSIM sim1.6
@1235
DO ~EscapeArea()~
EXIT

CHAIN O#CRSIM simS6.meddle
@1235
DO ~GivePartyGold(5)
EscapeArea()~
EXIT

CHAIN O#CRSIM sim1.7
@1236
DO ~EscapeArea()~
EXIT

EXTEND_BOTTOM THUMB 0
+ ~Global("O#CrTask6Tasks","GLOBAL",1) Global("O#CrTask6Thumb","GLOBAL",0)~ + @1237 DO ~SetGlobal("O#CrTask6Thumb","GLOBAL",1)~ EXTERN THUMB thumb0
END

EXTEND_BOTTOM THUMB 6
+ ~Global("O#CrTask6Tasks","GLOBAL",1) Global("O#CrTask6Thumb","GLOBAL",0)~ + @1237 DO ~SetGlobal("O#CrTask6Thumb","GLOBAL",1)~ EXTERN THUMB thumb0
END

CHAIN THUMB thumb0
@1238
EXIT

EXTEND_BOTTOM AESOLD 5
+ ~PartyGoldGT(799) Global("O#CrTask6Guard","GLOBAL",0) Global("O#CrTask6Tasks","GLOBAL",2)~ + @1239 DO ~SetGlobal("O#CrTask6Guard","GLOBAL",1) TakePartyGold(800)~ EXTERN AESOLD guard0
END

CHAIN AESOLD guard0
@1240
END
++ @1241 EXTERN AESOLD guard0.1
++ @1242 EXTERN AESOLD guard0.2

CHAIN AESOLD guard0.1
@1243
EXIT

CHAIN AESOLD guard0.2
@1244
= @1245
DO ~AddJournalEntry(@10510,QUEST) SetGlobal("O#CrLynnBlackLotus","GLOBAL",1)~
EXIT

// Assassination 7.

BEGIN O#CRQYR

CHAIN IF ~Global("O#CrLynnQuestSpawn7","GLOBAL",1)~ THEN O#CRQYR q1
@1246
DO ~SetGlobal("O#CrLynnQuestSpawn7","GLOBAL",2)
AddJournalEntry(@10360,QUEST)~
END
++ @1247 EXTERN O#CRQYR q1.1
++ @1248 EXTERN O#CRQYR q1.2
++ @26 EXTERN O#CRQYR q1.2

CHAIN O#CRQYR q1.1
@1249
END
IF ~~ EXTERN O#CRQYR q1.2

CHAIN O#CRQYR q1.2
@1250
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1251
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @1252
== O#CRQYR @1253
END
++ @1254 EXTERN O#CRQYR q1.3
++ @1255 EXTERN O#CRQYR q1.4
++ @907 EXTERN O#CRQYR q1.5
 
CHAIN O#CRQYR q1.3
@1256
DO ~EscapeArea()~
/*
DO ~EscapeAreaMove("AR2000",1563,166,0)~
*/
EXIT

CHAIN O#CRQYR q1.4
@1257
END
IF ~~ EXTERN O#CRQYR q1.end

CHAIN O#CRQYR q1.5
@1258
END
IF ~~ EXTERN O#CRQYR q1.end

CHAIN O#CRQYR q1.end
@1259
DO ~EscapeArea()~
/*
DO ~EscapeAreaMove("AR2000",1563,166,0)~
*/
EXIT

CHAIN IF ~Global("O#CrLynnQuestSpawn7","GLOBAL",3)~ THEN O#CRQYR q2
@1260
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @1261
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @1262
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @1263
== O#CRQYR @1264
END
++ @1265 DO ~SetGlobal("O#CrLynnQuestSpawn7","GLOBAL",4)~ EXTERN O#CRQYR q2.0
++ @1266 DO ~SetGlobal("O#CrLynnQuestSpawn7","GLOBAL",4)~ EXTERN O#CRQYR q2.1
++ @1267 DO ~SetGlobal("O#CrLynnQuestSpawn7","GLOBAL",4)~ EXTERN O#CRQYR q2.2

CHAIN O#CRQYR q2.0
@1268
= @1269
END
IF ~~ EXTERN O#CRQYR q2.3

CHAIN O#CRQYR q2.1
@1270
END
IF ~~ EXTERN  O#CRQYR q2.3

CHAIN O#CRQYR q2.2
@1271
END
IF ~~ EXTERN O#CRQYR q2.3

CHAIN O#CRQYR q2.3
@1272
END
++ @1273 EXTERN O#CRQYR q2.4
++ @1274 EXTERN O#CRQYR q2.5
++ @1275 EXTERN O#CRQYR q2.6
++ @1276 EXTERN O#CRQYR q2.7
++ @1277 EXTERN O#CRQYR q2.8

CHAIN O#CRQYR q2.4
@1278
END
IF ~~ EXTERN O#CRQYR q2.9

CHAIN O#CRQYR q2.5
@1279
END
IF ~~ EXTERN O#CRQYR q2.9

CHAIN O#CRQYR q2.6
@1280
END
IF ~~ EXTERN O#CRQYR q2.9

CHAIN O#CRQYR q2.7
@1281
END
IF ~~ EXTERN O#CRQYR q2.9

CHAIN O#CRQYR q2.8
@1282
END
IF ~~ EXTERN O#CRQYR q2.9

CHAIN O#CRQYR q2.9
@1283
DO ~AddJournalEntry(@10370,QUEST)
ClearAllActions() StartCutSceneMode() StartCutScene("O#CrCut3")~
EXIT

// Assassination 8.

EXTEND_BOTTOM RYLOCK 0 
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1284 DO ~SetGlobal("O#CrAskedRylock","GLOBAL",1)~ EXTERN RYLOCK a88
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1285 EXIT
END

EXTEND_BOTTOM RYLOCK 25 
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1284 DO ~SetGlobal("O#CrAskedRylock","GLOBAL",1)~ EXTERN RYLOCK a88
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1285 EXIT
END

EXTEND_BOTTOM RYLOCK 28
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1284 DO ~SetGlobal("O#CrAskedRylock","GLOBAL",1)~ EXTERN RYLOCK a88
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1285 EXIT
END

EXTEND_BOTTOM RYLOCK 23
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1284 DO ~SetGlobal("O#CrAskedRylock","GLOBAL",1)~ EXTERN RYLOCK a88
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1285 EXIT
END

EXTEND_BOTTOM RYLOCK 55 
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1284 DO ~SetGlobal("O#CrAskedRylock","GLOBAL",1)~ EXTERN RYLOCK a88
+ ~Global("O#CrAskedRylock","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1285 EXIT
END

CHAIN RYLOCK a88
@1286
EXIT

EXTEND_BOTTOM RIBALD 0
+ ~Global("O#CrAskedRibald","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",8)~ + @1287 DO ~SetGlobal("O#CrAskedRibald","GLOBAL",1)~ EXTERN RIBALD a8
END

CHAIN RIBALD a8
@1288
END
++ @1289 EXTERN RIBALD a8.1
++ @1290 EXTERN RIBALD a8.1
+ ~Global("RibaldJaheira","LOCALS",1)~ + @1291 EXTERN RIBALD a8.1

CHAIN RIBALD a8.1
@1292
DO ~AddJournalEntry(@10390,QUEST)~
EXIT

BEGIN O#CRTEA
BEGIN O#CRGAN

CHAIN IF ~True()~ THEN O#CRGan t0
@1293
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRTEA t1
@1294
END
++ @1295 EXTERN O#CRTEA t1.1
++ @1296 EXTERN O#CRTEA t1.1
++ @1297 EXTERN O#CRTEA t1.harpers
++ @1298 EXTERN O#CRTEA t1.2

CHAIN O#CRTEA t1.1
@1299
== O#CRGAN @1300
END
++ @1301 EXTERN O#CRTEA t1.3
++ @1302 EXTERN O#CRTEA t1.harpers
++ @1303 EXTERN O#CRTEA t1.3

CHAIN O#CRTEA t1.2
@1304
END
++ @1305 EXTERN O#CRTEA t1.2a
++ @1302 EXTERN O#CRTEA t1.harpers
++ @1303 EXTERN O#CRTEA t1.3

CHAIN O#CRTEA t1.2a
@1306
END
IF ~~ EXTERN O#CRTEA t1.3

CHAIN O#CRTEA t1.3
@1307
== O#CRGAN @1308
== O#CRTEA @1309
END
IF ~~ EXTERN O#CRTEA t1.harpers

CHAIN O#CRTEA t1.harpers
@1310
== O#CRGAN @1311
== O#CRTEA @1312
END
++ @1313 EXTERN O#CRGAN t1.4
++ @1314 EXTERN O#CRGAN t1.4
++ @1315 EXTERN O#CRGAN t1.4
++ @1316 EXTERN O#CRGAN t1.4

CHAIN O#CRGAN t1.4
@1317
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1318
== O#CRGAN IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @1319
== O#CRGAN @1320
END
++ @1321 EXTERN O#CRGAN t1.5
++ @1322 EXTERN O#CRGAN t1.6
++ @1323 EXTERN O#CRTEA t1.end

CHAIN O#CRGAN t1.5
@1324
END
IF ~~ EXTERN O#CRGAN t1.6

CHAIN O#CRGAN t1.6
@1325
= @1326
END
++ @1327 EXTERN O#CRTEA t1.7
++ @1328 EXTERN O#CRTEA t1.7
++ @1329 EXTERN O#CRTEA t1.7

CHAIN O#CRTEA t1.7
@1330
== O#CRGAN @1331
== O#CRGAN @1332
== O#CRGAN @1333
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Dead("Galvarey")~ THEN @1334
== O#CRGAN @1335
END
++ @1336 EXTERN O#CRTEA t1.end
++ @1337 EXTERN O#CRTEA t1.end
++ @1338 EXTERN O#CRGAN t1.letgo
++ @1339 EXTERN O#CRGAN t1.letgo

CHAIN O#CRTEA t1.end
@1340
== O#CRGAN @1341
DO ~AddJournalEntry(@10410,QUEST)
ActionOverride("O#CrTea",Enemy()) 
ActionOverride("O#CrGan",Enemy())~
EXIT

CHAIN O#CRGAN t1.letgo
@1342
== O#CRTEA @1343
DO ~SetGlobal("O#CrLynnLetGo8","GLOBAL",1) 
IncrementGlobal("O#CrLynnMercy","GLOBAL",1)
AddJournalEntry(@10400,QUEST)
ActionOverride("O#CrTea",EscapeArea()) 
ActionOverride("O#CrGan",EscapeArea())~
EXIT

// Assassination 9.

BEGIN O#CRSOPH 
BEGIN O#CRKERN

EXTEND_BOTTOM BSHOP02 0
+ ~Global("O#CrLynnQuest","GLOBAL",9) Global("O#CRAskedBS1Sophie","GLOBAL",0)~ + @1344 DO ~SetGlobal("O#CRAskedBS1Sophie","GLOBAL",1)~ EXTERN BSHOP02 bs1
END

CHAIN BSHOP02 bs1
@1345
EXIT

CHAIN IF WEIGHT #-1 ~Global("O#CRAskedBP1Sophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ THEN BPROST1 bp1
@1346
DO ~SetGlobal("O#CRAskedBP1Sophie","GLOBAL",1)~
END
++ @1347 EXTERN BPROST1 bp1.1
++ @1348 EXIT

CHAIN BPROST1 bp1.1
@1349
EXIT

CHAIN IF WEIGHT #-1 ~Global("O#CRAskedBP2Sophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ THEN BPROST2 bp2
@1350
DO ~SetGlobal("O#CRAskedBP2Sophie","GLOBAL",1)~
END
++ @1347 EXTERN BPROST2 bp2.1
++ @1348 EXIT

CHAIN BPROST2 bp2.1
@1351
= @1352
EXIT

EXTEND_BOTTOM MURDGIRL 0
+ ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ + @1353 DO ~SetGlobal("O#CRAskedAboutSophie","GLOBAL",1)~ EXTERN MURDGIRL s1
+ ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ + @1354 EXIT
END

EXTEND_BOTTOM MURDGIRL 1
+ ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ + @1353 DO ~SetGlobal("O#CRAskedAboutSophie","GLOBAL",1)~ EXTERN MURDGIRL s1
+ ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ + @1354 EXIT
END

EXTEND_BOTTOM MURDGIRL 2
+ ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ + @1353 DO ~SetGlobal("O#CRAskedAboutSophie","GLOBAL",1)~ EXTERN MURDGIRL s1
+ ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ + @1354 EXIT
END

CHAIN IF WEIGHT #2 ~Global("O#CRAskedAboutSophie","GLOBAL",0) Global("O#CrLynnQuest","GLOBAL",9)~ THEN MURDGIRL ask
@1355
DO ~SetGlobal("O#CRAskedAboutSophie","GLOBAL",1)~ 
END
++ @1353 EXTERN MURDGIRL s1
++ @1354 EXIT

CHAIN MURDGIRL s1
@1356
END
++ @1357 EXTERN MURDGIRL s1.1
++ @1358 EXTERN MURDGIRL s1.2
++ @1359 EXTERN MURDGIRL s1.1

CHAIN MURDGIRL s1.0
@1360
DO ~AddJournalEntry(@10430,QUEST)~
EXIT

CHAIN MURDGIRL s1.1
@1361
END
++ @1362 EXTERN MURDGIRL s1.3
++ @1363 EXTERN MURDGIRL s1.3 

CHAIN MURDGIRL s1.2
@1364
END
IF ~~ EXTERN MURDGIRL s1.1

CHAIN MURDGIRL s1.3
@1365
END
++ @1366 EXTERN MURDGIRL s1.4
++ @1367 EXTERN MURDGIRL s1.4
++ @1368 EXTERN MURDGIRL s1.0

CHAIN MURDGIRL s1.4
@1369
DO ~AddJournalEntry(@10430,QUEST)~
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRSOPH c1
@1370
END
++ @1371 EXTERN O#CRSOPH c1.1
++ @1372 EXTERN O#CRSOPH c1.2
++ @1373 EXTERN O#CRSOPH c1.3
++ @1374 EXTERN O#CRSOPH c1.1

CHAIN O#CRSOPH c1.1
@1375
END
++ @1376 EXTERN O#CRSOPH c1.4
++ @1377 EXTERN O#CRSOPH c1.5
++ @1378 EXTERN O#CRSOPH c1.6
++ @1379 EXTERN O#CRSOPH c1.7

CHAIN O#CRSOPH c1.2
@1380
END
IF ~~ EXTERN O#CRSOPH c1.1

CHAIN O#CRSOPH c1.3
@1381
END
IF ~~ EXTERN O#CRSOPH c1.1

CHAIN O#CRSOPH c1.4
@1382
END
IF ~~ EXTERN O#CRSOPH c1.8

CHAIN O#CRSOPH c1.5
@1383
END
IF ~~ EXTERN O#CRSOPH c1.8

CHAIN O#CRSOPH c1.6
@1384
END
IF ~~ EXTERN O#CRSOPH c1.8

CHAIN O#CRSOPH c1.7
@1385
END
IF ~~ EXTERN O#CRSOPH c1.8

CHAIN O#CRSOPH c1.8
@1386
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1387
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @1388
== O#CRSOPH @1389
END
++ @1390 EXTERN O#CRSOPH c1.kern
++ @1391 EXTERN O#CRSOPH c1.kern
++ @1392 EXTERN O#CRSOPH c1.kern

CHAIN O#CRSOPH c1.kern
@1393
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("O#CRCut4")~
EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN O#CRKERN k1
@1394
== O#CRSOPH @1395
== O#CRKERN @1396
== O#CRSOPH @1397 
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("O#CRCut5")~
EXIT

CHAIN IF ~NumTimesTalkedToGT(0)~ THEN O#CRKERN k2
@1398
END
++ @586 EXTERN O#CRKERN k2.1
++ @1399 EXTERN O#CRKERN k2.1
++ @1400 EXTERN O#CRKERN k2.2
+ ~Gender(Player1,FEMALE)~ + @1401 EXTERN O#CRKERN k2.0

CHAIN O#CRKERN k2.0
@1402
END
IF ~~ EXTERN O#CRKERN k2.1

CHAIN O#CRKERN k2.1
@1403
END
IF ~~ EXTERN O#CRKERN k2.2

CHAIN O#CRKERN k2.2
@1404
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @1405
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @1406
== O#CRKERN @1407
END
++ @1408 EXTERN O#CRKERN k2.3
++ @1409 EXTERN O#CRKERN k2.4
++ @1410 EXTERN O#CRKERN k2.5
++ @1411 EXTERN O#CRKERN k2.5
++ @1412 EXTERN O#CRKERN k2.6

CHAIN O#CRKERN k2.3
@1413
END
IF ~~ EXTERN O#CRKERN k2.end

CHAIN O#CRKERN k2.4
@1414
END
IF ~~ EXTERN O#CRKERN k2.end

CHAIN O#CRKERN k2.5
@1415
DO ~Enemy()~
EXIT

CHAIN O#CRKERN k2.6
@1416
END
++ @1417 EXTERN O#CRKERN k2.7
++ @1418 EXTERN O#CRKERN k2.5

CHAIN O#CRKERN k2.7
@1419
END
IF ~~ EXTERN O#CRKERN k2.end

CHAIN O#CRKERN k2.end
@1420
DO ~AddJournalEntry(@10440,QUEST) Enemy()~
EXIT