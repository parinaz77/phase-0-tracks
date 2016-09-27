cars_model={
  "toyota"=> ["rav4","solara"],
  "audi"=> ["a4","a6"],
  "bmw"=> ["x6","x5","x3"]
}

p cars_model["toyota"][-1]
cars_model["audi"][1]="a8"
p cars_model["audi"][1]
cars_model["bmw"].delete("x3")
p cars_model["bmw"]