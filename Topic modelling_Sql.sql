
# Analyse keywords with the comments based on sentiments

# Topic 0 time easy system issue access find lot hard computer work - time* easy* system* issue* access* find* lot* hard* +computer* work*

#Topic 1 : learn opportunity train thing skill job lot help apply good
#Topic 2 : receive interview offer job great day good feedback hire happy
#Topic 3 : feel welcome comfortable day team friendly people environment professional discover

select *
from `monkey-survey`.exi_discover_pilot ;


#  Comparing keywords with comments based on Boolean logic
# Use * as wild card operator (ex: Join*)

select type, Journey, Questions, Comments, sentiments
from `monkey-survey`.exi_discover_pilot 
where match(comments) 
against ( 'receive* interview offer* job great day good +feedback hire* happy' in BOOLEAN MODE)
order by sentiments;

# Count of comments based on sentiments for each topic

SELECT count(comments) as count, sentiments FROM `monkey-survey`.exi_discover_pilot WHERE MATCH(comments)
AGAINST('time easy system issue access find lot hard computer work' IN BOOLEAN MODE) 
group by Sentiments
Order by journey;