class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_policy_scoped, only: :index



  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
    authorize @review
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    authorize @review

    respond_to do |format|
      if @review.save
        format.html do
          if @review.reviewable_type == "Refuge"
            @refuge = Refuge.find(review_params[:reviewable_id])
            redirect_to refuge_path(@refuge), notice: 'Review was successfully created.'
          else
            @hiking = Hiking.find(review_params[:reviewable_id])
            redirect_to hiking_path(@hiking), notice: 'Review was successfully created.'
          end
        end
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html do
          if @review.reviewable_type == "Refuge"
            @refuge = Refuge.find(review_params[:reviewable_id])
            redirect_to refuge_path(@refuge), notice: 'Review was successfully updated.'
          else
            @hiking = Hiking.find(review_params[:reviewable_id])
            redirect_to hiking_path(@hiking), notice: 'Review was successfully updated.'
          end
        end
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html do
          if @review.reviewable_type == "Refuge"
            @refuge = Refuge.find(review_params[:reviewable_id])
            redirect_to refuge_path(@refuge), notice: 'Review was successfully deleted.'
          else
            @hiking = Hiking.find(review_params[:reviewable_id])
            redirect_to hiking_path(@hiking), notice: 'Review was successfully deleted.'
          end
        end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
      authorize @review
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :content, :picture, :user_id, :reviewable_id, :reviewable_type)
    end
end
