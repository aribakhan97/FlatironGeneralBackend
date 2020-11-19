class Doctor < ApplicationRecord
    belongs_to :office
    has_many :patients, through: :office
end