resource "ncloud_lb_target_group_attachment" "target_group_attachment" {
  target_group_no = var.target_group_no
  target_no_list  = var.target_no_list
}