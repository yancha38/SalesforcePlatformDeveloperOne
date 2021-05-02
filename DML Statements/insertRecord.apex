APEX_Customer__c insertRec = new APEX_Customer__c();
insertRec.Name = 'Sam Wisebak';
insertRec.Customer_Description__c = 'Customer from Australia';
insertRec.Status__c = 'Unpaid';
insertRec.External_ID__c = '1234';

insert insertRec;
