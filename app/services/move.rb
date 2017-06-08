# All of the business logic to play our game
# TODO: Will all of this work with Sidekiq? 🤔
class Move
  def initialize(params)
    @battle = Battle.last # Kludge: in a real game you would want to track multiple battles
    @player = params[:player]
    @move = ActiveSupport::HashWithIndifferentAccess.new(params[:move])
  end

  def make!
    sleep @move[:queue_time].to_i
    move_successful = rand() < @move[:success_rate]

    if move_successful
      @battle.reload
      @battle.damage_total += @move[:damage].to_i
      @battle.save!
    end

    record_move(move_successful)
  end

  private
  def record_move(successful)
    message = "#{successful ? 'SUCCESS' : 'FAIL'} did _#{@move[:name]}_ causing *#{@move[:damage]}* damage"

    Activity.create!({
      activity_by: @player[:name],
      successful: successful,
      message: message
    })
  end
end
