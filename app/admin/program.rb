ActiveAdmin.register Program do
    permit_params :title, :content
    index do
      column :title
      column :content
      default_actions
    end
end
