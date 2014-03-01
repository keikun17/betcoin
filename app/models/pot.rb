class Pot < ActiveRecord::Base
  attr_accessible :name, :wallet_address

  def total_received
    begin
      BlockchainInfo.getreceivedbyaddress(wallet_address)
    rescue
      "cannot retrieve"
    end
  end

  def show_transactions
    @transactions ||= BlockchainInfo.multiaddr(wallet_address)
  end
end
