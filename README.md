# Lotus-Todo

A Todo application built with [Lotus](https://github.com/lotus/lotus) and [Angular](https://github.com/angular/angular.js).

## Architecture

Lotus-Todo is divided into two micro applications: `apps/api` and `apps/web`. `apps/api` is written in Ruby and handles backend. `apps/web` is an angular application that handles the frontend.

The core of the application lives in `lib/` (database mappings, interactors, etc.). `apps/api` and `apps/web` both rely on this core.

## Run locally

```ruby
bundle install
rake db:migrate

# Run the server
bundle exec lotus server
```

Visit http://localhost:2300/ after you run the server.

## Tests

Run `rake spec`.

## Contribution

Feel free to open pull requests.

### TODOS

* Pagination
* Record created_at and order by created_at
* Length validation

## License

MIT License.
