unsortedTable = {}

for i = 1, 20, 1 do
  unsortedTable[i] = math.random(100)
end

for k, v in pairs(unsortedTable) do
  print(k, v)
end

function merge(table1, table2)
  local merged = {}
  while #table1 > 0 and #table2 > 0 do
    if table1[1] < table2[1] then
      merged[#merged+1] = table1[1]
      table.remove(table1, 1)
    else
      merged[#merged+1] = table2[1]
      table.remove(table2, 1)
    end
  end
  local fullMerged = {}
  for k, v in pairs(merged) do fullMerged[#fullMerged+1] = v end
  for k, v in pairs(table1) do fullMerged[#fullMerged+1] = v end
  for k, v in pairs(table2) do fullMerged[#fullMerged+1] = v end
  return fullMerged
end

function mergeSort(table)
  if #table < 2 then return table end
  local firstHalf = mergeSort({unpack(table, 1, math.floor(#table/2))})
  local secondHalf = mergeSort({unpack(table, math.floor(#table/2)+1, #table)})
  return merge(firstHalf, secondHalf)
end

sortedTable = mergeSort(unsortedTable)

for k, v in pairs(sortedTable) do
  print(k, v)
end
