class AccntMs::AccntMSearchForm
	include ActiveModel::Model
		
	attr_accessor :accnt_cd, :accnt_type_1, :staff_name, :staff_name_e, :accnt_name, :accnt_name_e, :email, :product_name
	
	def search
		rel = AccntM
		rel = rel.where(accnt_cd: accnt_cd) if accnt_cd.present?	
		rel.order(:accnt_name, :accnt_name_e)	
	end
end
