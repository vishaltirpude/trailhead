public class EmailManager{
    public static void sendMail(String addresses, String subjects, String messages) {
        Messaging.SingleEmailMessage [] emails = new Messaging.SingleEmailMessage[]{};
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject(subjects);
        email.setToAddresses(new List<String> { addresses});
        email.setPlainTextBody(messages);
        emails.add(email);
        Messaging.sendEmail(emails);
    }
}