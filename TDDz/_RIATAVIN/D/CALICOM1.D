BEGIN ~CALICOM1~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 EXIT
  IF ~~ THEN REPLY @8 GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @12
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @14 EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 14
  IF ~~ THEN REPLY @18 EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 8
  IF ~PartyGoldGT(9)~ THEN REPLY @21 GOTO 11
  IF ~PartyGoldGT(99)~ THEN REPLY @22 GOTO 12
  IF ~PartyGoldGT(999)~ THEN REPLY @23 GOTO 9
  IF ~PartyGoldGT(2999)~ THEN REPLY @24 GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @25
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY @26
  IF ~~ THEN DO ~ReputationInc(1)
TakePartyGold(1000)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY @27
  IF ~~ THEN DO ~ReputationInc(2)
TakePartyGold(3000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1
  SAY @28
  IF ~~ THEN DO ~TakePartyGold(10)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.2
  SAY @29
  IF ~~ THEN DO ~TakePartyGold(100)~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 3.2
  SAY @30
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY @31
  IF ~~ THEN EXIT
END
