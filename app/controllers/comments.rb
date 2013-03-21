
get '/comments/new' do
 @comment = Comment.new
 erb:'comments/new'
end

post '/posts/:id/comments/new' do
  redirect ('users/new') unless logged_in?
  @comment = Comment.new(body: params[:body], user_id: current_user.id, post_id: params[:id] )

  unless @comment.save
    erb:"posts/show" 
  else
    @success = "You made a comment!"
    redirect("/posts/#{params[:id]}")
  end  
end 

get '/comments/:id' do 
	@comment = Comment.find(params[:id])
	erb :"/comments/show"
end 

post '/comments/:id/comments/new' do 
  redirect ('users/new') unless logged_in?
	@comment = Comment.find(params[:id])
	@comment.comments.create(user_id: current_user.id, body: params[:body])
	redirect ("/comments/#{params[:id]}")
end
