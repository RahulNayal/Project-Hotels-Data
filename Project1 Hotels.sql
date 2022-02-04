
with hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select * from hotels h
left join dbo.market_segment$ ms
on h.market_segment = ms.market_segment
left join dbo.meal_cost$ mc
on h.meal = mc.meal







select arrival_date_year,hotel ,round(sum((stays_in_week_nights+stays_in_weekend_nights) * adr),2) as revenue 
from hotels
group by arrival_date_year, hotel