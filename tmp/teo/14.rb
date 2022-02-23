

def getMinDeletions(s)
  h = {}
  c = 0
  for i in 0...s.size
    if h[s[i]]
      c+=1
    else
      h[s[i]]=true
    end
  end
  c
end




puts getMinDeletions("abab")