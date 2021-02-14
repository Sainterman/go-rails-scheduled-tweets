class MainController < ApplicationController
    def index
        flash[:notice] = "Logged in successfully"
        flash[:alert] = "mestoycagando"
    end
end