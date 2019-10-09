class Author

    attr_accessor :name
    attr_reader :posts

    @@count = 0 



    def initialize(name)

        @name = name
        @posts = []

    end

    def add_post(post)

        @posts << post
        post.author = self

    end

    def add_post_by_title(title)

        newPost = Post.new(title)
        @posts << newPost

        newPost.author = self

    end

    def self.incPosts
        @@count += 1
    end

    def self.post_count
        @@count
    end







end
