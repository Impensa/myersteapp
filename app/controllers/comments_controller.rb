class CommentsController < InheritedResources::Base
	
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
		;flash[:notice] = 'Comment was added successfully'
		redirect_to(@comment.post)
		else
		;flash[:notice] = 'Error adding your comment'
		redirect_to(@comment.post)
		end  
	end

  private

    def comment_params
      params.require(:comment).permit(:name, :email, :body, :post_id)
    end
end

