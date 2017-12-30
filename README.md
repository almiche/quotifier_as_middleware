# Quotifier_as_middleware

Have you ever used the now infamous Quotifier by Famingo Labs Inc. and thought to yourself 🤔 "Gee I wish this was available as a Rack Middleware in order to add dope AF 🔥🔥🔥🔥🔥 quotes to my html files being served up for my clients" well say no more fam Famingo Labs Inc. has come to your rescue.

## Instructions

In order to use this dank Middleware simply copy the quotifer.rb file into your project. Require the file in you config.ru
and add the following statement.
`use Quotifier`
And there you have it family simply as apply pie. Your html will be dripping liquid 🔥. 

Tested so far on Sinatra. Although feel free to try it on any Rack based webserver they should all work 🧐.

## Demo

Before Quotifier
```html
<!DOCTYPE html>
        <html>
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
	"Link in Bio - Momo Taleb"
        <html>
        <body>
	"To the man who only has a hammer, everything he encounters begins to look like a nail. - Dj Khaled"
        
        <h2>An unordered HTML list</h2>
        
        <ul>
          <li>Coffee</li>
          <li>Tea</li>
          <li>Milk</li>
	"The weak can never forgive. Forgiveness is the attribute of the strong. - Wee-man"
        </ul>  
	"You must be the change you wish to see in the world. - 21 Savage"
        
        </body>
	"Such a nasty woman - Oprah Winfrey"
        </html>
```

## COPYRIGHT FAMINGO LABS INC. ALL RIGHTS RESERVED 2017
