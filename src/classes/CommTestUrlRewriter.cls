global class CommTestUrlRewriter implements Site.UrlRewriter {
    
    
    global PageReference mapRequestUrl(PageReference myFriendlyUrl) {
       System.debug('testing the code');

       // Always the guest user
       System.debug('testing + salesforce' + UserInfo.getUserId());
       return null;
    }

    global List<PageReference> generateUrlFor(List<PageReference> mySalesforceUrls) {
           System.debug(UserInfo.getName());

        return null;
    }
}