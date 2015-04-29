class Pin < ActiveRecord::Base
	validates :descriptions, presence: true, length: { minimum: 10 }
	belongs_to :user
	validates :user_id, presence: true
end