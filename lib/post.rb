class Post
    attr_accessor :title, :author
    @@all =[]

    def initialize(title)
        @title = title
        self.class.all << self
    end

    def self.all
        @@all
    end

    def author_name
        return self.author.name if self.author
        nil
    end
end