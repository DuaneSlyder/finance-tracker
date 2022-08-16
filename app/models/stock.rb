class Stock < ApplicationRecord
  
  #self is here because the call is only used with the class and not an object. 
  #for example Stock.new_lookup('MSFT')
  def self.new_lookup(ticker_symbol)
    #keys are hardcoded so you don't want to save in github unprotected
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
      secret_token: 'Tsk_5773fe6202aa4c3d9ae16014a08e37c1',
      endpoint: 'https://sandbox.iexapis.com/v1' )
      #since this is the last statement of our method it is implied that the code
      #is returning the price for the tickersymbol
    client.price(ticker_symbol)
      
  end
end
