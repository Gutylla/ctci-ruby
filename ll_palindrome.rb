# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {Boolean}

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  return true unless head

  slow = head
  fast = head

  while fast.next && fast.next.next
    slow = slow.next
    fast = fast.next.next
  end

  slow.next = reverse(slow.next)
  slow = slow.next

  while slow
    return false if head.val != slow.val
    head = head.next
    slow = slow.next
  end

  true

end

def reverse(head)
  pre = nil

  while head
    nxt = head.next
    head.next = pre
    pre = head
    head = nxt
  end

  pre
end

n1 = ListNode.new(5)
n2 = ListNode.new(4)
n3 = ListNode.new(4)
n4 = ListNode.new(3)
n5 = ListNode.new(4)
n6 = ListNode.new(4)
n7 = ListNode.new(5)

n1.next = n2
n2.next = n3
n3.next = n5
n4.next = n5
n5.next = n6
n6.next = n7

p is_palindrome(n1)













#* **Reverse words in a string**

# * Change “**The quick brown fox jumps over the lazy dog**” to “**dog. lazy the over jumped fox brown quick The**”

# * with ruby inbuilt methods

# * without ruby inbuilt methods

# “dog. lazy the over jumped fox brown quick The”

STRING = "The quick brown fox jumps over the lazy dog"

puts STRING.split(' ').reverse.join(' ')

# convert the sentence to an array of words

# reverse the array

# join the array elements with spaces, back to a string



def my_split(sentence)

  # make an array of words

  # have an results array

  results = []

  accumulator

  sentence.chars

end



# user.rb → name, dob, country

# post.rb → description, title



class User < ActiveRecord::Base

  has_many :posts

end



class Post < ActiveRecord::Base

  belongs_to :user

end



has_many :posts through postings

# Add a controller with an action to expose User & associated posts via json (**Talk about API's**)

class UsersController < ActionController::Base

  before_action :authenticate

  def index

    @users = User.all

    render json: @users.to_json includes: [:posts]

  end



  def at_mention

    Rails.cache(ttl: 1.day) do

      User.all.map(:name)

    end

  end

end



rspec test



UsersControllerSpec



before do

  login_as(,..)

  User.create('larry')

  User.create('Mo')

  create(name: 'Curly')

  FactoryGirl.create...

    end



context 'getting users' do

  it 'succeeds' do

    GET :index

    expect...

      end

end
