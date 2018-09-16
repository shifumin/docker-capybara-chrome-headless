# Docker Capybara Chrome headless
Docker template for Capybara + Selenium + Chrome headless.  

## Stack
- Ruby 2.5.1
- Capybara
- Selenium
- Chrome headless(+ Japanese font)

## Preparation
```shell
$ docker pull ruby:2.5.1

$ git clone https://github.com/shifumin/docker-capybara-chrome-headless
$ cd docker-capybara-chrome-headless
```

## Usage & Examples

```shell
# Create ruby script
$ vim app.rb

# Build Docker image
$ docker-compose build

# Execute the above script
$ docker-compose run --rm capybara ruby app.rb
```

### Example of executing default app.rb
[![Image from Gyazo](https://i.gyazo.com/3474e95fcd47cfdfa9c06228f801f542.png)](https://gyazo.com/3474e95fcd47cfdfa9c06228f801f542)
