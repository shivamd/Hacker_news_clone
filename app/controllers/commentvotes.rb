post '/:user/:comment/commentvotes/new' do
  comment = Comment.find(params[:comment])
  comment.commentvotes.create(user_id: params[:user])
  redirect "posts/#{comment.commentable_id}"
end  

post "/:user/:comment/:parent_comment/commentvotes/new" do
  comment = Comment.find(params[:comment])
  comment.commentvotes.create(user_id: params[:user])
  redirect "comments/#{params[:parent_comment]}"
end  
