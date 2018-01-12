# Quotifier_as_middleware [![Gem Version](https://badge.fury.io/rb/quotifier.svg)](https://badge.fury.io/rb/quotifier)

Have you ever used the now infamous Quotifier by Famingo Labs Inc. and thought to yourself 🤔 "Gee I wish this was available as a Rack Middleware in order to add dope AF 🔥🔥🔥🔥🔥 quotes to my html files being served up for my clients" well say no more fam Famingo Labs Inc. has come to your rescue.

## Instructions

Quotifier is available as a gem on https://rubygems.org/gems/quotifier as such you can add it into your Gemfile using `gem "quotifier"`. Require the file in you config.ru and add the following statement.
`use Quotifier`
And there you have it family simply as apply pie. Your html will be dripping liquid 🔥 comments. 

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
	 <!--This is a problem right here. - Albus Dumbledore-->
  <html>
  <style>
    .tim:{
    size:100px;
	 #Those were alternative facts - Snoop Dogg
    }
  </style>
	 <!--A man is but the product of his thoughts; what he thinks, he becomes. - 21 Savage-->
  <script>
    console.log("Hello world");
    var time = {};
    var jim = 123;
  </script>
  <head>
	 <!--www.loganpaul.com/shop - Albus Dumbledore-->
  <title>Hello world</title>
	 <!--Snow mexicans, you're getting a wall too! - The Rock-->
  </head>
	 <!--Be a maverick - Betsy DeVos-->
    <body>
      <h2>An unordered HTML list</h2>
      <ul>
        <li>Coffee</li>
	 <!--Bazinga! - Snoop Dogg-->
        <li>Tea</li>
	 <!--This is a problem right here. - Ivanka Trump-->
        <li>Milk</li>
	 <!--'Sexy' is being independent, being confident and having fun. - The Rock-->
      </ul>  
    </body>
	 <!--C++ supports OOP - Sarah Palin-->
  </html>

```
## Optional features

Currently under development is adding quotes into live html which have a distincitive look to them thank to the css graciously donated by Famingo Labs Inc. member @kcamcam. To enable this feature simply use the following in your rackup file. `use Quotifier , true` and let the magic happen. This will automatically insert the css file needed for you to enable this feature. DISCLAIMER: This feature is still under development and may look odd in certain html layouts ... proceed at your own risk.

## COPYRIGHT FAMINGO LABS INC. ALL RIGHTS RESERVED 2017
