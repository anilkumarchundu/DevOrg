public with sharing class conatctlevelchange {
    
    //public static List<ID> ContactProcessed = new List<ID>();
    public static Set<ID> ContactProcessed = new Set<ID>();
    @InvocableMethod
    public static void ContactlevelChange (List<Contact> Contacts) {
    
    for(Integer i =0;i<10000;i++){
        System.debug(i);
    }
        System.debug('in conatctlevelchange.ContactlevelChange');
        //System.debug('Contacts list'+ Contacts);
        
        for(contact c: Contacts){
            if(!ContactProcessed.contains(c.id)){
                ContactProcessed.add(c.id);
                //system.debug('--> conatct not processed '+ContactProcessed);
                
                system.debug('--> conatct not processed '+c.id);
                
                //system.debug('-->** conatct not processed '+ContactProcessed);
            }
            
            else{
                //system.debug('--> conatct in else processed '+ContactProcessed);
                system.debug('--> conatct processed ' +c.id);
            }
        }
    }
}