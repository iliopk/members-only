module PostsHelper
	def posts_params
       params.require(:post).permit(:title, :body)
    end


end
