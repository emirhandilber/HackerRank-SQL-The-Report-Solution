/* Lets make an if statement; we want to grades in grades table bigger then 8 so I can make the grades less then 8 print null on the name column 
and select grade and marks on their tables
*/
select if(g.grade<8,null,s.name),g.grade,s.marks from students as s
/* Join the grades table and give "g" alias to the table */
join grades as g
/* lets constraint the marks table to give the grades*/
where s.marks between g.min_mark and g.max_mark
/* order the table by grade column and name column*/ 
order by grade desc, name asc