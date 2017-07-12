
def diffPossible(a, b)

  h = {}

  a.map do |e|
    return 1 if h[e]

    h[b+e] = 1

  end

  0
end


p diffPossible [19, 11,85,100,44,3,32,96,72,93,76,67,93,63,5,10,45,99,35,13
                ], 60
