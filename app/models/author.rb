class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    
    validates :first_name, presence: true
    validates :second_name, presence: true
    validates :email, uniqueness: true, allow_nil: true
end
