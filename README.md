# html-content-rest-api
rails app for web scraping purposes. It scrapes a given page (by the URL), and returns you all informations about that page. This API use my own gem https://github.com/erik861112/html-content-rest-api

# getting started

 git clone https://github.com/erik861112/html-content-rest-api<br />
 cd html-content-rest-api & bundle install<br />
 bundle exec rake db:migrate
 rails s 

# try it
to scraping html page <br>
curl -X POST http://127.0.0.1:3000/api/scrape?url=http://www.github.com<br>

curl -X GET http://127.0.0.1:3000/api/page_urls<br>
return a json hash with stored urls

curl -X GET http://127.0.0.1:3000/api/scrape/<br>
return a json hash with stored urls

# To show all APIs
http://127.0.0.1:3000
