rem System : Demo: Sport Goods Orders
rem Descrip: Create stored procedures
rem Author : Alejandro Flores-Solis
rem Date   : 21/04/2024


create or replace procedure S_SALARY_RAISE (
    pEmployee   number,
    pPct        number
) is
BEGIN
    update S_EMP
    set    SALARY = SALARY * (1 + pPct/100),
           COMMENTS = 'Raise by API'
    where  ID     = pEmployee; 
END;
/


begin
  case :P3_COUNTRY
    when 'Mexico' then return ('POOR');
    when 'USA' then return('GOOD');
    else return('EXCELLENT');
  end case;
end;
