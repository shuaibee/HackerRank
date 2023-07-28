(SELECT CITY, Length(City) FROM STATION
  group by length(City), CITY
  having length(CITY) = (select max(length(City)) from Station)
  order by CITY ASC)
UNION
(SELECT CITY, Length(City) FROM STATION
  group by length(City), CITY
  having length(CITY) = (select min(length(City)) from Station)
  order by CITY ASC Limit 1)