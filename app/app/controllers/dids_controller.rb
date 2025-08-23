class DidsController < ApplicationController
  before_action :set_did, only: %i[ show edit update destroy ]

  # GET /dids or /dids.json
  def index
    @dids = Did.all
  end

  # GET /dids/1 or /dids/1.json
  def show
  end

  # GET /dids/new
  def new
    @did = Did.new(day: Date.today)
  end

  # GET /dids/1/edit
  def edit
  end

  # POST /dids or /dids.json
  def create
    items = did_params[:items].delete_if{|k,v| v.blank? }
    @did = Did.new(day: did_params[:day], items: )

    respond_to do |format|
      if @did.save
        format.html { redirect_to @did, notice: "Did was successfully created." }
        format.json { render :show, status: :created, location: @did }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @did.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dids/1 or /dids/1.json
  def update
    respond_to do |format|
      items = did_params[:items].delete_if{|k,v| v.blank? }
      if @did.update(day: did_params[:day], items: )
        format.html { redirect_to @did, notice: "Did was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @did }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @did.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dids/1 or /dids/1.json
  def destroy
    @did.destroy!

    respond_to do |format|
      format.html { redirect_to dids_path, notice: "Did was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_did
      @did = Did.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def did_params
      params.expect(did: [ :day, items: {} ])
    end
end
