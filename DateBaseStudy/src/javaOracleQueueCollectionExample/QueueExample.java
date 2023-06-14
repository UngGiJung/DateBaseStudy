package javaOracleQueueCollectionExample;

import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {

	public static void main(String[] args) {
		// TODO Auto-geneMessageethod stub
		Queue<Message> messageQueue = new LinkedList<Message>();
		
		messageQueue.offer(new Message("sendMail", "홍길동"));
		messageQueue.offer(new Message("sendSMS", "김자바"));
		messageQueue.offer(new Message("sendKakaoTalk", "홍두께"));

		while (!messageQueue.isEmpty()) {
			Message message = messageQueue.poll();
			switch (message.getCommand()) {
				case "sendMail":
					System.out.println(message.getTo() + "님에게 메일을 보냅니다.");
					break;
				case "sendSMS" :
					System.out.println(message.getTo() + "님에게 SMS을 보냅니다.");
					break;
				case "sendKakaoTalk":
					System.out.println(message.getTo() + "님에게 카카오톡을 보냅니다.");
					break;
			}
		}
	}

}
