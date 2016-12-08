
# Election Year Query
select * 
from CANDIDATE 
where Year = 2012;

# Candidate Query
select c.Name, rm.rName as Running_Mate, c.Year, c.Party, c.Popular, c.Percentage, c.Electoral, c.Polling 
from CANDIDATE c, RUNNING_MATE rm 
where c.Name = "Barack Obama" and rm.cName = "Barack Obama" and c.Year = rm.StartYear;

#Non-contiguous Query
select *
from PRESIDENT p
where p.name in (
select t.Name
from 
	(select p1.Name, p1.StartYear as sy1, p2.StartYear as sy2
	from PRESIDENT p1
	inner join PRESIDENT p2
	on p1.Name = p2.Name) as t
where t.sy2 > t.sy1 + 4) and p.name != 'Franklin D. Roosevelt';

#Swing Candidate Query
select c.Name, rm.rName as Running_Mate, c.Year, c.Party, c.Popular, c.Percentage, c.Electoral, c.Polling 
from CANDIDATE c, RUNNING_MATE rm
where c.Name in (
select cc.Name
from
	(select c1.Name, c1.Party as p1, c2.Party as p2
	from CANDIDATE c1
	inner join CANDIDATE c2
	on c1.Name = c2.Name) as cc
where p1 != p2)
and c.Name = rm.cName and c.Year = rm.StartYear;

#Party Query
select Party, Year, Popular, Percentage, Electoral
from CANDIDATE c
where c.Party = 'Republican';

#State Query
select * 
from STATE
where sName = 'Maryland'
order by Year;

# Vice president count per president
select pName, count(*) as VPCount
from VICE_PRESIDENT
where vName != 'None'
group by pName
order by VPCount desc;

#Faithless Elector Query
select *
from PRESIDENT p, RUNNING_M;

#Presidential Picture Query


#Non-elected Query
select Name, StartYear 
from PRESIDENT 
where StartYear % 4 != 0;


