class Patient < ApplicationRecord
    belongs_to :office
    has_many :exams
end