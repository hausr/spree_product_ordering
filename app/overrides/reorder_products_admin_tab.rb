Deface::Override.new(:virtual_path => "spree/admin/shared/_product_sub_menu",
                     :name => "reorder_products_admin_tab",
                     :insert_bottom => "[data-hook='admin_product_sub_tabs']",
                     :text => "<%= tab :reorder, :route => 'admin_reorder_products', :match_path => '/reorder_products' %>")
Deface::Override.new(
  :virtual_path  => "spree/admin/products/index",
  :set_attributes => "#listing_products", 
  :attributes => {:class => 'index sortable', "data-sortable-link" => "<%= update_positions_admin_products_url %>" },
  :name => "Sortable products"
)
Deface::Override.new(
  :virtual_path  => "spree/admin/products/index",
  :insert_top => '[data-hook="admin_products_index_headers"]',
  :text          => "<th width='70'><%= sort_link @search,:position, 'Posizione', {}, {:title => 'admin_products_listing_position_title'} %></th>",
  :name => "Position th"
)
Deface::Override.new(
  :virtual_path  => "spree/admin/products/index",
  :insert_top => '[data-hook="admin_products_index_rows"]',
  :text          => '<td><span class="handle"></span></td>',
  :name => "Position td"
)