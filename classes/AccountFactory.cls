/***********************************************************************************
 * Class : AccountFactory
 * Created By : Twinkle Panjabi
 -----------------------------------------------------------------------------------
 * Description : Factory class Account object
 -----------------------------------------------------------------------------------
 * Version History:
 * Version    Developer Name    Date          Detail Features
 * 1.0        Twinkle Panjabi                 Intial Development
 * 1.1        nikhil                          Intial Development
 **********************************************************************************/

 @isTest
public with sharing class AccountFactory {

    /**
     * Creates Account object data
     *
     * @param count   Number of records to be created
     *
     * @return accounts List of Accounts
     */
    public static List<Account> createAccounts(Integer count) {
        List<Account> accounts = new List<Account>();
        for (Integer i = 1; i <= count; i++) {
            Account account = new Account();
            account.Name = 'Account'+i;
            accounts.add(account);
        }
        return accounts;
    }


<<<<<<< HEAD
public void Testing(){
}
=======
>>>>>>> Test1
 
    /**
     * Creates and insert Account records.
     *
     * @param count   Number of records to be created
     *
     * @return accounts List of Accounts
     */
     public static List<Account> createAndInsertAccounts(Integer count) {
        List<Account> accounts = createAccounts(count);
        return insertData(accounts);
    }

    /**
     * Insert Account
     *
     * @param accounts List of Accounts
     *
     * @return accounts List of Accounts
     */
     public static List<Account> insertData(List<Account> accounts) {
        insert accounts;
        return accounts;
    }
	
	public void test(){
	}

    /**
     * Update Account
     *
     * @param accounts List of Accounts
     *
     * @return accounts List of Accounts
     */
     public static List<Account> updateData(List<Account> accounts) {
        update accounts;
        return accounts;
    }
}