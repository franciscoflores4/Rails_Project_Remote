<% if !@order_item.nil? && @order_item.errors.any? %>
  <div class="alert alert-danger">
    <ul>
    <% @order_item.errors.full_messages.each do |msg| %>
      <li><%= msg %></li>
    <% end %>
    </ul>
  </div>
<% end %>
<% if @order_items.size == 0 %>
  <p class="text-center">
    There are no items in your shopping cart.  Please <%= link_to "go back", root_path %> and add some items to your cart.
  </p>
<% else %>
  <% @order_items.each do |order_item| %>
    <%= render 'carts/cart_row', product: order_item.product, order_item: order_item, show_total: true %>
  <% end %>
<% end %>