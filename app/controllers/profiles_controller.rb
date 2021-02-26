class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
    @profile.socials.build
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to(@profile)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to(@profile)
    else
      render :edit
    end
  end

  def destroy
    if @profile.destroy
      redirect_to action: "index"
    end
  end
  
  private

  def profile_params
    params.require(:profile).permit(:email, :name, :avatar, socials_attributes: Social.attribute_names.map(&:to_sym).push(:_destroy))
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
