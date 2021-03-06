INSERT INTO TBLOGRENCILER (OGRAD,OGRKULUP,OGRSEHIR) VALUES ('Berna',4,'Ankara')

SELECT NOTID,OGRAD + ' ' + OGRSOYAD AS 'AD SOYAD',DERSAD,SINAV1,SINAV2,SINAV3,ORTALAMA,
DURUM = CASE 
			WHEN DURUM='1' THEN 'Ge?ti'
			WHEN DURUM='0' THEN 'Kald?' END 
FROM TBLNOTLAR
INNER JOIN TBLDERSLER ON TBLNOTLAR.DERS=TBLDERSLER.DERSID
INNER JOIN TBLOGRENCILER ON TBLNOTLAR.OGRENCI=TBLOGRENCILER.OGRID

UPDATE TBLNOTLAR SET DURUM=0 WHERE ORTALAMA<50

UPDATE TBLNOTLAR SET ORTALAMA=(SINAV1+SINAV2+SINAV3)/3 


--DERSLER TABLOSUNDA ?SM? MATEMAT?K OLAN DERSE A?T SINAV NOT B?LG?S?
--SUBQUERY

SELECT * FROM TBLNOTLAR WHERE DERS=(SELECT DERSID FROM TBLDERSLER WHERE DERSAD='Matematik')


SELECT MAX(SINAV1) FROM TBLNOTLAR WHERE DERS=(SELECT DERSID FROM TBLDERSLER WHERE DERSAD='Algoritma')

SELECT * FROM TBLNOTLAR
INNER JOIN TBLOGRENCILER ON TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI

SELECT * FROM TBLNOTLAR
LEFT JOIN TBLOGRENCILER ON TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI

SELECT * FROM TBLNOTLAR
RIGHT JOIN TBLOGRENCILER ON TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI

SELECT * FROM TBLNOTLAR
FULL JOIN TBLOGRENCILER ON TBLOGRENCILER.OGRID=TBLNOTLAR.OGRENCI

SELECT * FROM TBLDERSLER UNION SELECT * FROM TBLKULUPLER --Hangi tabloyu ?nce yazarsam sonu?taki ba??klar ona g?r de?i?iyor
