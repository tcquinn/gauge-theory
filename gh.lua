function CodeBlock(block)
   if block.classes[1] == "math" then
      return pandoc.Math("DisplayMath", block.text)
   end
end
