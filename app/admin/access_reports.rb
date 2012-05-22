ActiveAdmin.register AccessReport do
	index do
		column :email
		column :provider
		column :access_at
		column :access_ip
	end
  
end
