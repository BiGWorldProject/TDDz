BEGIN ~WARDMAGB~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~WARDMAGA~ 0
END

IF ~~ THEN BEGIN 1 // from: ELMIN01:3.0
  SAY @1
  IF ~~ THEN EXTERN ~WARDMAGA~ 2
END
