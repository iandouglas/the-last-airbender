class Member
    attr_reader :name, :affiliation, :allies, :enemies, :photo

    def initialize(attributes)
        @name = attributes[:name]
        @affiliation = attributes[:affiliation]
        @allies = attributes[:allies]
        @enemies = attributes[:enemies]
        @photo = attributes[:photoUrl]
    end
end