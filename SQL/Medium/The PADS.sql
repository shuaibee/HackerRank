SELECT CONCAT(name,CONCAT('(',LEFT(Occupation,1),')')) 
FROM Occupations 
ORDER BY name ASC;

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ',LOWER(Occupation),'s.') AS output FROM Occupations GROUP BY occupation ORDER BY COUNT(Occupation) ASC, output ASC;