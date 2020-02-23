
SELECT  *
FROM `monkey-survey`.exi_discover_pilot;

select journey, Count(comments), sentiments	
FROM `monkey-survey`.exi_discover_pilot
group by journey, sentiments
Order by journey, count(comments);


select Count(Sentiments), journey,Sentiments, avg(Rating_Encoded)
FROM `monkey-survey`.exi_discover_pilot
where type != "NPS"
group by journey, sentiments
ORDER BY journey;

select type, Count(Sentiments), journey,Sentiments, avg(Rating)
FROM `monkey-survey`.exi_discover_pilot
where type = "NPS"
group by journey, sentiments
ORDER BY journey;

select journey, avg(Rating) as avg_NPS, avg(Rating_Encoded) as avg_CSAT, sentiments
FROM `monkey-survey`.exi_discover_pilot
where type != "NPS"
group by journey, sentiments;


