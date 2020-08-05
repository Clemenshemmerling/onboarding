class ClientController < ActionController::API
  
  # route is /client
  def index
    render json: Client.all
  end

  # route is /client
  def create
    client = Client.new(client_params)

    if !client.billing_plan
      render json: {error: "you need to select a plan"} 
    else      
      client.save
      render json: client, status: :created
    end
  end

  private 
  def client_params
    params.permit(:active, :name, :email, :billing_plan)
  end
end