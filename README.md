# Quotifier_as_middleware

Have you tried using the infamous Quotifier by Famingo Inc. and thought to yourself "Wow I wish I could have this run as middleware and add quotes to html files being returned to a user by my Rack compatible web server!". Well say no more. 

Quotifier is now available as Middleware!

## Instructions 

Simply copy the quotifier.rb file over into your project. Then add the following line into your config.ru.

`use Quotifier`

And there you go simple as pie.

Now any HTML data being served up to your client will contain awesome quotes! 

## Example

Boring HTML -> 
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
VS when Quoitifer does it's magic

```html
<!DOCTYPE html>
"Those were alternative facts - Wee-man"        <html>
        <body>
        
"You must not lose faith in humanity. Humanity is an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty. - The Red Power Ranger"        <h2>An unordered HTML list</h2>
        
        <ul>
          <li>Coffee</li>
"Happiness is when what you think, what you say, and what you do are in harmony. - Triple H"          <li>Tea</li>
"The ode lives upon the ideal, the epic upon the grandiose, the drama upon the real. - Wee-man"          <li>Milk</li>
"Wrong - Soulja Boy"        </ul>  
        
        </body>
"You must be the change you wish to see in the world. - Betsy DeVos"        </html>
        "We are what we repeatedly do; excellence, then, is not an act but a habit. - Bing Han"
```
## COPYRIGHT FAMINGO LABS 2017 ALL RIGHTS RESERVED
