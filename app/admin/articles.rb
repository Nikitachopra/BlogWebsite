ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :title, :description, :image, :author_name, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :title, :description, :image]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
	selectable_column
	id_column
	column "Title" do |article|
		article.title[0..96]
	end
	column "Description" do |article|
		article.description[0..95]
	end
	column :created_at
	column :author_name
	actions
end

controller do
	def create
		@article = Article.new(article_params)
		if @article.save
			mails = Subscription.all
			mails.each do |mail|
				email_template = EmailTemplate.find_by_template("new_article_posted")
				body = email_template.content % {image_url: @article.image.url, title: @article.title, description: @article.description }
				subject = email_template.subject
				email_setting(mail.email,subject,body)
			end
		end
		redirect_to admin_articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :description, :image, :author_name)
	end
end

end
