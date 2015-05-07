ActiveAdmin.register Post do
permit_params :category_id, :admin_user_id, :title, :body
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
index do
	column :title
	column "Author", :admin_user
	column :category
	column :created_at
	actions
end

form do |f|
    f.inputs "Edit Dat Shit" do
      f.input :category
      f.input :admin_user
      f.input :title
      f.input :body
    end
   	f.actions
   end	
end
