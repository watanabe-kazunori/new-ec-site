class AccntM < ActiveRecord::Base
	self.primary_key = :accnt_cd
	has_many :accnt_staff_ms, foreign_key: :accnt_cd
	accepts_nested_attributes_for :accnt_staff_ms
end
