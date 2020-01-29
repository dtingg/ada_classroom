# Capstone Concept - Dianna Tingg

## Problem Statement #1
Signing up for a potluck can be confusing.  There is no standard way of doing things, so people use all types of media to track signups.  Sometimes the signup sheet is a Google doc, sometimes it is a physical piece of paper posted somewhere, and sometimes there is no signup sheet at all!

## Problem Statement #2
There isn't a good way to share information about the food brought to a potluck.  For example, many people have dietary restrictions and others have severe food allergies.  However, it is impossible to visually detect all of the ingredients in a homemade dish.  Also, if you really enjoyed a certain item, it is difficult to get the recipe after the event.  

## MVP Feature Set
1. User accounts
   - The app should keep track of user accounts.
   - Users should be able to log in using OAuth.
2. Event pages
   - A user should be able to create an event page with the details for a potluck.
   - The event page should allow guests to enter details on which dish they are bringing (including an optional photo, recipe URL, and dietary restrictions/allergens).
3. Recipe pages
   - A user should be able to enter a recipe and store it on the site.
   - Guests should be able to leave comments on a recipe.

### Potential Additional Features
Users
1. Add permissions so that only invited guests can see the event page.
2. Create some kind of address book so it is easy to invite the same people to another potluck.

Events
1. Event pages should have options for different backgrounds/fonts.
2. App should automatically e-mail invitations and reminders to guests.
3. People should be able to add photos to the event page (photo album).
4. Pie chart showing breakdown of dish categories (percentage of meat, vegetables, breads, desserts, etc.).

Recipes
1. Users should be able to search the entire site for a recipe.
2. Users should be able to "favorite" a recipe.
3. App will use a nutrition API to create a food label for user-entered recipes.
4. App will use a recipe API to offer external recipe search results.

Other
1. Dynamic front-end using JavaScript/React or jQuery.
2. Additional pages regarding the history of potlucks, potluck ideas, etc.
3. "Iron Chef" potluck feature that automatically suggests recipes using a featured ingredient.

## Draft Technology Choices
- Python
- Django (full-stack)
- Edamam API (for recipe searching and nutrition analysis)
- Heroku or AWS Elastic Beanstalk (deployment)

## Additional content, diagrams, wireframes, user flows, etc.
None
