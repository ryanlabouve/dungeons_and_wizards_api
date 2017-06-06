class BattleController < ApplicationController
  def stats
    @battle = Battle.last || Battle.create!({ hp_total: 1000, damage_total: 0 })
    render json: @battle
  end

  def recent_activity
    @activity = Activity.all.order(id: :desc).limit(5).reverse
    render json: @activity
  end

  def move
    # TODO refactor this to be less dumb
    @battle = Battle.last
    @move_name = params['name']
    @player = Player.where('moves @> ?', "[{\"name\": \"#{@move_name}\"}]")
    @player = @player.first

    # TODO error if no player
    @move = @player.moves.select { |m| m['name'] == @move_name }
    @move = @move.first
    sleep @move["queue_time"].to_i
    @battle.damage_total += @move["damage"].to_i
    if @battle.save!
      render json: { "success": true }
    else
      render json: { "success": false }
    end

    Activity.create!({
      activity_by: @player.name,
      message: "did _#{@move["name"]}_ causing *#{@move["damage"]}* damage"
    })
  end
end
