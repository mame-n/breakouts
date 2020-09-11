self.when(:key_pressed, "space") do
  @カーソル上にある = 0
  self.size = 20
  loop do
    move(10)
    if touching?("スプライト1")
      play("Zoop")
      self.direction = 0 - direction
    end
    if touching?("スプライト2")
      play("Zoop")
      self.direction = 180 - direction
    end
    if touching?("Button2")
      play("Low Boing")
      self.direction = 180 - direction
    end
    if touching?("Bread")
      play("Coin")
      self.direction = 180 - direction
    end
    if y < -179
      play("Oops")
      hide
      stop("this script")
    end
  end
end

self.when(:flag_clicked) do
  go_to([0, -133])
  self.direction = 45
  show
  @カーソル上にある = 1
end

self.when(:receive, "allbread") do
  hide
  play("Goal Cheer")
  go_to([0, 0])
end

stop("this script")

self.when(:key_pressed, "any") do
  if @カーソル上にある == 1
    self.x = sprite("Button2").x
  end
end
