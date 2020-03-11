def first_come_first_served?(take_out_orders, dine_in_orders, served_orders)
    take_out_orders_index = 0
    dine_in_orders_index = 0
    take_out_max_index = take_out_orders.length - 1
    dine_in_max_index = dine_in_orders.length - 1

    served_orders.each do |order|
        if take_out_orders_index <= take_out_max_index && take_out_orders[take_out_orders_index] == order
            take_out_orders_index += 1
        elsif dine_in_orders_index <= dine_in_max_index && dine_in_orders[dine_in_orders_index] == order
            dine_in_orders_index += 2
        else 
            return false
        end
    end

    if dine_in_orders_index != dine_in_orders.length || take_out_orders_index != take_out_orders.length
        return false
    end
    
    true
end

# above is iterative solution
# below if recursive from icake

# def first_come_first_served?(take_out_orders, dine_in_orders, served_orders, take_out_orders_index = 0, dine_in_orders_index = 0, served_orders_index = 0)

#     # base case we've hit the end of served_orders
#     if served_orders_index == served_orders.length
#       return true
#     end
  
#     # if we still have orders in take_out_orders
#     # and the current order in take_out_orders is the same
#     # as the current order in served_orders
#     if take_out_orders_index < take_out_orders.length &&
#           take_out_orders[take_out_orders_index] == served_orders[served_orders_index]
#       take_out_orders_index += 1
  
#     # if we still have orders in dine_in_orders
#     # and the current order in dine_in_orders is the same
#     # as the current order in served_orders
#     elsif dine_in_orders_index < dine_in_orders.length &&
#           dine_in_orders[dine_in_orders_index] == served_orders[served_orders_index]
#       dine_in_orders_index += 1
  
#     # if the current order in served_orders doesn't match
#     # the current order in take_out_orders or dine_in_orders, then we're not
#     # serving in first-come, first-served order.
#     else
#       return false
#     end
  
#     # the current order in served_orders has now been "accounted for"
#     # so move on to the next one
#     served_orders_index += 1
#     first_come_first_served?(
#       take_out_orders, dine_in_orders, served_orders, 
#       take_out_orders_index, dine_in_orders_index, served_orders_index
#     )
#   end
  