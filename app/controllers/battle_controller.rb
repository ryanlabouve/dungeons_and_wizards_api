class BattleController < ApplicationController
  def stats
    @battle = Battle.last || Battle.create!({ hp_total: 1000, damage_total: 0 })
    render json: @battle
  end

  def move
    # TODO refactor this to be less dumb
    @battle = Battle.last
    @move_name = params['name']
    @player = Player.where('moves @> ?', "[{\"name\": \"#{@move_name}\"}]")
    # TODO error if no player
    @move = @player.first.moves.select { |m| m['name'] == @move_name }
    @move = @move.first
    sleep @move["queue_time"].to_i
    @battle.damage_total += @move["damage"].to_i
    if @battle.save!
      render json: { "success": true }
    else
      render json: { "success": false }
    end
    # TODO Push to activity log
  end
end
