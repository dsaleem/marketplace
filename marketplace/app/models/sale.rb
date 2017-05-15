class Sale < ApplicationRecord

	before_create :populate_uuid
	belongs_to :item

	private

	def populate_uuid
		self.uuid = SecureRandom.uuid() #generate random sequence number
end
