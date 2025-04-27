provider "azurerm" {
  features {}
  subscription_id = "344a5bc8-8e2d-4945-810b-881e275ec270"
}


resource "azurerm_virtual_machine" "main" {
  name                  = "test-vm"
  location              = "UK West"
  resource_group_name   = "project-setup-1"
  network_interface_ids = ["/subscriptions/344a5bc8-8e2d-4945-810b-881e275ec270/resourceGroups/project-setup-1/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
  vm_size               = "Standard_B2ls_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true


  storage_image_reference {
    id = "/subscriptions/344a5bc8-8e2d-4945-810b-881e275ec270/resourceGroups/project-setup-1/providers/Microsoft.Compute/images/local-devops-pratice"
  }
  storage_os_disk {
    name              = "test-vm-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "test-vm"
    admin_username = "azuser"
    admin_password = "devops@12345"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}