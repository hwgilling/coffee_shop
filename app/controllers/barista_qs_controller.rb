class BaristaQsController < ApplicationController
  before_action :set_barista_q, only: [:show, :edit, :update, :destroy]

  # GET /barista_qs
  # GET /barista_qs.json
  def index
    @barista_qs = BaristaQ.all
  end

  # GET /barista_qs/1
  # GET /barista_qs/1.json
  def show
  end

  # GET /barista_qs/new
  def new
    @barista_q = BaristaQ.new
  end

  # GET /barista_qs/1/edit
  def edit
  end

  # POST /barista_qs
  # POST /barista_qs.json
  def create
    @barista_q = BaristaQ.new(barista_q_params)

    respond_to do |format|
      if @barista_q.save
        format.html { redirect_to @barista_q, notice: 'Barista q was successfully created.' }
        format.json { render :show, status: :created, location: @barista_q }
      else
        format.html { render :new }
        format.json { render json: @barista_q.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barista_qs/1
  # PATCH/PUT /barista_qs/1.json
  def update
    respond_to do |format|
      if @barista_q.update(barista_q_params)
        format.html { redirect_to @barista_q, notice: 'Barista q was successfully updated.' }
        format.json { render :show, status: :ok, location: @barista_q }
      else
        format.html { render :edit }
        format.json { render json: @barista_q.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barista_qs/1
  # DELETE /barista_qs/1.json
  def destroy
    @barista_q.destroy
    respond_to do |format|
      format.html { redirect_to barista_qs_url, notice: 'Barista q was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barista_q
      @barista_q = BaristaQ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barista_q_params
      params[:barista_q]
    end
end
