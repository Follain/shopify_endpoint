class LineItem

  def add_shopify_obj shopify_li, shopify_api
    @shopify_id = shopify_li['id']
    @shopify_product_id = shopify_li['product_id']
    @sku = shopify_li['sku'].blank? ? "SKU Must Be Set!" : shopify_li['sku']
    @name = shopify_li['name']
    @quantity = shopify_li['quantity'].to_i
    @price = shopify_li['price']
    
    self
  end
  
  def wombat_obj
    [
      {
        'id' => @sku,
        'shopify_id' => @shopify_id,
        'shopify_product_id' => @shopify_product_id,
        'name' => @name,
        'quantity' => @quantity,
        'price' => @price
      }      
    ]
  end
      
end