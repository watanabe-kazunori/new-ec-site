class AccntM < ActiveRecord::Base
	self.primary_key = :accnt_cd
	has_many :accnt_staff_ms, foreign_key: :accnt_cd
	has_one :prefecture_m, foreign_key: :prefecture_no
	has_one :country_m, foreign_key: :country_m
	has_one :code_m, foreign_key: :code
	accepts_nested_attributes_for :accnt_staff_ms
end
