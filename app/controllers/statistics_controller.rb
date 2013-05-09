class StatisticsController < ApplicationController
  def subscriptions_graph
    summ = 0
    cols = Cadena.all.map{|x| ['string', x.name]}
    rows = []
    (Cadena.count - 1).times.each do
      num = 100-summ
      rows << rand(num)
      summ+=num
    end
    rows << 100-summ

    render :json => {
        :type => 'BarChart',
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
