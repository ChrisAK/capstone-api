# Pokemon Planner
### By: Chris Kennelly

The back-end of this project was not planned from the beginning to look like this. I started with the idea of getting all pokemon data from the pokeApi, but unfortunately given the time constraints and the fact that the api was significantly more complex than I expected. So I ended up rebuilding my database as it sits now, keeping all pokemon info in its own database table.

If I had more time I would have loved to (and I will in the future) integrate the pokeApi as well as making custom validators for team size so that I don't have to validate that all in the front end.

Must bundle install, migrate, and seed database.

## Tech
- Ruby on Rails & Ruby: Used to build the entire API

## Routes

| Prefix                   | Verb   | URI Pattern                                           | Controller#Action  |
|--------------------------|--------|-------------------------------------------------------|--------------------|
| sign_up                  | POST   | /sign-up                                              | users#signup       |
| sign_in                  | POST   | /sign_in                                              | users#signin       |
|                          | DELETE | /sign_out/:id                                         | users#signout      |
|                          | PATCH  | /change_password/:id                                  | users#changepw     |
| user_teams               | GET    | /users/:user_id/teams                                 | teams#index        |
| teams                    | POST   | /teams                                                | teams#create       |
|                          | PATCH  | /teams/id                                             | teams#update       |
|                          | DELETE | /teams/:id                                            | teams#destroy      |
| teams_pokemon_teams      | GET    | /teams/:team_id/pokemon_teams                         | pokemon_teams#index|



## Planning
# ERD v1
- (https://imgur.com/a/PDTtC)
# ERD v2
- (https://imgur.com/a/3q996)


## Links

- Back-end Repository: https://github.com/ChrisAK/capstone-api
- Front-end Repository: https://github.com/ChrisAK/capstone-frontend
- Back-end Deployed: https://shrouded-cove-64987.herokuapp.com/
- Front-end Deployed: https://chrisak.github.io/capstone-frontend/


[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
