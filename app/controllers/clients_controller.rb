class ClientsController < ApplicationController
    def index
        clients = Client.all
        render json: clients
    end 

    def show 
        client = Client.find_by(params[:id])
        render json: client
    end 
end
