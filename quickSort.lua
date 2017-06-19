unsortedTable = {}

for i = 1, 20, 1 do
  unsortedTable[i] = math.random(100)
end

for k, v in pairs(unsortedTable) do
  print(k, v)
end

function quickSort(table)
  print("\nsorting...\n")
  if #table < 2 then return table end
  local p = table[math.random(#table)]
  local ps, ls, hs = {}, {}, {}
  for k, v in pairs(table) do
    if v < p then ls[#ls+1] = v end
    if v > p then hs[#hs+1] = v end
    if v == p then ps[#ps+1] = v end
  end
  local sls, shs, s = quickSort(ls), quickSort(hs), {}
  for k, v in pairs(sls) do s[#s+1] = v end
  for k, v in pairs(ps) do s[#s+1] = v end
  for k, v in pairs(shs) do s[#s+1] = v end
  return s
end

sortedTable = quickSort(unsortedTable)

for k, v in pairs(sortedTable) do
  print(k, v)
end
