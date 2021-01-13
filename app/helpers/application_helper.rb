# frozen_string_literal: true

module ApplicationHelper
  def show_user_name(current_user)
    if signed_in?
      "<li class='nav-item'>
        <div class='nav-link text-white'>
          Logged in as <strong>#{link_to current_user.name, user_path(current_user)} </strong>
        </div>
      </li>
      <li class='nav-item'>
         #{link_to 'logout', destroy_user_session_path, class: 'nav-link text-white', method: :delete}
      </li>".html_safe
    else
      "<li class='nav-item'>
        #{link_to 'Log in / Sign up', new_user_registration_path, class: 'nav-link text-white'}
      </li>".html_safe
    end
  end

  def show_transaction_icon(transaction, class_names)
    if transaction.groups.empty?
      image_tag 'group_images/empty.png', class: 'transaction_icon card-img-top mr-3 border rounded'
    else
      image_tag transaction.groups.first.icon, class: class_names
    end
  end

  def show_cheapest_and_expensivest
    unless current_user.transactions.empty?
      "<div class='mr-5 d-flex flex-column align-items-center'>
         <p class='font-weight-bold'>Expensivest</p>
         #{link_to @most_expensive_transaction.name, user_transaction_path(current_user, @most_expensive_transaction)}
      </div>
      <div class='d-flex flex-column align-items-center'>
         <p class='font-weight-bold'>Cheapest</p>
         #{link_to @most_cheapest_transaction.name, user_transaction_path(current_user, @most_cheapest_transaction)}
      </div>".html_safe
    end
  end
end
