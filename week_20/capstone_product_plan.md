# Product Plan - Dianna Tingg

## Learning Goals
- Learn Python and Django in order to build a functional REST API that serves as my application's back end.
- Gain more experience with JavaScript and React by building a dynamic and modern front end for my application.
- Integrate an external API to add more functionality to my application.

## Problem Statement #1
Signing up for a potluck can be confusing.  There is no standard way of doing things, so people use all types of media to track signups.  Sometimes the signup sheet is a Google doc, sometimes it is a physical piece of paper posted somewhere, and sometimes there is no signup sheet at all!

## Problem Statement #2
There isn't a good way to share information about the food brought to a potluck.  For example, many people have dietary restrictions and others have severe food allergies.  However, it is impossible to visually detect all of the ingredients in a homemade dish.  Also, if you really enjoyed a certain item, it is difficult to get the recipe after the event.  

## Market Research
**1. Potluck Buddies (https://potluckbuddies.com/)**  

- Pros
  - Potluck specific
  - Includes many ways to log in (Amazon, Facebook, Google, Instagram, LinkedIn, Tumblr, Twitter)
  - Can send e-mail invitations
  - Has add to calendar feature (Google Calendar, iCal/Apple, Outlook/Windows)
  - Has Google Maps link with directions option

- Cons
  - Site name is stupid
  - Website is not dynamic
  - Colors, fonts, and photos look cheesy
  - Event page is ugly
  - Has ads

**2. SignUpGenius (https://www.signupgenius.com/)**

- Pros
  - Offers log in with Facebook
  - Can send e-mail invitations
  - Can choose different backgrounds for event page
  - Shows some analytics

- Cons
  - Site name is stupid
  - Website is not dynamic
  - Has ads

My app will have a few key differences.  I plan to design a modern single page app that is dynamic and fun to use.  I will make it easy for anyone to sign up for a potluck online.  I will also focus on providing more information about the specific dishes being brought, including their actual recipes and any food allergens.  My app will also have a feature that allows users to search for recipes online.

## Target Audience
My app targets people who love to potluck!  Generally, people plan potlucks for work, school, or family gatherings.  I want to make it really easy to use, in case not everyone is tech savvy.  I also want to make it easy to share information, since details can get lost when potlucks have a large number of guests or when people don't know each other very well.  I think my app is particularly useful for people with dietary restrictions or food allergies.

## Trello Board
Link to your Trello board.

## Technologies
- Back end: Python and Django API, Edamam API (for recipe search)
- Front end: JavaScript and React
- Infrastructure: Heroku for deployment

## Wireframes
Link, attach, or insert wireframes here

## MVP Feature Set
1. User accounts
    - The app should keep track of user accounts.
    - Users should be able to log in using OAuth.

2. Event pages
   - A user should be able to create an event page with the details for a potluck.
   - The event page should allow guests to enter details on which dish they are bringing (including an optional photo, recipe URL, and dietary restrictions/allergens).
   - "Iron Chef" potluck feature that automatically suggests recipes using a featured ingredient.

3. Recipe pages
   - A user should be able to enter a recipe and store it on the site.
   - Guests should be able to leave comments on a recipe.
   - Users should be able to search the entire site for a recipe.
   - App will use a recipe API to offer external search results.

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
1. Logged in users should be able to "favorite" a recipe.
2. App will use a nutrition API to create a food label for user-entered recipes.

Other
1. Additional pages regarding the history of potlucks, potluck ideas, etc.
2. Blog
