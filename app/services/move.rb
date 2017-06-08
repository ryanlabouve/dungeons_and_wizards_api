# All of the business logic to play our game
# TODO: Will all of this work with Sidekiq? 🤔
class Move
  def initialize(params)
    @battle = Battle.last
    @player = params[:player]
    @move = params[:move]
  end

  def make!
    sleep @move["queue_time"].to_i
    move_successful = rand() < @move["success_rate"]

    if move_successful
      @battle.damage_total += @move["damage"].to_i
      @battle.save!
    end

    record_move(move_successful)
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
