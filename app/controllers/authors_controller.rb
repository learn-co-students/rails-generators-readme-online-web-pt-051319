class AuthorsController < ApplicationController


		before_action :set_author, only: [:show, :edit, :update, :destroy]
		
		def index
			@authors = Author.all
		end
	
		def new
			@{1:lower_singular} = authors.new
		end
	
		def create
			@author = Author.create(author_params)
			redirect_to author_path(@author)
		end
	
		def edit
			
		end
	
		def update
			@author.update(author_params)
			redirect_to author_path(@author)
		end
	
		def show
			
		end
	
		def destroy
			@author.destroy
			redirect_to authors_path
		end
	
		private
	
		def author_params
			params.require(:author).permit(:name, :genre, :bio)
		end
	
		def set_author
			@author = Author.find_by_id(params[:id])
		end
	
end
