# Usual Weather data

This is the data used to populate [usual-weather-api](https://github.com/remiprev/usual-weather-api)’s database.

## Tools

* `fetcher.rb` is the tool used to fetch the CSV files from Environment
  Canada’s website and store them in `data`.

* `stripper.rb` is the tool used to strip the first 32 lines of the CSV files
  so we’re left with just relevant rows.
