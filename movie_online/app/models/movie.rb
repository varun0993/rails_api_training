class Movie < ActiveRecord::Base
	validates :title,presence: true, length: {minimum: 2}
	validates :year,presence: true
    validates :rating,presence: true,length: {minimum: 1},length: {maximum: 10}
    validates :language,presence: true
    validates :actor,presence: true
    validates :director,presence: true
    validates :producer,presence: true
    has_and_belongs_to_many :users	
end
