SELECT * FROM kayit
SELECT isim,b�l�m_adi,bildigi_programlar FROM isciler
SELECT isim,b�l�m_adi,bildigi_programlar FROM isciler WHERE b�l�m_no>200 AND b�l�m_no<500 
SELECT isim,b�l�m_adi,bildigi_programlar FROM isciler WHERE b�l�m_adi='bt' OR isim='%e%' OR isim='c__'
SELECT isim,b�l�m_adi,bildigi_programlar FROM isciler WHERE isim IN('cemil','halil','mehmet')
SELECT * FROM kayit WHERE isler LIKE '%a%' OR ad LIKE '_a_'
SELECT ad,soyad,isler FROM kayit ORDER BY ad ASC 
SELECT ad AS "Carinin Adi" FROM kayit 
SELECT id+500 AS "YEN� TUTAR",ad,soyad,isler FROM kayit  
SELECT (id*50)/100 AS "HESAP",ad,soyad,isler FROM kayit  
SELECT ad,(soyad +' - '+ isler) FROM kayit
SELECT * FROM kayit WHERE ad LIKE 'm%'
SELECT * FROM kayit WHERE ad LIKE '%______s%'
SELECT * FROM kayit WHERE ad LIKE '[mh]%'
SELECT * FROM kayit WHERE ad LIKE '[m-h]%'
SELECT * FROM kayit WHERE ad LIKE '[^m-h]%'
SELECT SUBSTRING(isim,1,1) +'.'+b�l�m_adi AS "A.BOLUM_ADI" ,bildigi_programlar FROM isciler
SELECT LEFT(isim,1)+'.'+b�l�m_adi AS "AD BOLUM", bildigi_programlar FROM isciler
SELECT isim,b�l�m_adi,UPPER(bildigi_programlar) AS "B�LD�KLER�" FROM isciler
SELECT RTRIM(LTRIM(isim)), b�l�m_adi,bildigi_programlar FROM isciler
SELECT isim,LEN(isim) AS UZ1, LTRIM(isim) AS AD2, LEN(LTRIM(isim)) AS UZ2 FROM isciler
SELECT SUBSTRING(isim,1,1)+'.'+b�l�m_adi AS "ISIM_BOLUM" FROM isciler WHERE LEN(isim+' '+b�l�m_adi)>10
SELECT isim,b�l�m_adi,REPLACE(bildigi_programlar,'c','java') FROM isciler
SELECT isim,b�l�m_adi, ROUND(tutar/adet,2) AS "BFF�YAT" FROM isciler
SELECT SUM(tutar) AS "TOPLAM TUTAR" FROM isciler
SELECT ROUND(AVG(tutar),2) AS "ORTALAMA MAA�" FROM isciler
SELECT COUNT(DISTINCT isim) AS "SATIR" FROM isciler
SELECT CURRENT_TIMESTAMP AS "�U AN"
/*MONTH, WEEK, YEAR VE DAY KULLANARAK DETAYLI �EK�LDE KULLANILAB�L�R(DATEPART VE GETDATE �EKL�NDE)*/