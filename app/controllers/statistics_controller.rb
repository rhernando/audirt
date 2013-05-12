class StatisticsController < ApplicationController
  def subscriptions_graph
    summ = 0
    cols = [['string', 'Cadena'], ['number','Share']]
    rows = []
    Cadena.all.each do |c|
      rows << [c.name, rand(100)]
    end

    render :json => {
        :type => 'PieChart',
        :cols => cols,
        :rows => rows,
        :options => {
        :chartArea => {:width => '90%', :height => '75%'},
        :hAxis => {:showTextEvery => 30},
        :legend => 'bottom',
    }
    }
  end

end
