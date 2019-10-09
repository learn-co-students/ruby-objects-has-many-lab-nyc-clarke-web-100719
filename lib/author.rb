class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|post| post.author == self} #accessing Post class @@all and check if post author == to instance author
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end
end