class Move
  def initialize(params)
    @battle = Battle.last
    @player = params[:player]
    @move = params[:move]
  end

  def make!
    sleep @move["queue_time"].to_i
    @battle.damage_total += @move["damage"].to_i.abs
    @battle.save!
    record_move()
  end

  private
  def record_move
    Activity.create!({
      activity_by: @player.name,
      message: "did _#{@move["name"]}_ causing *#{@move["damage"]}* damage"
    })
  end
end
