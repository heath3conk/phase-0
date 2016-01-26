**Here's a link to the [schema](Challenge_84_Schema.png) I created.**

###What are databases for?###

Databases are used for storing information. A database may consist of one or many tables and the tables are made up of a number of attributes, arranged in columns. The attributes hold specific types of data, such as integers, text, date, etc. Each row of the table contains the information about a single entity. 

For example, you could create a table called *my_family* and give the attributes *name, birthday, relationship, spouse.* and fill it in like this:

| name | birthday | relationship | spouse |
|----------|---------------------:|---------------------|---------------|
| Bill |   Sept 8 | father | Yvonne |
| Cathleen |  May 7 | sister | Chuck |
| Carol  |  May 7  | sister  |    |

Each row in the table represents one person in my family.

A database is likely to have many tables that contain related information. The tables would be linked by one or more pieces of data, keys, more on this below.


###What is a one-to-many relationship?###

A one-to-many relationship occurs when two tables are linked. An entity in one of the tables will could be connected to several entities in the other table. In the excercise we did about the virus, the id field in the regions table could be linked to mulitple states in the states table. The 'one' would be that id field in regions and the 'many' would be the regions_id field in states.


###What is a primary key? What is a foreign key? How can you determine which is which?###

A primary key is a field in a table that differentiates one entity within the table from another. It is unique and cannot be empty or NULL. For example, in the *my_family* table I created above, *name* could be the primary key since none of my immediate family members has the same name as any other and they all do, in fact, have names. Since my sisters are twins, I couldn't make *birthday* the primary key because two entities in the table would have the same one.

A foreign key is a field in a table that is connected to a primary key in another table. If I created a second table called *my_nieces_and_nephews*, I could have a field called *parent_name* which I'd link to the *name* field in the *my_family* table. Each of my sisters has two children so I'd have: 

| name  | parent_name  | age |
|---|---|---:|
| Luke | Carol | 15|
| David | Carol | 12 |
| Lexi | Cathleen | 3 |
| Bash | Cathleen | 1 |

Where a primary key must be unique in its table and cannot be NULL, neither of those restrictions apply to foreign keys. The main idea is to provide a point of connection between the two tables. This example is a one-to-many connection.


###How can you select information out of a SQL database? What are some general guidelines for that?###

You can select data from a database in many ways, from looking at the entire contents of a table or tables, to examining only data that meets certain conditions. As for general guidelines, it would sense to be as specific as you can be in selecting the data. If you know you only need to get at states whose populations are between 1 million and 1.5 million, that's what you should ask for. 

If you need to see information from more than one table, it's a good idea to specify how the two tables are connected, whether you only want to see those entities who have some overlap between the two, using the primay/foreign key (inner join) or all entities in one table whether or not they are related to any in the other table (outer join).

You can also manipulate data in the database, getting sums, averages, maximum or minimum values and sorting information by a particular column.
