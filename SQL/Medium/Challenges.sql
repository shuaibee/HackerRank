with first_table as (select h.hacker_id, h.name, count(c.challenge_id) as num_challenges from hackers h join challenges c on h.hacker_id = c.hacker_id group by h.hacker_id, h.name),

second_table as (select num_challenges, count(num_challenges) as count_challenges from first_table group by num_challenges order by num_challenges DESC)

select f.hacker_id, f.name, f.num_challenges from first_table f join second_table s on f.num_challenges=s.num_challenges where s.count_challenges <=1 or s.num_challenges = (select max(num_challenges) from first_table) order by f.num_challenges DESC, f.hacker_id