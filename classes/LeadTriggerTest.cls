@isTest
public class LeadTriggerTest {

    @isTest
    static void testWebLeadProcessing() {

        Lead webLead = new Lead(
            LastName = 'Web Test',
            Company = 'Test Company',
            LeadSource = 'Web'
        );

        Test.startTest();
        insert webLead;
        Test.stopTest();

        Lead insertedLead = [
            SELECT Rating
            FROM Lead
            WHERE Id = :webLead.Id
        ];

        System.assertEquals(
            'Hot',
            insertedLead.Rating,
            'Web Lead should be marked Hot'
        );
    }

    @isTest
    static void testPartnerLeadProcessing() {

        Lead partnerLead = new Lead(
            LastName = 'Partner Test',
            Company = 'Test Company',
            LeadSource = 'Partner Referral'
        );

        Test.startTest();
        insert partnerLead;
        Test.stopTest();

        Lead insertedLead = [
            SELECT Rating
            FROM Lead
            WHERE Id = :partnerLead.Id
        ];

        System.assertEquals(
            'Warm',
            insertedLead.Rating,
            'Partner Lead should be marked Warm'
        );
    }
}
