use earlycodestore;

select * from studentsperformance;
select distinct(gender) from studentsperformance; #
select* from studentsperformance order by lunch;# order by return table in ascending order
select* from studentsperformance order by lunch desc; # order by desc return table in descending order
select* from studentsperformance group by gender; # group by is used with an aggregate function that will give the result based on group

select *, if (mathscore < 55,'True','False') as result from studentsperformance;
select gender , raceethnicity, ifnull(gender, lunch) as result from studentsperformance;
select raceethnicity, nullif(mathscore,readingscore) from studentsperformance; # nullif returns null if both values are the same and return the first one when both values are not the same

select *,
	case raceethnicity
    when 'group A' then 'Asian'
    when 'group B'then 'South American'
	when 'group c'then 'South European'
	when 'group D'then 'North American'
    else 'African'
end as race from studentsperformance;

     