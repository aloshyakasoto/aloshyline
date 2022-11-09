//@version=5
indicator("Aloshy Line", "", true)
line1 = ta.ema(close, 32)
line2 = ta.ema(close, 58)
p1PlotID = plot(line1, "EMA32", color.blue)
p2PlotID = plot(line2, "EMA58", color.blue)
fill(p1PlotID, p2PlotID, line1 > line2 ? color.new(color.yellow, 75) : color.new(color.blue, 75))
