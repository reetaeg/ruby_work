json.total @total
json.posts @posts do |post|
  json.set! :id, post.id
  json.set! :title, post.title.force_encoding("UTF-8")
  json.set! :content, post.content.force_encoding("UTF-8")
end
