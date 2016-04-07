Article.delete_all

500.times do
  Article.create(title:   Faker::Hipster.sentence, 
                 content: Faker::Hipster.paragraph(3))
end
