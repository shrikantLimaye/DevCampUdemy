10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "It is a long established fact that a reader will be distracted by the readable content of a page
		 	   when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less 
		 	   normal distribution of letters, as opposed to using 'Content here, content here',
		 	   making it look like readable English. Many desktop publishing packages and web page editors
		 	   now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' 
		 	   will uncover many web sites still in their infancy. Various versions have evolved over the
		 	   years, sometimes by accident, sometimes on purpose (injected humour and the like)."
	)
end

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "My great service",
		body: "There are many variations of passages of Lorem Ipsum available, 
			   but the majority have suffered alteration in some form, by injected humour,
			   or randomised words which don't look even slightly believable. 
			   If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
			   anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the
			   Internet tend to repeat predefined chunks as necessary, making this the first true
			   generator on the Internet. It uses a dictionary of over 200 Latin words, 
			   combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/350x200"
		)
end 

puts "9 portfoilio items created"