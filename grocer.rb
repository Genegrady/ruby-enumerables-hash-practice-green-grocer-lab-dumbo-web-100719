def consolidate_cart(cart)
 new_hash = {}
 cart.each do |element_hash|
  element_name = element_hash.keys[0]
  element_stats = element_hash.values[0]
  
    if new_hash.has_key?(element_name)
      new_hash[element_name][:count] += 1 
    else
      new_hash[element_name] = {
        count: 1,
        price: element_stats[:price], 
        clearance: element_stats[:clearance],
      }
    end
  end
  new_hash
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    item = coupons[:item]
    if cart[item] && coupon[:item][:count] >= coupon[:num] && !cart["#{item} W/COUPON"]
      cart["#{item} W/COUPON"] = {price: coupon[:cost] / coupon[] ,clearance: ,count: }
  end 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
