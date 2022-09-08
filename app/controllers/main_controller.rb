class MainController < ApplicationController
  skip_before_action :verify_authenticity_token

  $row = 0
  def home
  end

  def test
    @n = $row
  end

  def check
    $row = params[:ddform].to_i
    redirect_to '/main/test'

  end

  def calculate
    $max = 0.0
    $sub = "noone"
    $sum = 0.0
    (1..$row).each do |i|
      if $max < params[:"grd#{i}"].to_f
        $sub = params[:"sub#{i}"]
        $max = params[:"grd#{i}"].to_f
      end
      $sum += params[:"grd#{i}"].to_f
    end
    @sb = $sub
    @ans = $sum
  end
end
