self.when(:flag_clicked) do
  self.size = 60
  show
  go_to([-180, 90])
  @横数 = 5
  @縦数 = 4
  $Bread数 = @縦数 * @横数
  @縦数.times do
    go_to([-180, y - 20])
    @横数.times do
      self.x = x + 60
      create_clone("_myself_")
    end
  end
end

self.when(:key_pressed, "space") do
  until $Bread数 == -1
    if touching?("Ball")
      $Bread数 += -1
      hide
    end
  end
  broadcast("allbread")
end
