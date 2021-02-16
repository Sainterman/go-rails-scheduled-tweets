class ProfilesController < ApplicationController
    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.save
    end

    def show
        @profile = Profile.find(params[:id])
    end

    def edit
        @profile = Profile.find(params[:id])
    end

    def update
        @profile = Profile.find(params[:id])
        if @profile.update(profile_params)
            redirect_to(@profile)
        else
            render :edit
        end
    end

    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy
    end
    
    def profile_params
        params.require(:profile).permit(:email,:name,:twitter,:linkedin)
    end
end