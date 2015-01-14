---
tags: active record, sinatra, database, ruby, kids
language: ruby
level: 3
type: lab
---

## Let's Create Followers

Time to take those active record skills to the next level and start tracking a user's followers.

This is a tricky data setup because users can be both followers and followees. Michael Hartl has a good explanation of how to set this up in his Rails tutorial here: https://www.railstutorial.org/book/following_users#sec-a_problem_with_the_data_model

This is a problem worth learning how to handle because there are many app where users take on multiple roles - like AirBnB (users can be both hosts and guests) and eBay (users can be both buyers and sellers) or even potentially Uber (maybe a driver wants to hire a car on his day off!).

Run `bundle install` and `rspec --fail-fast` to work through the lab and make the tests pass. Definitely also take a look at Hartl's tutorial for more in depth explanations!

Here is a summary of what you'll need to get done:


