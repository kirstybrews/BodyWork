class User < ActiveRecord::Base
    has_many :records
    has_many :exercises, through: :records
end 