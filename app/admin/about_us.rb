ActiveAdmin.register AboutU do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :content, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	
	# end

	controller do
		def edit
			@page_title = "Edit About Us"
			action_name
		end

	end

	form do |f|
		f.semantic_errors
		f.inputs
		f.actions do
			f.action :submit, label: "Update About Us"
			f.action :cancel, label: "Cancel"
		end
		# f.buttons :commit
	end

end
