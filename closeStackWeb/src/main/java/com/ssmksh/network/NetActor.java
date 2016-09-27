package com.ssmksh.network;

import akka.actor.ActorSelection;
import akka.actor.UntypedActor;
import akka.event.Logging;
import akka.event.LoggingAdapter;

public class NetActor extends UntypedActor {
	LoggingAdapter log = Logging.getLogger(getContext().system(), this);
	private ActorSelection master = null;
	private String hostIP = "163.152.47.96";
	private String SystemName = "closestack";

	@Override
	public void preStart() throws Exception {
		master = getContext().actorSelection("akka.tcp://" + SystemName + "@" + hostIP + ":2551/user/master");
	}

	@Override
	public void onReceive(Object message) throws Throwable {
		master.tell(message, getSelf());		// �׳� ����

/*		 //���࿡ �׳� �������� �ʰ� ��� ó���� �ϰ� ���� ���
		 if(message instanceof CLASSNAME){
			 CLASSNAME cl = (CLASSNAME)message;
			 cl.add();
			 mater.tell( , );
		 } else {
			 unhandled(message);
		 }*/

		// mater�κ��� ������ �޾ƾ��ϴ� ��� (callback����) ������ ���������
	}
}
