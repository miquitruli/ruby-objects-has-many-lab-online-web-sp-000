class Author
  attr_accessor :name
  @@post_count=0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|s| s.author == self}
  end

  def add_post (post)
    new_post = Post.new(post)
    @@post_count += 1
    authors = Post.author
    new_post.authors
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    author = Author.new(name)
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
