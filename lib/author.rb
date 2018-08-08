class Author
  attr_accessor :name
  @@all_posts = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post (post)
    @@all_posts << post
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@all_posts << post
    @posts << post
  end

  def posts
    @posts
  end

  def self.post_count
    @@all_posts.length
  end
end
#end of class