class MembersController < ApplicationController

	def index
		@member = Member.new
		@members = Member.all
	end

	def create
    member = Member.create(member_params)
    if member.valid?
      redirect_to :root
    else
    	flash[:errior] = "Error Saving Member..."
    	redirect_to :root
    end
	end

	def show
    member_id = params[:id]
    @member = Member.find_by_id(member_id)
	end

	def update
	end

	def destroy
	end

  private

  def member_params
    params.require(:member).permit(:name, :profile_image)
  end

end
