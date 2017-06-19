unsortedTable = {}
for i = 1, 20, 1 do
  unsortedTable[i] = math.random(100)
end

for k, v in pairs(unsortedTable) do
  print(k, v)
end

function swapIfNeeded(table, index)
  if index < #table then
    first = table[index]
    second = table[index+1]
    if first > second then
      table[index] = second
      table[index+1] = first
    end
  end
end


function bubbelSort(table)
  print("\nsorting...\n")
  for i = 1, #table, 1 do
    for j = 1, #table, 1 do
      swapIfNeeded(table, j)
    end
  end
  return table
end

sortedTable = bubbelSort(unsortedTable)

for k, v in pairs(sortedTable) do
  print(k, v)
end
