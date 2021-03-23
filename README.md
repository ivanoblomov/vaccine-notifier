# Vaccine Notifier

[![test](https://github.com/ivanoblomov/vaccine-notifier/actions/workflows/test.yml/badge.svg)](https://github.com/ivanoblomov/vaccine-notifier/actions/workflows/test.yml)
[![Maintainability](https://api.codeclimate.com/v1/badges/dad2d32da2d576e4a99a/maintainability)](https://codeclimate.com/github/ivanoblomov/vaccine-notifier/maintainability)
[![Coverage Status](https://coveralls.io/repos/github/ivanoblomov/vaccine-notifier/badge.svg?branch=main&kill_cache=1)](https://coveralls.io/github/ivanoblomov/vaccine-notifier?branch=main)
[![Inline docs](http://inch-ci.org/github/ivanoblomov/vaccine-notifier.svg?branch=main)](http://inch-ci.org/github/ivanoblomov/vaccine-notifier)

This bot notifies LA County users who tweet their zip codes to [@vaccinesignup](https://twitter.com/vaccinesignup/) about available vaccine appointments in their area.

## Usage

### Users

1. Follow [@vaccinesignup](https://twitter.com/vaccinesignup/).

2. DM [@vaccinesignup](https://twitter.com/vaccinesignup/) a zip code only:

   ![zip](https://user-images.githubusercontent.com/113809/111058905-b2b68e00-845f-11eb-99d1-3aa0b4adcaad.png)

3. The bot will DM you available appointments in that zip:

   ![appointments](https://user-images.githubusercontent.com/113809/111059071-bc8cc100-8460-11eb-9148-74998844b8e9.png)

4. To stop all notifications, DM `stop` to [@vaccinesignup](https://twitter.com/vaccinesignup/).

### Developers

To sync Locations:
```
rake vaccinesignup:sync_locations
```

## Copyright

Copyright © 2021 Roderick Monje. See [LICENSE](LICENSE) for further details.
