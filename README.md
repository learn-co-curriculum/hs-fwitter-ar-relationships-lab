---
tags: active record, sinatra, database, ruby, kids
language: ruby
level: 3
type: lab
---

## Let's Create Direct Messages

Time to take those active record skills to the next level and start tracking direct messages. A migration has been created for you - you'll just need to run `rake db:migrate` to create the messages table with columns for sender id, receiver id and a message. A message model has also been created but you'll need to set up the following relationships:

+ User has many 
  * sent messages
  * received messages

+ Messages belong to 
  * senders
  * receivers

You'll need to use aliasing to accomplish this. Let's take a look at another example for a site like AirBNB with the following relationships:

+ User has many 
  * reservations as a guest
  * reservations as a host

+ Reservations belong to 
  * guests
  * hosts

Here is an example of how we would use aliasing to establish these relationships:

```ruby
class Reservation < ActiveRecord::Base
  belongs_to :guest, :class_name => "User"
  belongs_to :host, :class_name => "User"

end

class User < ActiveRecord::Base
  has_many :reservations_as_guest, :class_name => "Reservation", 
           :foreign_key => "guest_id"
  has_many :reservations_as_host, :class_name => "Reservation", 
           :foreign_key => "host_id"

end
```

Try following this pattern to set up the relationship between Users and Messages in the fwitter app, then test it out using `tux`.

Once you've got your models set up and working, work on the views and controller and get those direct messages displayed in the app.

### Bonus Challenge!

Start tracking followers! This is a little trickier but Michael Hartl has a good explanation of how to set this up in his Rails tutorial here: https://www.railstutorial.org/book/following_users#sec-a_problem_with_the_data_model

This is a problem worth learning how to handle because there are many apps where users take on multiple roles - like AirBnB, eBay (users can be both buyers and sellers) or even potentially Uber (maybe a driver wants to hire a car on his day off!).



