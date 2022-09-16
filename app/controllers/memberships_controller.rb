class MembershipsController < ApplicationController
    def index
        memberships = Membership.all
        render json: memberships
    end 

    def show 
        membership = Membership.find_by(params[:id])
        render json: membership
    end 

    def create
        membership = Membership.create(membership_params)
        render json: membership, status: :created
    end 


    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
end
