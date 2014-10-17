class ContributionsController < ApplicationController

	before_action :authenticate_user!, except: [:show, :index]


	def index
		@contributions = Contribution.all
		@contribution = Contribution.new

	end

	def show
		@contribution = Contribution.find(params[:id])
	end

	def new
		@contribution=Contribution.new(contribution_params)
	end

	def create
		@contribution = Contribution.create(contribution_params)

		if @contribution.save
			redirect_to :back, notice: "Student was successfully created."
		else
			render :new
		end
	end

	def update
		@contribution = Contribution.find(params[:id])

	end

	def edit
		@contribution = Contribution.find(params[:id])

	end

	def destroy
		@contribution = Contribution.find(params[:id])
		@contribution.destroy
		redirect_to :back
	end

	private

	def contribution_params
		params.require(:contribution).permit(:content,:id)
	end
end