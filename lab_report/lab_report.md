# Lab Report 07
## Assignment 07 - Search & Sort, Internationalization
_Authors: Dennis Loska, Tony Dorfmeister, Ai Dong 07.02.2018_

## Part 1: Add a Sort or Search Functionality
To add a search or sort functionality the controller within the MVC model needs to be changed, so the view would be updated correctly.
In order to enable a ascending order of the price of a pumpkin we added the following lines of code:

```ruby
class PumpkinsController < ApplicationController
  before_action :set_pumpkin, only: [:show, :edit, :update, :destroy]

  # GET /pumpkins
  # GET /pumpkins.json
  def index
    @pumpkins = Pumpkin.order(price: :asc)
  end
  #...more code
end
```
## Part 2: Internationalization
Based on the API provided by rails, enabling a implementation of a new language is rather comfortable. 
First we made the locale known and selected the locale using the route. Then we set the locale in the controller  and implemented the switch. Here are some code snippets.

```erb
  <body>
    <h1><%= t '.app_name' %></h1>
    
    <%= link_to '[EN]', pumpkins_path(locale: 'en') %>
    <%= link_to '[DE]', pumpkins_path(locale: 'de') %>
    <%= link_to '[l3]', pumpkins_path(locale: 'l3') %>
    <%= yield %>
  </body>
```

```erb
<table>
  <thead>
    <tr>
      <th><%= t '.i_species'%></th>
      <th><%= t '.i_carved'%></th>
      <th><%= t '.i_size'%></th>
      <th><%= t '.i_weight'%></th>
      <th><%= t '.i_price'%></th>
      <th colspan="3"></th>
    </tr>
  </thead>
    <!-- more markup -->
</table>

```

```yml
l3:
  hello: "Hello Test"
  layouts:
    application:
      app_name: my h7w 4pp11c4710n
  pumpkins:
    index:
      pumpkins: pumpk1n5
      i_species: 5p3c135
      i_carved: c42v3d
      i_size: 5123
      i_weight: w319h7
      i_price: p21c3
```

```yml
pl:
  hello: "Witaj, świecie"
  layouts:
    application:
      app_name: Aplikacja HTW
  pumpkins:
    index:
      pumpkins: dynie
      i_species: rodzaj
      i_carved: cięty
      i_size: wzrost
      i_weight: masa
      i_price: cena
```

## Part 3: Some more functionality
Our functionality revolves around a functionality to change the theme of the site. Based on JavaScript, we added an on click event  - as soon as the specific button is clicked, the theme of the site changes. Lines of Code of the JavaScript Functionality:
![dark theme](https://github.com/DennisLoska/rails-dash-ws2017/blob/master/images/dark.png?raw=true)
![light_theme](https://github.com/DennisLoska/rails-dash-ws2017/blob/master/images/light.png?raw=true)

## Links

- Fork: https://github.com/DennisLoska/rails-dash-ws2017
- Pullrequest: https://github.com/htw-imi-info3/rails-dash-ws2017/pull/89
