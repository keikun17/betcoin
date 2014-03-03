class Pot < ActiveRecord::Base
  belongs_to :match
  attr_accessible :name, :wallet_address, :match_id

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
