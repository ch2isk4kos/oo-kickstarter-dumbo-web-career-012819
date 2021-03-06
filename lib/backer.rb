class Backer

    attr_reader :name
    attr_accessor :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        project.backers << self
    end

end

# Backer - ::new
# takes a name on initialization, accessible through an attribute reader
# initializes with a @backed_projects attribute, an empty array

# Backer - #back_project
# accepts a Project as an argument and stores it in a backed_projects array

# Backer - More Advanced #back_project
# also adds the backer to the project's backers array
