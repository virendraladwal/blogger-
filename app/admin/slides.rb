ActiveAdmin.register Slide do
  permit_params :image, :title, :sub

  index do
    selectable_column
    id_column
    column :image
    column :title
    column :sub
    
    actions
  end

  filter :image
  filter :title
  filter :sub
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :image, as: :file 
      f.input :title
      f.input :sub
   
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :image, :title, :sub
  #
  # or
  #
  # permit_params do
  #   permitted = [:image, :title, :sub]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
