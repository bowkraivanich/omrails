class Pin < ActiveRecord::Base
	validates :descriptions, presence: true, length: { minimum: 10 }
end