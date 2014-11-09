class FoodQsController < ApplicationController
  before_action :set_food_q, only: [:show, :edit, :update, :destroy]

  # GET /food_qs
  # GET /food_qs.json
  def index
    @food_qs = FoodQ.all
  end

  # GET /food_qs/1
  # GET /food_qs/1.json
  def show
  end

  # GET /food_qs/new
  def new
    @food_q = FoodQ.new
  end

  # GET /food_qs/1/edit
  def edit
  end

  # POST /food_qs
  # POST /food_qs.json
  def create
    @food_q = FoodQ.new(food_q_params)

    respond_to do |format|
      if @food_q.save
        format.html { redirect_to @food_q, notice: 'Food q was successfully created.' }
        format.json { render :show, status: :created, location: @food_q }
      else
        format.html { render :new }
        format.json { render json: @food_q.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_qs/1
  # PATCH/PUT /food_qs/1.json
  def update
    respond_to do |format|
      if @food_q.update(food_q_params)
        format.html { redirect_to @food_q, notice: 'Food q was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_q }
      else
        format.html { render :edit }
        format.json { render json: @food_q.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_qs/1
  # DELETE /food_qs/1.json
  def destroy
    @food_q.destroy
    respond_to do |format|
      format.html { redirect_to food_qs_url, notice: 'Food q was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_q
      @food_q = FoodQ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_q_params
      params[:food_q]
    end
end
