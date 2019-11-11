# Code Exercise Plan

## Models

### Debate on How to Structure the Models

Should the model relationships be `Owner` and `Car` `has_one :ownership_history`?

After a lot of debate, I decided no. Although I like the idea of each owner and each car having an ownership history that specifically belongs to them and travels with them throughout their lifetime, setting up the model relationships this way would force the `OwnershipHistory` class to have attributes in order to establish properties of the ownership history itself and that is outside the scope of this project.

Instead, I decided to track ownership histories as instances of a person owning a car. Once the car transfers ownership, that instance of ownership history is now complete and a new one begins. What follows reflects this model setup.

### `Admin`: Relationships

- [x] has_many :owners
- [x] has_many :cars
- [x] has_many :ownership_histories

### `Admin`: Attributes

- [x] email:string
- [x] password:string

### `Owner`: Relationships

- [x] has_many :ownership_histories
- [x] has_many :cars, through: :ownership_histories

### `Owner`: Attributes

- [x] name:string
- [x] email:string
- [x] telephone:string

### `Car`: Relationships

- [x] has_many :ownership_histories
- [x] has_many :owners, through: :ownership_histories

### `Car`: Attributes

- [x] make:string
- [x] model:string
- [x] color:string
- [x] mileage:integer
- [ ] owner --> Access this through the join table
- [x] is_for_sale:boolean

### `OwnershipHistory`: Relationships

`OwnershipHistory` will act as a join table between `Owners` and `Cars`.

- [x] belongs_to :owner
- [x] belongs_to :car
- [x] belongs_to :admin

## Views

### Overall Look

This is a back-of-house admin tool for quickly editing items. Think simple, sleek, and intuitive.

### `OwnershipHistory`

- [ ] The ownership history should be visible on the car and owner show pages.
- [ ] Possibly create a ownership history index/show page with by car and by owner filters so there's the option to look up either.

### Possible Editing Dashboards

- [ ] Consider adding checkbox editing implementation from the index pages for owners and cars.

## Bonus Elements

- [x] Implement `Admin` model via devise gem.
- [ ] Add Google OAuth
- [ ] Bootstrap responsiveness (Work out an alternative to tables at small breakpoints)
- [ ] RSpec and Capybara tests
- [x] Faker seeded database
- [ ] Sorting implementation
