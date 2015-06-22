class GuestsController < ApplicationController
before_action :set_guest, only: [:edit, :update]
 
def edit
end

def update
  @guest.update_attributes(guest_params)
end 

def index
  @guests_json = Guest.select(:id, :name).where("guests.name LIKE ?", "%#{params[:query]}%").to_json
  respond_to do |format|
    format.json { render json: @guests_json }
    format.js 
  end
end


private 

def set_guest
  @guest = Guest.find(params[:id])
end

def guest_params
  params.require(:guest).permit(:name, :going, :veg, :add_info)
end


end
