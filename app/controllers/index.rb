get '/' do
	@sorted_posts = Post.find(:all, include: :postvotes).sort_by { |p| p.postvotes.count }.reverse
  @posts = @sorted_posts.paginate(page: params[:page], per_page: 30)
  erb :index
end

