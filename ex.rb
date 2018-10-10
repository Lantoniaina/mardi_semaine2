def trader_du_dimanche
	b = [17,3,6,9,15,8,6,1,10]
	marge = 0
	achat = 0
	vente = 0
	for i in (0..b.length - 1)
		for j in (i..b.length - 1)
			if b[j] - b[i] > marge
				marge = b[j] - b[i]
				achat = i
				vente = j
			else
				next
			end
		end
	end
	puts "[#{achat}, #{vente}] ; #{b[vente]} $ - #{b[achat]} $ = #{marge} $ "
end
trader_du_dimanche