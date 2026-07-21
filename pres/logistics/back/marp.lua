Span = function (el)
  -- store the attributes for color and highlight
  -- color = el.attributes['color']
  -- highlight = el.attributes['highlight']
  
  -- create a function to check for emptiness
  local function isempty(s)
    return s == nil or s == ''
  end
  
  -- highlight stuff that ends in {.u}
  if el.classes[1] == "u" then
    table.insert(
      el.content, 1, 
      pandoc.RawInline('markdown', '<u>')
    )
    table.insert(
      el.content, 
      pandoc.RawInline('markdown', '</u>')
    )
  end
  if el.classes[1] == "h" then
    table.insert(
      el.content, 1, 
      pandoc.RawInline('markdown', '<h>')
    )
    table.insert(
      el.content, 
      pandoc.RawInline('markdown', '</h>')
    )
end
  return el.content 
end


