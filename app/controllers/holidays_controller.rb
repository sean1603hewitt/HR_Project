class HolidaysController < ApplicationController
	before_filter :authenticate_user!,  :except => [:show, :index]
	
	def index
		@holidays = Holiday.search(params[:search])
	end
	
	def show
		@holiday = Holiday.find(params[:id])
	end
	
	def new
		@holiday = Holiday.new
	end
	
	def edit
		@holiday = Holiday.find(params[:id])
	end

	
	def create
		@holiday = Holiday.new(holiday_params)
 
		if @holiday.save
			redirect_to @holiday
		else
			render 'new'
		end
	end

	def update
		@holiday = Holiday.find(params[:id])
 
		if @holiday.update(holiday_params)
		redirect_to @holiday
		else
		render 'edit'
		end
	end
	
	def destroy
		@holiday = Holiday.find(params[:id])
		@holiday.destroy
 
		redirect_to holidays_path
	end

	
	private
	def holiday_params
    params.require(:holiday).permit(:name, :email, :start_date, :end_date, :Special_Circumstances, :Reasons_for_Refusal)
	end


end