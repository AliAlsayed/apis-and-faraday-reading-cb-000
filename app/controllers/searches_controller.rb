class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = '1W211QEWBVU50BUP5RILVJFTKC51KOL2LX3FDULXJYY4O2CK'
      req.params['client_secret'] = 'L23ZPZSTQIHAKH1XR4MNSAL4XUD1IWNRCS4PQGWCW5W4CBIY'
      req.params['v'] = '20160201'
    end
  end
end
