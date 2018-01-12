# Quotifier_as_middleware [![Gem Version](https://badge.fury.io/rb/quotifier.svg)](https://badge.fury.io/rb/quotifier)

Have you ever used the now infamous Quotifier by Famingo Labs Inc. and thought to yourself 🤔 "Gee I wish this was available as a Rack Middleware in order to add dope AF 🔥🔥🔥🔥🔥 quotes to my html files being served up for my clients" well say no more fam Famingo Labs Inc. has come to your rescue.

## Instructions

Quotifier is available as a gem on https://rubygems.org/gems/quotifier as such you can add it into your Gemfile using `gem "quotifier"`. Require the file in you config.ru and add the following statement.
`use Quotifier`
And there you have it family simply as apply pie. Your html will be dripping liquid 🔥. 

Tested so far on Sinatra. Although feel free to try it on any Rack based webserver they should all work 🧐.

## Demo

Before Quotifier
```html
<!DOCTYPE html>
  <html>
  <style>
    .tim:{
    size:100px;
    }
  </style>
  <script>
    console.log("Hello world");
    var time = {};
    var jim = 123;
  </script>
    <body>

      <h2>An unordered HTML list</h2>

      <ul>
        <li>Coffee</li>
        <li>Tea</li>
        <li>Milk</li>
      </ul>  

    </body>
  </html>
```

VS after Quotifier does its magic 🔥

```html

<!DOCTYPE html>
	Everyone gets a car - Sarah Palin
  <html>
  <style>
    .tim:{
    size:100px;
	 #You shall not pass! - The Red Power Ranger
    }
  </style>
	Strength does not come from physical capacity. It comes from an indomitable will. - John Cena
  <script>
    console.log("Hello world");
	 \\You must be the change you wish to see in the world. - Soulja Boy
    var time = {};
    var jim = 123;
	 \\You shall not pass! - Big Show
  </script>
    <body>
	Wingardium leviosa - Satan
      <h2>An unordered HTML list</h2>
	When hungry, eat your rice; when tired, close your eyes. Fools may laugh at me, but wise men will know what I mean. - Ivanka Trump
      <ul>
        <li>Coffee</li>
        <li>Tea</li>
        <li>Milk</li>
	I want my world to be fun. - Logan Paul
      </ul>  
    </body>
  </html>
	Oh god.. - Abe Lincoln

```

## COPYRIGHT FAMINGO LABS INC. ALL RIGHTS RESERVED 2017
