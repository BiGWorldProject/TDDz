BEGIN ~BANSHEE1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~Class(LastTalkedToBy(),PALADIN)~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 3.2 3.1 1.2 1.1 1.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~Class(LastTalkedToBy(),PALADIN)~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN EXIT
END
