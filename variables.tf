variable global_app{
    description = "A map of tags to assign to a resource"
    type = map(string)
     default     = {
    "env" = "Test"
  }

    validation{
        condition = (
            length(var.global_app) > 0
            )
            error_message = "global_app parameter is not provided as per docs"        
    }
}

variable global_opco{
    description = "A 3 letter String of opco assigned to a resource"
    type = string
    default = "AGO"
    validation{
        condition = (
                can(regex("^[A-Z]{3}",var.global_opco))
            )
            # "^[A-Z]{3}" matches any string that starts with exactly three uppercase letters 
            # The ^ at the start indicates that the regex is looking for a match at the beginning of the string.
            error_message = "Opco needs to be provided with 3 letters"        
    }
}




variable global_env{
    description = "A 3 letter String of opco assigned to a resource"
    type = string
    default = "development"
    validation{
        condition = (
                can(regex("^(?:development|production|preproduction)$",var.global_env))
            )
            #(?: ...): This is a non-capturing group. Non-capturing groups are used to group parts 
            # of the pattern without creating a capturing group, which can save memory and 
            # improve performance. 
            # It groups the alternatives development, production, and preproduction together.
            error_message = "Opco needs to be provided with 3 letters"        
    }
}

variable global_dataclass{
    description = "A 3 letter String of opco assigned to a resource"
    type = string
    default = "confidential"
    validation{
        condition = (
                can(regex("^(?:public|confidential|secret)$",var.global_dataclass))
            )
            #(?: ...): This is a non-capturing group. Non-capturing groups are used to group parts 
            # of the pattern without creating a capturing group, which can save memory and 
            # improve performance. 
            # It groups the alternatives public|confidential|secret together.
            error_message = "Opco needs to be provided with 3 letters"        
    }
}

variable custom_backup{
    description = "Cross Region Backup required if dataclass is secret"
    type = string
    default = ""
}

variable custom_tags{
    description = "A map of custom tags to assign to a resource"
    type = map(string)
    default = {}
}
