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
    player = Player.find(params['player_id'])
    move = player.moves.select { |m| m['name'] == params['move']['name'] }.first

    MoveWorker.perform_async({
      move: move,
      player_id: player.id,
    })

    # Add something for failure if thre's a prob scheduling move
    render json: { "success": true }
  end
end
