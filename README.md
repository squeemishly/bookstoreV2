# Bookstore

I would like an API that fulfills the requirements below. Reading through the description should give you an idea of what it supposed to accomplish. Some pieces may be ambiguous or even missing but I value your product/feature decisions (we're a team right?). Think of this exercise not as a way for me to evaluate you but as a way for me to understand your work.

Commit/comment when/how you naturally would and when you're finished submit a pull request so I can check it out. If this takes you longer than 4hrs I would say submit what you have because I'll have enough to go off of at that point. The goal isn't necessarily to finish all the tasks in the time given but to do well with the tasks that you do finish. I don't expect full test coverage but I'd like for there to be some amount of effort.

Any questions feel free to ping me

### Description

I have a bookstore. My bookstore has 6 shelves and 4 tables. I also have 'the back' where I put all the books I don't have on display. Customers may also come in to purchase my books.

- A shelf can hold 12 books
- A table can hold 4 books
- 'The back' can hold any number of books
- I can have multiple copies of a book and those multiple copies can be in multiple places (each shelf might have one copy, there may be 5 in 'the back' and 1 on a shelf, etc.)

### Requirements

Fork this repo and create an API that achieves the following tasks

- I want to be able to move a book between my shelves, tables, or 'the back'
- I want to be able to purchase a book from a shelf or table
- I want to be able to search for a book and be shown it's location
- I want to be able to look at a table, a shelf, or 'the back' and see what books are in it
- When a self or table is running low on books I want books from 'the back' to fill it. It would be sweet if the books that fill it were similar to the books I've already sold.
