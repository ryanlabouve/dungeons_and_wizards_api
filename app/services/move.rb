class Move
  def initialize(params)
    @battle = Battle.last
    @player = params[:player]
    @move = params[:move]
  end

  def make!
    sleep @move["queue_time"].to_i
    # May need to do an eplicit transation

    # Battle.transaction do
    @battle.reload
    if rand() < @move["success_rate"]
      @battle.damage_total += @move["damage"].to_i.abs
      @battle.save!
      record_move(true)
    else
      record_move(false)
    end
    # end
  end

  private
  def record_move(successful)
    Activity.create!({
      activity_by: @player.name,
      successful: successful,
      message: "#{successful === true ? 'SUCCESS' : 'FAIL'} did _#{@move["name"]}_ causing *#{@move["damage"]}* damage"
    })
  end
end
