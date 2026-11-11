with daily_trips_by_age_cte as (
	select 
		extract(year from age(t.started_at, u.birth_date)) as age, 
		date(t.started_at) as started_at_date, 
		count(*) as daily_trips
	from scooters_raw.trips t join scooters_raw.users u on t.user_id = u.id 
	group by extract(year from age(t.started_at, u.birth_date)), date(t.started_at)
)
select age, avg(daily_trips) as average_daily_trips
from daily_trips_by_age_cte
group by age
order by age