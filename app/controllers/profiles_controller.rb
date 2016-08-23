class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]


  # GET /profiles
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
    authorize @profile
  end

  # GET /profiles/edit.1
  def edit
  end

  # POST /profiles
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    authorize @profile

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profiles_url, notice: 'Profile was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /profiles/
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_url, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = current_user.profile
      authorize @profile
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :avatar_picture, :email, :phone, :user_id)
    end
end
