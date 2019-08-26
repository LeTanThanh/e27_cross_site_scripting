10.times do
  post = Post.create title: FFaker::Lorem.sentence,
    content: FFaker::Lorem.paragraph

  rand(10).times do
    post.comments.create content: FFaker::Lorem.sentence
  end
end
