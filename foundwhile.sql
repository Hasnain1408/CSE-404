DECLARE
  CURSOR C_ZIP IS
  SELECT
    *
  FROM
    EMPLOYEES;
  VR_ZIP C_ZIP%ROWTYPE;
BEGIN
  OPEN C_ZIP;
   FETCH C_ZIP INTO VR_ZIP;
  while C_ZIP%FOUND
  LOOP
    
    DBMS_OUTPUT.PUT_LINE(VR_ZIP.SALARY);
    FETCH C_ZIP INTO VR_ZIP;
  END LOOP;
END;
/