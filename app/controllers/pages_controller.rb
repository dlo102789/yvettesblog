class PagesController < ApplicationController
	def home
		@pages = Page.all
	end

	def about
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)
		if @page.save
			flash[:success] = "Post Created!"
			redirect_to page_path(@page)
		else
			flash[:danger] = "Error Occurred"
			redirect_to page_path(@page)
		end
	end

	def show
		@page = Page.find(params[:id])
	end

	def destroy
		@page = Page.find(params[:id])
		@page.destroy
		flash[:success] = "Article '#{@page.title}' deleted!"
		redirect_to action: "home"
	end

	def edit
		@page = Page.find(params[:id])
	end

	private
	def page_params
		params.require(:page).permit(:title, :body)
	end
end
