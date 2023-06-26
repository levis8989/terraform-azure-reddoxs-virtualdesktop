location = "eastus2"

company_name = "reddoxs"

app_daas = "daas-reddoxs"

app_daas_shared = "daas-reddoxs-shared"

pooled_type = "Pooled"

poole_breadth_firstalb = "BreadthFirst"

custom_rdpproperties = "targetisaadjoined:i:1"

desktop_app_global = "Desktop"

role_definition_name = "Azure Virtual Desktop Autoscale"

role_definition_name_description = "AVD AutoScale Role"

service_principal_read = "Azure Virtual Desktop"

enable_provider_desktop_virtualization = "Microsoft.DesktopVirtualization"

enable_provider_network = "Microsoft.Network"

enable_provider_storage_account = "Microsoft.Storage"

permissions = [
  "Microsoft.Insights/eventtypes/values/read",
  "Microsoft.Compute/virtualMachines/deallocate/action",
  "Microsoft.Compute/virtualMachines/restart/action",
  "Microsoft.Compute/virtualMachines/powerOff/action",
  "Microsoft.Compute/virtualMachines/start/action",
  "Microsoft.Compute/virtualMachines/read",
  "Microsoft.DesktopVirtualization/hostpools/read",
  "Microsoft.DesktopVirtualization/hostpools/write",
  "Microsoft.DesktopVirtualization/hostpools/sessionhosts/read",
  "Microsoft.DesktopVirtualization/hostpools/sessionhosts/write",
  "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/delete",
  "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/read",
  "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/sendMessage/action",
  "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/read"
]

scaling_timezone_colombia = "SA Pacific Standard Time"

working_days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

ramp_up_start = "08:00"

breadth_first = "BreadthFirst"

disconnection_peak_starttime = "08:30"

end_of_the_rampdown_start = "18:30"

depth_first = "DepthFirst"

ramp_message_global = "Por favor, recuerda guardar los cambios que sean requeridos, ya que el sistema cerrara las sesión en los próximos 45 minutos, gracias."

ramp_down_stop_sessions = "ZeroSessions"

off_peak_startTime = "19:30"

virtual_network_name = "vnet-reddoxs"

ip_address_space = "60.0.0.0/16"

subnet_daas_shared = "60.0.1.0/24"

subnet_daas_corporate = "60.0.2.0/24"

subnet_name_shared = "reddoxs-shared"

subnet_name_corporate = "reddoxs-corporate"

