trigger Contact_RemoveActivities on Contact(after update) {
    // Create your variables
    set<Id> set_Id_Contact= new set<Id>();
    
    list<Task> list_sObj_Task = new list<Task>();
    list<Event> list_sObj_Event = new list<Event>();
    
    // Filter the records in focus
    for (Contact l : trigger.new)
        if (l.Level__c== 'Primary')
            set_Id_Contact.add(l.Id);
            
    // Get the tasks and events
    list_sObj_Task = [select Id from Task where WhoId in :set_Id_Contact];
    list_sObj_Event = [select Id from Event where WhoId in :set_Id_Contact];
    
    // Delete
    delete list_sObj_Task;
    delete list_sObj_Event;
}