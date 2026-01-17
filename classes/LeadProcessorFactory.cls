public class LeadProcessorFactory {

    public static LeadProcessor getProcessor(String leadSource) {

        if (leadSource == 'Web') {
            return new WebLeadProcessor();
        }
        else if (leadSource == 'Partner Referral') {
            return new PartnerLeadProcessor();
        }
        else {
            return new DefaultLeadProcessor();
        }
    }
}
