select id, age, coins_needed, power from wands wa JOIN wands_property wap on wap.code = wa.code  where is_evil = 0 and coins_needed = (select min(coins_needed) from wands i where i.code = wa.code and i.power = wa.power) order by power desc, age desc;