/**************************************************************************************************
 * Class : TaskUtil
 * Created By : Twinkle Panjabi
 --------------------------------------------------------------------------------------------------
 * Description : Test Class to test the functionality of AddRelatedRecordController
 * Test Class : TaskUtilTest
 --------------------------------------------------------------------------------------------------
 * Version History:
 * Version  Developer Name    Date          Detail Features
 * 1.0      Twinkle Panjabi   14/11/2016    Initial Development
 **************************************************************************************************/
 
@isTest
private class AddRelatedRecordControllerTest{

    /**
     * Method to test the functionality where Account does
     * not have an Opporunity Linked
     */
    testmethod static void OppNotLinked() {
        Test.startTest();
	        List<Account> accountSettings = AccountFactory.createAndInsertAccounts(1);
        Test.stopTest();
        List<Opportunity> oppList = [SELECT Id,Name 
                                     FROM Opportunity
                                     WHERE AccountId =: accountSettings[0].Id];
        system.assertEquals(oppList.size(), 1);
    }


}