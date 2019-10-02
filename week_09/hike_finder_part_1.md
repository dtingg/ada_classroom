# Hike Finder: Working With a Single Model

## Database Setup

Our database has one table, `hikes`. The `hikes` table has the following columns:

Attribute           | Type
---                 | ---
id                  | integer
name                | string
length_miles        | float
elevation_gain_feet | integer
max_elevation_feet  | integer
rating              | integer

The hikes table has several rows:

id  | name    | length_miles | elevation_gain_feet | max_elevation_feet | rating
--- | ---     | ---          | ---                 | ---                | ---
1   | Lake 22 | 5.4          | 1350                | 2400               | 4
2   | Annette Lake | 7.5     | 1800                | 3600               | 3
4   | Mount Si     | 8.0     | 3150                | 3900               | 3
5   | Loowit Trail | 28.0    | 6000                | 4800               | 5
7   | Mount Townsend | 8.0   | 3010                | 6260               | 2
12  | Mount Teneriffe | 13.8 | 3800                | 4788               | 4
13  | Teneriffe Falls | 5.4  | 1585                | 2370               | 4

## Questions

### Migrations

1. How would you create a database table including the above columns?
    - What command would you use to generate the migration?  
      **rails generate migration create_hikes_table**  
    - Do you need to include the `id`, `created_at` and `updated_at` fields in the migration?  
      **No, those are automatically included.**  
    - Do you need to make any other changes to the generated migration?  
      **create_table :hikes**  
      **add_column :hikes :name :string**  
      **add_column :hikes :length_miles :float**  
      **add_column :hikes :elevation_gain_feet :integer**  
      **add_column :hikes :max_elevation_feet :integer**  
      **add_column :hikes :rating :integer**  
    - How do you run the migration?  
      **rails db:migrate**
2. How would you add a new column of type `string` called `best_month`?
    - How do you create a new migration?  
      **rails generate migration add_best_month**
    - What goes in the migration file?  
      **add_column :hikes :best_month :string**
    - What commands do you need to run?  
      **rails db:migrate**

### Reading Data

1. How would you store the list of all hikes in a variable named `hike_list`?  
    **@hike_list = Hike.all**

2. How would you search for the hike with ID 13 and store it in a variable named `hike`?
    - There are two ways to do this! What is the other one?  
      **@hike = Hike.find_by(id: 13)**  
      **@hike = Hike.find(13)**

3. What happens when you use each of the previous two methods to search for a hike with ID 19?  
    **Hike.find_by(id: 19) => returns nil**  
    **Hike.find(19) => returns RecordNotFound error**

4. How would you get the list of hikes with a rating of 4?  
    **Hike.where(rating: 4)**

5. What happens if you try to get the list of hikes with a rating of 1?  
    **It returns an empty array.**

6. How would you get the number of hikes in the database?  
    **Hike.count**

7. **BONUS:** How would you get the list of hikes less than 8 miles long?  
    **Hike.where(“length_miles <  8”)**

### Creating Data

For these questions we'll be working with the following data

name    | length_miles | elevation_gain_feet | max_elevation_feet | rating
---     | ---          | ---                 | ---                | ---
Fortune Ponds | 13.0   | 2700                | 4700               | 3

1. How would you build a new instance of the `Hike` model with the above data and store it in a local variable named `new_hike`, without saving it to the database?  
  **new_hike = Hike.new(name: “Fortune Ponds”, length_miles: 13.0, elevation_gain_feet: 2700, max_elevation_feet: 4700, rating: 3)**

2. Once `new_hike` has been built, how would you save it to the database?  
  **new_hike.save**

3. How would you accomplish the above two steps in one method call?  
  **new_hike = Hike.create(name: “Fortune Ponds”, length_miles: 13.0, elevation_gain_feet: 2700, max_elevation_feet: 4700, rating: 3)**


### Updating Data

1. Assume that hike #4 has been loaded into an local variable called `hike`:
    ```ruby
    hike = Hike.find(4)
    ```
    How would you change the value of `length_miles` to 8.2 for this local variable, _without changing the database_?

    **hike.length_miles = 8.2**

2. Once that change has been made, how would you save the new value to the database?  
  **hike.save**

3. Imagine you had several attributes to update stored in a hash like this:
    ```ruby
    new_values = {
        elevation_gain_feet: 4200,
        length_miles: 9.7,
        rating: 4
    }
    ```
    How would you change all the fields on the `hike` local variable to match whats in the hash and save it to the database in one line of code?

    **hike.update(new_values)**

### Deleting Data

1. There are two ActiveRecord methods that will remove a row from the database. What are they, and which one should you be using?  
  **destroy and delete**
  **We should be using destroy.**


2. What will the following code print out?

```ruby
hike = Hike.find(4)
hike.destroy
puts Hike.find_by(id: 4)
puts hike.id
```  
  **(nil)**  
  **4**
