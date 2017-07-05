################################################################
##################DD TO DO LIST  RAILS APP #####################
################################################################

instructor Todo

Student Todo

tables
Users: ability to assign tasks to user
-id
-firstname
-lastname
-email
-user_type(student vs instructor)
-bday
-

TodoLists: (title, items)
-id
-title
-created_at
-owner
-status(complete/incomplete//in progress)
-number of items



TodoItems:
-assignor
-assignee
-name
-description
-due date
-status (complete, incomplete, in progress)
-delete


Rails new ddev_todo_app -T --database=postgresql
Gemfile - has all the gems required for the rails app + version constraints
update README, how to run in development
config- database to use
app > models
bundle exec rails db:create

to generate new tables: use migration files (db>migrate)

create user table in DB:
bundle exec rails generate migration create_users
^ created a new migration file, add user columns
  t.string :firstname,
  t.integer :user_type,
  t.date :dob,

  t.timestamps #creates created_at & updated_at

migrate to DB
bundle exec rails db:migrate

create todo list:
bundle exec rails generate migration create_todo_list
  t.string :title,
  t.integer :status,
  t.references :user, foreign_key: true,
  t.timestamps
bundle exec rails db:migrate
looks at PSequel to check

create todo Items:
bundle exec rails generate migration create_todo_items
    t.text :description
    t.string :summary
    t.datetime : due_date (reminder?)


    t.timestamps
create addListReferenceToTodoItems:
    add reference file??????
      def change
        add_reference :todo_items, :todo_list, foreign_key: true
      end

create addStatusToTodoItems:
  def change
    add_column, :todo_items, :status, :integer, default: 0
  end
  bundle exec rails db:migration

add 2 reference to the user table for assginer

generate migration add_assigner_and_assignee_refence_to_todo_itmes
  def change
    add_reference :todo_items, :user, foreign_key: true
    add_column :todo_ites, :assigneee_id, :integer
  end

create 3 new model files in models
& add associations between our models
  class User < ApplicationRecord
    has_many :todo_lists
    has_many :todo_items
  end

  class TodoList < ApplicationRecord
    belongs_to :user
    has_many :items
  end

  class TodoItem < ApplicationRecord
    belongs_to :user
    belongs_to :assignee, class_name: "User"
    belongs_to :todo_list
    end

look at some records in irb: rac or rails c

u = User.new
u.firstname = "Esteban"
u.lastname = "Avila"
u.email = "estebanavila@gmail.com"
u.user_type = 0
u.dob = "1995-01-07".to_date
u.ice_cream = "green tea"
u # look at his user
u.save
confirm in DB

create todo list for esteban:

list = TodoList.new
list.status = 0 (should have done this too???)
list.user = u #adds E as user
u
list
list.title = "Shopping List"
list
list.save


user,
post karma
preferences
posting comments
what kind of data in the comments

subreddit
posts,
comments,
