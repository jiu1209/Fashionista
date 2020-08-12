class StyilingCommentsController < ApplicationController
	def create
		 styiling = Styiling.find(params[:styiling_id])
         comment = current_user.styiling_comments.new(styiling_comment_params)
         comment.styiling_id = styiling.id
         comment.save
         redirect_to styiling_path(styiling)
	end

	def destroy
        comment = current_user
		StyilingComment.find_by(id: params[:id], styiling_id: params[:styiling_id]).destroy
        redirect_to styiling_path(params[:styiling_id])
	end

	private
    def styiling_comment_params
        params.require(:styiling_comment).permit(:comment)
    end 
end
