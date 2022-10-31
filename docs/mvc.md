# The model View Controller (MVC) Pattern

GET /about HTTP/1.1
host: 127.0.0.1

## Routes

Matchers for the URL that is requested
GET for "/about"

I see your requested "/about", we'll give that to the AboutController to handle

## Model

Database wrapper

User

* query for records
* wrap individual records

## Views

Your response body content

* HTML
* CSV
* PDF
* XML

This is what get sent back to the browser and displayed

## Controller

Decide how to process a request and define a response
