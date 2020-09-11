self.when(:flag_clicked) do
  go_to([0, -160])
  self.size = 80
end

self.when(:key_pressed, "right arrow") do
  if x < 120
    self.x += 10
  end
end

self.when(:key_pressed, "left arrow") do
  if x > -120
    self.x += -10
  end
end
