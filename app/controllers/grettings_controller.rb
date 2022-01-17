class GrettingsController < ApplicationController
  before_action :set_gretting, only: %i[ show edit update destroy ]

  # GET /grettings or /grettings.json
  def index
    @grettings = Gretting.all.order(created_at: :desc)
  end

  # GET /grettings/1 or /grettings/1.json
  def show
  end

  # GET /grettings/new
  def new
    @gretting = Gretting.new
  end

  # GET /grettings/1/edit
  def edit
  end

  # POST /grettings or /grettings.json
  def create
    @gretting = Gretting.new(gretting_params)

    respond_to do |format|
      if @gretting.save
        format.html { redirect_to root_path, notice: "Gretting was successfully created." }
        format.json { render :show, status: :created, location: @gretting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gretting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grettings/1 or /grettings/1.json
  def update
    respond_to do |format|
      if @gretting.update(gretting_params)
        format.html { redirect_to gretting_url(@gretting), notice: "Gretting was successfully updated." }
        format.json { render :show, status: :ok, location: @gretting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gretting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grettings/1 or /grettings/1.json
  def destroy
    @gretting.destroy

    respond_to do |format|
      format.html { redirect_to grettings_url, notice: "Gretting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gretting
      @gretting = Gretting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gretting_params
      params.require(:gretting).permit(:name, :message)
    end
end
