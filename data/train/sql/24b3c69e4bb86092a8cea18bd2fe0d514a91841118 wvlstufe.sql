DROP TRIGGER UPDATE_WVL_STUFE;

CREATE TRIGGER UPDATE_WVL_STUFE AFTER UPDATE OF WVL ON BEWERBUNGEN
BEGIN 
UPDATE BEWERBUNGEN
SET WVLSTUFE = CAST(ROUND((JULIANDAY(NEW.WVL) - JULIANDAY(NEW.DATUM)) / 28) AS INT) - 1
WHERE JULIANDAY(NEW.WVL) - JULIANDAY(NEW.DATUM)  >= 28
AND NEW.BISDATUM IS NULL
AND ID=NEW.ID ;

UPDATE BEWERBUNGEN
SET WVLSTUFE = CAST(ROUND((JULIANDAY(NEW.WVL) - JULIANDAY(NEW.BISDATUM)) / 28) AS INT) - 1
WHERE JULIANDAY(NEW.WVL) - JULIANDAY(NEW.BISDATUM)  >= 28
AND NOT NEW.BISDATUM IS NULL
AND ID=NEW.ID ;
END
