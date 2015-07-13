User.create!([
  {email: "example@google.com", encrypted_password: "$2a$10$OY6CRAkXwe8mcL3kvIcU1Otpu4k38zq8uqiD8qoXlt3Kq/ji4mEnS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {email: "example2@google.com", encrypted_password: "$2a$10$FXY7/iGcIdvRX7j5fZ0StuA/miqgK2umlCxNaoeiCCIKVCndksm0.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
Comment.create!([
  {user_id: 1, post_id: 2, parent_id: nil, content: "This is example comment to example post"},
  {user_id: 2, post_id: 2, parent_id: 1, content: "This is example of reply"},
  {user_id: 2, post_id: 3, parent_id: nil, content: "First comment"}
])
Post.create!([
  {title: "Link to Google Search", content: "<a href=\"http://www.google.com\">Google Search</a>", score: 2, user_id: 1},
  {title: "Lorem Ipsum", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", score: -1, user_id: 2}
])
Vote.create!([
  {user_id: 1, post_id: 2},
  {user_id: 2, post_id: 3},
  {user_id: 2, post_id: 2}
])
