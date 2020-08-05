class ClientController < ActionController::API
  before_action :set_client, only: [:update, :show]
  
  # route is GET /client
  def index
    render json: Client.all
  end

  # route is POST /client
  def create
    client = Client.new(client_params)

    if !client.billing_plan
      render json: {error: "you need to select a plan"} 
    else      
      client.save
      render json: client, status: :created
    end
  end

  #route is PUT /client/:id
  def update
    @client.update(client_params)
    render json: @client
  end

  #route is GET /client/:id
  def show
    render json: @client
  end

  private 
  def client_params
    params.permit(:active, :name, :email, :billing_plan)
  end

  def set_client
   @client = Client.find(params[:id])
  end
end