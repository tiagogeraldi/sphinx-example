Article.delete_all

5000.times do
  Article.create(title:   Faker::Hipster.sentence, 
                 content: Faker::Hipster.paragraph(3))
end
