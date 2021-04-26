class User < ApplicationRecord

    has_many :timeslots
    validates_presence_of :name, :email
end
