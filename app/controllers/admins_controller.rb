class AdminsController < ApplicationController
  # before_action :set_admin, only: %i[ show edit update destroy ]

  # GET /admins or /admins.json
  def index
    # @admins = admin.all
  end

  # GET /admins/1 or /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    # @admin = admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins or /admins.json
  def create
    # @admin = admin.new(admin_params)

    # respond_to do |format|
    #   if @admin.save
    #     format.html { redirect_to admin_url(@admin), notice: "admin was successfully created." }
    #     format.json { render :show, status: :created, location: @admin }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @admin.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /admins/1 or /admins/1.json
  def update
    # respond_to do |format|
    #   if @admin.update(admin_params)
    #     format.html { redirect_to admin_url(@admin), notice: "admin was successfully updated." }
    #     format.json { render :show, status: :ok, location: @admin }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @admin.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /admins/1 or /admins/1.json
  def destroy
    @admin.destroy!

    respond_to do |format|
      format.html { redirect_to admins_url, notice: "Admin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      # @admin = admin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      # params.fetch(:admin, {})
    end
end
