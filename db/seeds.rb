require 'random_data'

50.times do
    
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end
posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    ) 
end

p = Post.find_or_create_by!(title: "New Title", body: "New Body for new title")
c = Comment.find_or_create_by!(post: p, body: "New body for new comment for post #{p.title}")


puts p.title
puts c.body
puts "Seed Finished!"
puts "#{Post.count} posts created."
puts "#{Comment.count} comments created."