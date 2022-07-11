class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update destroy ]
  before_action :set_client_options, only: [:show, :edit, :update, :destroy]

  # GET /clients or /clients.json
  def index
    #set_client_options
    #p "clients_controllers:index:CLIENT OPTIONS #{@client_options}"

    @clients = Client.all
  end

  # GET /clients/1 or /clients/1.json
  def show
    #set_client_options
    #p "clients_controllers:show:CLIENT OPTIONS #{@client_options}"
  end

  # GET /clients/new
  def new
    #set_client_options
    #p "clients_controllers:new:CLIENT OPTIONS #{@client_options}"
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
    #set_client_options
    #p "clients_controllers:edit:CLIENT OPTIONS #{@client_options}"
  end

  # POST /clients or /clients.json
  def create
    #set_client_options
    #p "clients_controllers:create:CLIENT OPTIONS #{@client_options}"
    #p "CREATE:client_controller"
    #p "PRE: clients_controllers:create:client_params = #{client_params}"

    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to client_url(@client), notice: "Client was successfully created." }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1 or /clients/1.json
  def update
    #set_client_options
    #p "clients_controllers:update:CLIENT OPTIONS #{@client_options}"

    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to client_url(@client), notice: "Client was successfully updated." }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1 or /clients/1.json
  def destroy
    @client = Client.find_by(id: params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url, notice: "Client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    def set_client_options
      @client_options = Client.all.map{ |u| [ u.name, u.id ] }
      p "clients_controllers:set_cliente_options:CLIENT OPTIONS #{@client_options}"
    end 
  
    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:name, :phone, :email)
    end
end
