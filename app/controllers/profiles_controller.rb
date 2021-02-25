class ProfilesController < ApplicationController
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
    if @profile.destroy
      redirect_to action: "index"
    end
  end

  def profile_params
    params.require(:profile).permit(:email, :name, socials_attributes: Social.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
