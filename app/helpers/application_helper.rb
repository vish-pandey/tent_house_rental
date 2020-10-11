module ApplicationHelper

  def image_path product_name=nil
    case product_name
    when "Plastic Chairs"
      "tent_for_rent/products/plastic_chair.jpg"
    when "Tiffany Chairs"
      "tent_for_rent/products/tiffany_chairs.jpg"
    when "Bridal Chair" 
      "tent_for_rent/products/bridal_chair.jpeg"
    when "Plastic Round Tables" 
      "tent_for_rent/products/plastic_round_table.jpg"
    when "Plastic Rectangular Table" 
      "tent_for_rent/products/plastic_rectangular_table.jpg"
    when "Steel Folding Table" 
      "tent_for_rent/products/steel_folding_table.jpeg"
    when "Gas Stoves" 
      "tent_for_rent/products/gas_stoves.jpeg"
    when "Table Cloths" 
      "tent_for_rent/products/table_cloths.jpg"
    when "Sleeping Bags" 
      "tent_for_rent/products/sleeping_bags.jpg"
    else
      "tent_for_rent/portfolio/circus.png"
    end
  end
end
