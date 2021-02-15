class MainController < ApplicationController
    def index
        @profiles = Profile.all
    end
end