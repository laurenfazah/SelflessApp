class ContributionsController < ApplicationController

	before_action :authenticate_user!, except: [:show, :index]


	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def update
	end

	def edit
	end

	def destroy
	end

	private
	def contribution_params
		params.require(:contribution).permit(:contribution)
	end
end