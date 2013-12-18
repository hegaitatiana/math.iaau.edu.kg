ActiveAdmin.register Faculty do


  permit_params :name, :position, :degree, :office, :office_time, :phone, :email
  index do
    column :name
    column :position
    column :degree
    column :office
    column :office_time
    column :phone
    column :email
    default_actions
  end
  
end
