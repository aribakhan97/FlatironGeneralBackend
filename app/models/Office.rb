class Office < ApplicationRecord
    has_many :doctors
    has_many :patients 
end