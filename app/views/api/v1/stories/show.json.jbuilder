json.extract! @story, :id, :author, :content
# json.comments @story.comments, :id, :name, :content, :created_at
json.comments @story.comments do |comment|
  json.extract! comment, :id, :name, :content
  json.created_at  comment.created_at.strftime("%m/%d/%Y")
end
