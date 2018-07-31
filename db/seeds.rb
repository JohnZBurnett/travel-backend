
require 'httparty'

 
url = 'https://content.guardianapis.com/search?section=travel&q=germany&show-blocks=all&api-key=c307afb1-e714-470d-a95f-adb0a2b57ebe'
response = HTTParty.get(url)
data = response.parsed_response


data["response"]["results"].each do |result|
  Article.create(title: result["webTitle"], body_text: result["blocks"]["body"][0]["bodyTextSummary"], publish_time: result["webPublicationDate"], thumbnail_url: result["blocks"]["main"]["elements"][0]["assets"][0]["file"], picture_url: result["blocks"]["main"]["elements"][0]["assets"][1]["file"] )
end 

url1 = 'https://content.guardianapis.com/search?section=travel&q=italy&show-blocks=all&api-key=c307afb1-e714-470d-a95f-adb0a2b57ebe'
response = HTTParty.get(url1)
data = response.parsed_response


data["response"]["results"].each do |result|
  Article.create(title: result["webTitle"], body_text: result["blocks"]["body"][0]["bodyTextSummary"], publish_time: result["webPublicationDate"], thumbnail_url: result["blocks"]["main"]["elements"][0]["assets"][0]["file"], picture_url: result["blocks"]["main"]["elements"][0]["assets"][1]["file"] )
end 

url2 = 'https://content.guardianapis.com/search?section=travel&q=spain&show-blocks=all&api-key=c307afb1-e714-470d-a95f-adb0a2b57ebe'
response = HTTParty.get(url2)
data = response.parsed_response


data["response"]["results"].each do |result|
  Article.create(title: result["webTitle"], body_text: result["blocks"]["body"][0]["bodyTextSummary"], publish_time: result["webPublicationDate"], thumbnail_url: result["blocks"]["main"]["elements"][0]["assets"][0]["file"], picture_url: result["blocks"]["main"]["elements"][0]["assets"][1]["file"] )
end 