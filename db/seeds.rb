# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

user_1 = User.create!(
        name: 'Diana23',
        email: 'diana23@mail.ru',
        password: '123456', 
        password_confirmation: '123456', 
        info: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.',
        avatar: File.new(fixtures_path.join('avatar-1.jpg'))
)
user_2 = User.create!(
        name: 'Egor217',
        email: 'Egor217@mail.ru',
        password: '123456', 
        password_confirmation: '123456', 
        info: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.',
        avatar: File.new(fixtures_path.join('avatar-2.png'))
)
user_3 = User.create!(
        name: 'Olya0207',
        email: 'olya_0207@mail.ru',
        password: '123456', 
        password_confirmation: '123456', 
        info: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.',
        avatar: File.new(fixtures_path.join('avatar-3.jpg'))
)

photo_1 = Photo.create!(
    image: File.new(fixtures_path.join('photo-1.jpg')),
    user_id: user_1.id, 
    title: "Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia"
)
photo_2 = Photo.create!(
    image: File.new(fixtures_path.join('photo-2.jpg')),
    user_id: user_1.id, 
    title: "Pariatur voluptatem obcaecati id quia amet omnis, iure delectus quaerat molestiae, iste quasi similique dolor, labore."
)
photo_3 = Photo.create!(
    image: File.new(fixtures_path.join('photo-3.jpg')),
    user_id: user_2.id, 
    title: "Explicabo earum libero fuga commodi, animi beatae nihil et molestias."
)
photo_4 = Photo.create!(
    image: File.new(fixtures_path.join('photo-5.jpg')),
    user_id: user_2.id, 
    title: "Necessitatibus a nam dolorum, adipisci nesciunt reprehenderit autem doloremque at. Cum commodi excepturi non!"
)
photo_5 = Photo.create!(
    image: File.new(fixtures_path.join('photo-4.jpg')),
    user_id: user_3.id, 
    title: "Eligendi natus earum sequi expedita ducimus impedit, dolor facilis dolores voluptatem nisi!"
)
photo_6 = Photo.create!(
    image: File.new(fixtures_path.join('photo-2.jpg')),
    user_id: user_3.id, 
    title: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod reprehenderit"
)


comments = Comment.create!([
  {
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque quaerat ad itaque reprehenderit similique, earum quia. Necessitatibus a nam dolorum, adipisci nesciunt reprehenderit autem doloremque at. Cum commodi excepturi non!",
    user_id: user_2.id,
    photo_id: photo_1.id
  }, 
  {
    content: "Explicabo earum libero fuga commodi, animi beatae nihil et molestias. Eligendi natus earum sequi expedita ducimus impedit, dolor facilis dolores voluptatem nisi!",
    user_id: user_3.id,
    photo_id: photo_1.id
  }, 
  {
    content: "Earum libero fuga commodi. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    user_id: user_3.id,
    photo_id: photo_2.id
  }, 
  {
    content: "Consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    user_id: user_1.id,
    photo_id: photo_3.id
  }, 
  {
    content: "Dolor sit amet, consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    user_id: user_3.id,
    photo_id: photo_4.id
  }, 
  {
    content: "Sed enim debitis eaque eos molestias sit repellendus commodi itaque voluptatum. Ullam ipsum esse molestias, nobis, dolores numquam suscipit minus reiciendis nostrum! Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    user_id: user_2.id,
    photo_id: photo_5.id
  }, 
  {
    content: "Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
    user_id: user_1.id,
    photo_id: photo_6.id
  }, 
  {
      content: "Consectetur adipisicing elit. Quod reprehenderit similique voluptas consectetur facilis vitae ex molestiae officia, vel eveniet assumenda voluptatibus. Nulla laboriosam voluptatibus dignissimos, sed, impedit doloremque quisquam.",
      user_id: user_2.id,
      photo_id: photo_6.id
   }
])
  
