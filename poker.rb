def royal_flush(hand)
  valid = true
  s = hand[0][1]
  all = ["T", "J", "Q", "K", "A"]
  hand.each do |card|
      if card[1] !=s
       valid = false
       break
      end
      if all.delete(card[0]) == nil
          valid = false
          break
      end

  end
  valid
end


puts royal_flush(["TH", "JH", "QH", "KH", "1H"])