package com.ssmksh.network;

import akka.actor.ActorRef;

public class UseExNet {
	public static void main(String[] args) {
		Net net = new Net();
		net.init();
		ActorRef netActor = net.getNetActor();
		netActor.tell("hello", ActorRef.noSender());
		
		//netActor.tell(CLASSNAME, ActorRef.noSender()); //class�� �����ϰ� �������
		//"hello" -> netActor -> master
	}
}
