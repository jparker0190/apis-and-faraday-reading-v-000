class SearchesController < ApplicationController
  def search
  end
  def foursquare
   @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     client_id = req.params['VEB0OAQTYTHNGDJNMGQCC2JVXXSMEAVFNZKFQBYYN3DHSF0U']
     client_secret = req.params['AISKI0PBVU2QMEK3030S0WLYM2KOGOBQYD4MUYCQFEUFRC3A']
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'
 end
end
