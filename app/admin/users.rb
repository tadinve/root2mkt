ActiveAdmin.register User do
	show do |u|
      attributes_table do
        row :email
      end
      active_admin_comments
  end
  

  form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :published_at, :label => "Publish Post At"
        f.input :category
      end
      f.inputs "Content" do
        f.input :body
      end
      f.buttons
  end
end
