DELIMITER $$
CREATE PROCEDURE getName(IN id INT, OUT oname VARCHAR(100))
BEGIN
SELECT ename INTO oname FROM empl where eid=id;
END $$
DELIMITER ;
SET @pname='yyyy';
CALL getname(3,@pname);
SELECT @pname;