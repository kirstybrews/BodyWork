class User < ActiveRecord::Base
    has_many :records
    has_many :exercises, through: :records

    # def self.find_names(name)
    #         self.all.select do |u|
    #             if u.name == name 
    #                 return u
    #         end
    #     end
    # end 

    def self.find_name(user_name)
       user = self.find_by(name: user_name) 
        p "Welcome #{user.name}"
    end 

end 