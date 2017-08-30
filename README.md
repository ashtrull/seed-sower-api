[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Seed Sower
This Seed Sower app was developed through the Web Development Immersive at General Assembly. The game uses HTML, CSS, Javascript, and Ruby on Rails to create a resource app that helps users plan their garden.


## Development Process
The game was developed in multiple phases:

1. Wire-framing and planning
  - I designed a couple sketch wireframes with pen and paper to identify what the user interface would generally look like
  - I drafted user stories to think about what users would want and need to be able to do in order for the game to be functional and enjoyable.
      - "As a user I want to be able to search for seed start dates for the plants I want to growso I know when to plant them"
      - "As a user I want to be able to save information about the plants I want to grow so that I can come back to them in the future."
      - "As a user I want to be able to plan the order of my plantings so that I knwo which plants to prioritize"
      - "As a user I want to be able to see the plant dates based on my region's frost date so that I know know the dates are accurate to my climate zone."
      - "As a user I want to be able to search for good companion plants to the plants I'm growing to help my plants grow better"
  - I drew a logic map of the different elements of my app using an ERD diagram to help me identify the attributes of each object as well as their relationships to each other.
  - I made lists of the "Must-haves" and "Nice to have" to identify what the minimim viable version of my app would be and what I hope to develop over a longer period.
  - Check out images of my wireframes, user stories, and map on imgur:

2. API Set-up
  - Build scaffold for all the different objects in the app: plants, gardens, and users. The scaffold includes building a route, controller, model, and serializer for each.
  - Customize tables/schema to get the right combination of information in each table of the database.
  - Seed data into the plants database including: plant name, indoor start date, indoor growth period, and outdoor start date.
  - Run curl scripts on all CRUD actions to make sure the server is working. First I rant them on the local server and then switched to the remote heroku server.

3. HTML & CSS Development
  - Build basic HTML skeleton for the application
  - Add in forms and fields for user authentication: sign-up, sign-in, sign out, change password, and sign-in prompter
  - Add in forms, fields, and data for requesting and displaying data from the plants and gardens table: show all plants, all plants table, show my garden, add to garden, remove from garden.
  - Design basic CSS with simple color-scheme and layout

4. JavaScript Development
  - Build JavaScript logic that will take information that is collected through user actions and forms and use that information to communicate with the API. This include creating functions for sign-up, sign-in, sign-out, change password, start garden, get all plants, add plant to garden, remove plant from garden, and show my garden.
  - Develop each function one-by-one to first build a click handler in index.js, then the events.js response to the click handler, then the ajax query in my api.js file, and then finally the user interface function in my ui.js This was the most challenging part for me.
  - Trying and checking each of the steps until my HTML, JavaScript, and Ruby/Rails  were working smoothly together, which took multiple attempts on each one.
  - Using handlebars to display information queried from the API on the HTML page.

## Unsolved Problems
The minimum structure of the is mostly complete but still needs work on a few features:
1. Remove From Garden feature
  - This feature is currently not functioning, but when functional will allow users to remove plants from "My Garden".
2. CSS Design
  - The CSS Design has not been completed for a smooth and cohesive design. When complete, the game will be responsive and mobile-friendly, the design will be symmetrical and elements will be fixed in their position, and there will be more images.
3. Update CRUD feature
  - I have not yet completed an UPDATE action for my database because I did not want users to be able to update data in the plants or gardens table. However, eventually I am going to have users input their frost date to get custom planting dates, and they will be able to update their frost date.

## Hopes for the Future
Looking forward, I am really excited to continue to work on this project to add the following features:
1. Enter your spring last frost date: find and enter the frost date for your region so you can get precise planting dates
2. See "My Garden" in order by planting date to track priorities
3. Allow users to have multiple gardens
4. View companion plants for the plants in your garden
5. Enter your fall first frost date: enter fall frost date to see final outdoor start dates for your plant (plant until:)

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
