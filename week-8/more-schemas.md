##Reflection##
###What is a one-to-one database?###
A one-to-one database is one that has tables that are linked by a single field. Each entry in one table would have one point of overlap with any entry on the other table. In this [schema](imgs/One-to-one-schema.png) of a one-to-one database, each athlete has just one row on the *athletes* table and each also has just one row on the *race* table (since one athlete would not be running the same race more than one time on any given date).


###When would you use a one-to-one database? (Think generally, not in terms of the example you created).###
A one-to-one database is useful for intersections of relatively simple tables. Right now, I'm thinking of these things in terms of dimensions, where the tables that would be in a one-to-one database are like planes: [two dimensional](imgs/intersecting-planes.png) (where columns and rows = height and width) but not three dimensional (columns and rows and stacks = height, width and depth).

Each table within the database has its own purpose. In other words, neither one exists **only** for the purpose of expressing data in terms of the other table. In my example, you might want to see the whole list of athletes who ran a race and their statistics without also seeing the ages and trainers for the athletes. Otherwise, you would just need one table with all the data points rather than two tables that intersect. 


###What is a many-to-many database?###
A many-to-many database is one whose tables have multiple points of intersection. Items on one table might appear in many places on another table and/or vice versa. Here's a [schema](imgs/many-to-many-schema.png) of a many-to-many database.

###When would you use a many-to-many database? (Think generally, not in terms of the example you created).###
You'd want a many-to-many database to show more complex relationships among data and tables. While a one-to-one relationship has only one point of intersection, many-to-many relationships have multiple points. To keep on with my mental image of dimensionality, [this](imgs/intersecting-cubes.png) is how I picture a many-to-many database. (Although it's more likely that the overlap would be sprinkled throughout the tables rather than all showing up in one coner of each one but my artistic abilities are not up to modeling that in LibreOfficeDraw).


###What is confusing about database schemas? What makes sense?###
The hardest thing for me is visualizing how the relationships work as the tables increase in complexity. That's why I keep coming trying to think of them in terms of physical objects rather than only as abstract. I suspect that the complexity will pretty quickly overwhelm my visualization ability but it's helping with the relatively simple ones we've seen so far. 

I like organizing information so databases in general make sense to me (so far). It seems like it's important to decide what information goes together into a single table and what should be in a separate table or tables.