List<list<SObject>> custList = [Find 'ABC*' IN All Fields returning APEX_Customer__c
            (Id, APEX_Customer__c.Name, APEX_Customer__c.Apex_Customer_Description__c), Account(Id, Name)];

System.debug('The result is : ' + custList);

APEX_Customer__c[] custCustomer = (List<APEX_Customer__c>) custList[0];
Account[] custAccount = (List<Account>) custList[1];

System.debug('Customer list matching the criteria is ');
for(APEX_Customer__c cst : custCustomer) {
    System.debug('Id is : ' + cst.Id + ' ,Name : ' + cst.Name + ' , Description : ' + cst.Apex_Customer_Description__c);
}
System.debug('Account list matching the criteria is : ' );
for(Account acc : custAccount) {
    System.debug('Id is : ' + acc.Id + ' ,Name : ' + acc.Name);
}
