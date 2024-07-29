locals{

    # For Tagging
    tags = merge({

        "local.description" = "Testing the Network Azure Tags"
    },
    var.custom_tags,
    
    {
        "global.app"       = var.global_app
        "global.opco"      = var.global_opco
        "global.env"       = var.global_env
        "global.dataclass" = var.global_dataclass
        "local.managed_by" = "Terraform my Cloud "
        "custom_backup"    = var.custom_backup == "" ? null : var.custom_backup

        #var.CustomBackup == "": This is the condition being checked. 
        #It compares the value of the variable var.CustomBackup to an empty string.
        # ? null : var.CustomBackup: This part is the result of the condition. 
        # If the condition is true (i.e., var.CustomBackup is an empty string), 
        # the value null is assigned. Otherwise, the value of var.CustomBackup is used.
    }



    )
}