# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### Menu Management Backend

Instructions

Use Rails or another web app framework you're familiar with. Place in a Github Repo and send us a link when you're done.

The project is due 1 week after receiving this document, but you can work on it as much as you'd like.

Write extensible code, make commits, and test as you would a production application. We'd rather see a well-constructed and well-tested app with fewer features. Complete as many levels as you wish, but complete them one at a time. Resist making decisions for future levels. Your commits should reflect this approach. Do not hesitate to ask us any questions you've got.

Requirements:
Level 1: Basics
     Create an object model for Menu and MenuItems classes
     Menu has many MenuItems
     Menu and MenuItem have typical data associated with restaurants
     Illustrate behavior via unit tests

Level 2: Multiple Menus
     Extend the object model to Restaurant ,
     and allow Restaurants to have multiple Menus
     MenuItem names should not be duplicated in the database
     MenuItem can be on multiple Menus of a Restaurant
     Illustrate behavior via unit tests

Level 3: Complex Menu Items
     Extend the object model to enable the following behavior:

     A diner can order a dinner salad one of two ways:
       As a standalone dish, with selection of dressing
       As a side of an entree, with selection of dressing

     A diner can order a side of any dressing with any appetizer or entree
     Illustrate this behavior with unit tests

Level 4: Fred and Fran like Fish on Fridays
     This is a bonus! We'd love to talk about your solution if you think it's a fun problem

     Design and implement a prediction engine that predicts: The likelihood of a customer dining on a particular day What dish they are most likely to order


class Restaurant < ApplicationRecord
  has_many :menus
end

class Menu < ApplicationRecord
  has_many :menu_items, through: :menu_menu_item
  belongs_to :restaurant
end

class MenuItem < ApplicationRecord
  has_many :menus, through: :menu_menu_item
end

class MenuMenuItems < ApplicationRecord
  belongs_to :menu
  belongs_to :menu_item
end



class CategoryProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
end
class Category < ActiveRecord::Base
  has_many :category_products
  has_many :products, through: :category_products
end
class Product < ActiveRecord::Base
  has_many :category_products
  has_many :categories, through: :category_products
end