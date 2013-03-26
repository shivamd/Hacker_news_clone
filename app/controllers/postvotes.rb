post '/:post_id/postvotes/new' do 
	  # content_type :json
	  # post_id = params[:value].to_i
	  Post.find(params[:post_id]).postvotes.create(user_id: current_user.id)
  # Post.find(params[:post]).postvotes.create(user_id: current_user.id)
   redirect('/')
end
