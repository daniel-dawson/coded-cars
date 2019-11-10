# Code Exercise Plan

## Models

### `Owner`: Relationships

- has_many :ownership_histories
- has_many :cars, through: :ownership_histories

### `Owner`: Attributes

- name:string
- email:string
- telephone:string

### `Car`: Relationships

- has_many :ownership_histories
- has_many :owners, through: :ownership_histories

### `Car`: Attributes

- make:string
- model:string
- color:string
- mileage:integer
- owner --> Access this through the join table
- is_for_sale:boolean

### `OwnershipHistory`: Relationships

- belongs_to :owners
- belongs_to :cars

`OwnershipHistory` will act as a join table between `Owners` and `Cars`.

### `Admin`: Relationships

- has_many :owners
- has_many :cars

### `Admin`: Attributes

- email:string
- password:string

Implement `Admin` model via devise gem.

## Views

### `OwnershipHistory`

[ ] The ownership history should be visible on the car and owner show pages.
[ ] Possibly create a ownership history index/show page with by `Car` and by `Owner` filters so there's the option to look up either.

## Bonus Elements

[ ] Add Google OAuth
[ ] Bootstrap responsiveness (Work out an alternative to tables at small breakpoints)
[ ] RSpec and Capybara tests
[ ] Faker seeded database
[ ] Sorting implementation
