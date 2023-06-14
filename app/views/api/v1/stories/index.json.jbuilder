json.array! @stories do |story|
  json.extract! story, :id, :author, :content
  json.test story, :created_at
end
