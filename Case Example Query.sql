SELECT ename, job, (CASE job                   
 WHEN 'PRESIDENT' THEN 'big shot'
 WHEN 'MANAGER' THEN 'decides the pay'
 WHEN 'ANALYST' THEN 'good at math'
 WHEN 'CLERK' THEN 'hard working'
 ELSE 'no comment'
 END) as 'COMMENT'
FROM emp;

