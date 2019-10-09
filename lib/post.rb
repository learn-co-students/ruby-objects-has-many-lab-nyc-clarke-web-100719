class Post 

    attr_accessor :title
    attr_reader :author
    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def author=(author)
    
        @author = author
        author.posts << self
        Author.incPosts

    end

    def author_name
    
        if self.has_author?
            self.author.name
        else
            return nil
        end



    end

    def self.all
        @@all
    end
    

    def has_author?
        return @author!=nil
    end




end
