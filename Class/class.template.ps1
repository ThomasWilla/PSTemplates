Class Template {
    
    #Prooerties

    #Validate Property
    [ValidatePattern("^[a-z]+$")]
    [string]$StringValueWithValidate

    #Hidden Property
    hidden [int]$HiddenValue

    #Shared Property with all Instance (only one copy)
     static [System.Management.Automation.PSCredential]$CredentinalsValue
       

    #Constructor
    Template (){
        [Template]::CredentinalsValue = Get-Credential
    }

    #Custom Constructor 
    #Template ([String]$Stringvalue1,$StringValue2,[int]$HiddenValue){
    #    $this.StringValueWithValidate = $Stringvalue1    
    # }

    #Methods Static : Can call direct without create an instance
    [string] static getHostName(){
        return $ENV:COMPUTERNAME
    }

    #methods viod

    [void] doSomeThing(){
        write-host "something"        
    }        

}


class ExtendTemplate : Template{



}