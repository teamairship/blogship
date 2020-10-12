
# Airship Blog

The unofficial blog of Team Airship

* Guests can view published content and author list
* Authors can edit their profile & posts
* Admins can view the list of authors and edit any post

## Tasks

### Flash notifications (styling)

There are currently no styles on the flash notifications and users are not seeing them.

Add some basic styles to make them more noticeable.

### BUG: Publishing

It has been reported that authors are not able to publish their posts.

### Permissions

Currently, anyone can see the create/update/destroy links for posts.

Update the view logic to only show links to those who have access to that action.

Guests (not logged-in) should be able to view a post, but not be able to see create/update/destroy links for a post.
Logged-in users should be able to create new posts and see links to update/destroy their own posts.
Admins should be able to see everything.

### Date Picker

Currently you have to enter the published date manually into the post form.

Add a date picker for the post published_date form field to make this easier for authors.

### User Bio

As an author (user), I want to be able to write a short bio that is displayed with each of my post.

### Categories

As an author, I would like to be able to assign a category to my post from an existing list of options.

As an admin, I can manage the list of categories available to the authors.

### Author Titles

As a user, I should be able to click on an Author's name and get a list of titles and links to their published articles.

### Query optimization

The post index listing is making too many database queries and it will not scale as is.

Refactor the query to make fewer calls to the database.


### Bonus: Add graphql post query 

A graphql server is running in the Rails application and you can test queries out in your browser at /graphiql.

We currently have a graphql query setup for users.

Update the graphql Post type to include published_date and user.

Add a graphql query for posts - only return posts that are published.


