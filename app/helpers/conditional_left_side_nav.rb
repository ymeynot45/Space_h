def conditional_left_side_nav
  erb(:'games/left_nav') if @display_left_nav
end