# Code Exercise Plan

## Models

### `Owner`: Relationships

[x] has_many :ownership_histories
[x] has_many :cars, through: :ownership_histories

### `Owner`: Attributes

[x] name:string
[x] email:string
[x] telephone:string

### `Car`: Relationships

[x] has_many :ownership_histories
[x] has_many :owners, through: :ownership_histories

### `Car`: Attributes

[x] make:string
[x] model:string
[x] color:string
[x] mileage:integer
[ ] owner --> Access this through the join table
[x] is_for_sale:boolean

### `OwnershipHistory`: Relationships

[x] belongs_to :owner
[x] belongs_to :car
[x] belongs_to :admin

`OwnershipHistory` will act as a join table between `Owners` and `Cars`.

### `Admin`: Relationships

[x] has_many :owners
[x] has_many :cars, through: :owners
[x] has_many :ownership_histories, through: :owners

### `Admin`: Attributes

[x] email:string
[x] password:string

## Views

### `OwnershipHistory`

[ ] The ownership history should be visible on the car and owner show pages.
[ ] Possibly create a ownership history index/show page with by `Car` and by `Owner` filters so there's the option to look up either.

## Bonus Elements

[x] Implement `Admin` model via devise gem.
[ ] Add Google OAuth
[ ] Bootstrap responsiveness (Work out an alternative to tables at small breakpoints)
[ ] RSpec and Capybara tests
[ ] Faker seeded database
[ ] Sorting implementation
