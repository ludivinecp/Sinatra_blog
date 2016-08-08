namespace :dev_data do
  desc "Migrate the database"
    task :migrate do
      puts "Migrating database"
      DataMapper.auto_migrate!
    end

  desc "fill in the database"
    task :fill_in_bdd do
      Post.create!(
        title: "Mon premier article",
        content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id ratione harum illo, dicta minima rerum quod natus cupiditate voluptatibus rem! Amet reprehenderit voluptatum animi, eligendi quia quos reiciendis veritatis magni.",
        photo: "https://unsplash.it/600?image=0",
        rating: "5"
      );

       Post.create!(
        title: "Un deuxième article",
        content: "Eventually the guys with real ideas not running a scam on the world will overcome. I used an exclamation just to be an asshole and also to make a point! LOL Young Thug is super inspiring to me. Amazing artist!!! I also wanted to point out that it’s the first album to go number 1 off of streaming!!! ",
        photo: "https://unsplash.it/600?image=1",
        rating: "2"
      );

      Post.create!(
        title: "Tout sur mon chat",
        content: "also to Kim’s hair and makeup Lorraine jewelry and the whole style squad at Balmain and the Yeezy team. When companies doubt me they doubt us. Wes daytime",
        rating: "4"
      );

      Post.create!(
        title: "Tout sur mon chien",
        content: "I love Rick Owens’ bed design but the back is too high for the beams and angle of the ceiling And now I look and look around and there’s so many Kanyes Man that'd be so Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.",
        photo: "https://unsplash.it/600?image=2",
      );

      Post.create!(
        title: "L'affaire Cromas Town",
        content: " Thank you Anna for the invite thank you to the whole Vogue team Thank you to everybody who made The Life of Pablo the number 1 album in the world!!! What if Kanye made a song about Kanye ",
        photo: "https://unsplash.it/600?image=3",
        rating: "3",
      );

      Comment.create!(
        content:["super", "cool!", "bien écrit", "first!", "why is everyone speaking French here?"],
      );

      Comment.create!(
        content: ["J'ai préféré l'autre article", "je n'ai pas vraiment compris le deuxième paragraphe", "une suite?"],
      );

      Comment.create!(
        content:["A revoir", "Découvrez ma page Facebook! @Kamsoerzi"],
      );

      Comment.create!(
        content: ["Nul"],
      );

      Comment.create!(
        content:["J'ai adoré mais j'aurais préféré qu'elle finisse avec John", "good article", "Ajouté dans mes favoris!"],
      );

      puts "bdd completed !"
    end
end
