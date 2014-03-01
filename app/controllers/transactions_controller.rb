class TransactionsController < ApplicationController

  def show
    @transaction = BlockchainInfo.single_transaction(params[:id])
  end
end
