BEGIN ~CALSHOP1~

IF ~True()~ THEN BEGIN 5
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 6
  IF ~~ THEN REPLY @2 GOTO 7
  IF ~~ THEN REPLY @3 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 7
  IF ~~ THEN REPLY @6 DO ~StartStore("calshop1",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END
