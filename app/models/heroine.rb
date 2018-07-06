class Heroine < ApplicationRecord
    belongs_to :power
    #validates :name, uniqueness: true
    validates :super_name, uniqueness: :true
end
