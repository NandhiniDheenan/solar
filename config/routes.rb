Rails.application.routes.draw do
 # get 'profile_edit_sub_form/profile_edit_sub_form_view'

  #get 'view_profile/view_profile_view'

  #get 'edit_profile/edit_profile_view'

 # get 'create_profile/Create_profile_view'

  #get 'solar_energy_graph/solar_energy_graph_view'

  #get 'solar_inv_graph/solar_inv_graph_view'

  #get 'dg_ac_de_report/DG_AC_DE_report_view'

  #get 'inverter_report/inverter_report_view'

  #get 'grid_report/grid_report_view'

 # get 'pv_report/pv_report_view'

get 'pv_report' => 'pv_report#pv_report_view'
get 'grid_report' => 'grid_report#grid_report_view'
get 'inverter_report' => 'inverter_report#inverter_report_view'
get 'dg_ac_dc_report' => 'dg_ac_de_report#DG_AC_DE_report_view'

get 'energy_graph' => 'solar_energy_graph#solar_energy_graph_view'
get 'solar_inv_graph' => 'solar_inv_graph#solar_inv_graph_view'

  #get 'mainreport/repor'

 # get 'inverter/invert_index'

  #get 'update_ctrlr/updatectrlr_index'

  #get 'restartcontroller/restartctrlr_index'

  #get 'admin/admin_index'

  #get 'editcontroller/editctrlr_index'

  #get 'ctrlrlicensekey/ctrlrlicensekey_index'

  #get 'authenticatecontroller/authenticatectrlr_index'

 # get 'addcontroller/addcontroller_index'

get 'addcontroller' => 'addcontroller#addcontroller_index'
get 'controllerpost' => 'addcontroller#addcontroller'
 
get 'authenticatecontroller' => 'authenticatecontroller#authenticatectrlr_index'
get 'authenticatectrlridpost' => 'authenticatecontroller#authenticatectrlridpost'

get 'controllerlicensekey' => 'ctrlrlicensekey#ctrlrlicensekey_index' 
get 'editcontroller' => 'editcontroller#editctrlr_index'
get  'admin' => 'admin#admin_index'
get 'restartcontroller' => 'restartcontroller#restartctrlr_index'

get 'updatecontroller' => 'update_ctrlr#updatectrlr_index'

get 'inverter/storedata' => 'inverter#invert_index'

get 'mainreport' => 'mainreport#repor'


get 'create_profile' => 'create_profile#Create_profile_view'
get 'createprofilepost' => 'create_profile#createprofilepost'

get 'edit_profile' => 'edit_profile#edit_profile_view'
get 'editprofilepost' => 'edit_profile#editprofilepost'

get 'view_profile' => 'view_profile#view_profile_view'

get 'edit_profile_subform' => 'profile_edit_sub_form#profile_edit_sub_form_view'
get 'editprofilesubformpost' =>'profile_edit_sub_form#editprofilesubformpost'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
