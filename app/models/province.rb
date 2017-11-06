class Province < ApplicationRecord
	validates :name, :code, presence:true
	validates :name, :code, uniqueness:true
	validates :code, length: { maximum: 2 }
end
