ActiveAdmin.register WhoWeAre do
  permit_params :name, :description, :image, :sub_title
  
 
  index do
    selectable_column
    id_column
    column :image
    column :name
    column :sub_title
    column :description
    
    actions
  end

  filter :image
  filter :name
  filter :sub_title
  filter :description
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :image, as: :file 
      f.input :name
      f.input :sub_title
      f.input :description
    end
    f.actions
  end

      

 

     

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
