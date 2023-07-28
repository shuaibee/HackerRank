with first_table as (
    select hacker_id, challenge_id, max(score) as max_score 
    from submissions 
    group by hacker_id, challenge_id
)

select h.hacker_id, h.name, SUM(f.max_score) from hackers h 
inner join first_table f on h.hacker_id = f.hacker_id
group by h.hacker_id, h.name
having SUM(f.max_score) > 0
order by SUM(f.max_score) DESC, h.hacker_id ASC 