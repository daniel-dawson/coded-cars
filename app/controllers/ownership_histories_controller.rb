class OwnershipHistoriesController < ApplicationController
  before_action :set_ownership_history, only: [:show, :edit, :update, :destroy]

  # GET /ownership_histories
  def index
    @ownership_histories = OwnershipHistory.all
  end

  # GET /ownership_histories/1
  def show
  end

  # GET /ownership_histories/new
  def new
    @ownership_history = OwnershipHistory.new
  end

  # GET /ownership_histories/1/edit
  def edit
  end

  # POST /ownership_histories
  def create
    @ownership_history = OwnershipHistory.new(ownership_history_params)

    if @ownership_history.save
      redirect_to @ownership_history, notice: 'Ownership history was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ownership_histories/1
  def update
    if @ownership_history.update(ownership_history_params)
      redirect_to @ownership_history, notice: 'Ownership history was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ownership_histories/1
  def destroy
    @ownership_history.destroy
    redirect_to ownership_histories_url, notice: 'Ownership history was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ownership_history
      @ownership_history = OwnershipHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ownership_history_params
      params.require(:ownership_history).permit(:owner_id, :car_id)
    end
end
