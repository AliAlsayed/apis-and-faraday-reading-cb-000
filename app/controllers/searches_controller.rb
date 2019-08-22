class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = '1W211QEWBVU50BUP5RILVJFTKC51KOL2LX3FDULXJYY4O2CK'
    end
  end
end
