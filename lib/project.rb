class Project

    attr_reader :title
    attr_accessor :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        # adds the project to the backer's backed_projects array
        backer.backed_projects << self
    end

end

# Project - ::new
# takes a title on initialization, accessible through an attribute reader
# initializes with a @backers attribute, an empty array

# Project - #add_backer
# accepts a Backer as an argument and stores it in a backers array

# Project - More Advanced #add_backer
# also adds the project to the backer's backed_projects array
