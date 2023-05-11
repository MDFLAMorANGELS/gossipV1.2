class GossipsController < ApplicationController
  def show

  end

  def index
    @user = User.first.first_name
    @gossips = Gossip.all.reverse
  end

  def new

  end
  def create
    u = Gossip.create(author: params["author"],title: params["title"],content: params["content"])
    puts u
  end
end