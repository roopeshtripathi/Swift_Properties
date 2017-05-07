//
//  LinkedList.swift
//  LinkedList
//
//  Created by Roopesh,Tripathi on 01/05/17.
//
//

import UIKit

class LinkedList <T: Equatable> {
	
	var head = Node<T>()
	
	func insert (data: T) {
		
		let newNode = Node<T>()
		newNode.data = data
		newNode.next = head;
		head = newNode;
	}
	
	func insertAtNthNode (data : T, n : Int){
		
		let newNode = Node<T>()
		newNode.data = data
		newNode.next = nil
		
		if( n == 1){
			
			newNode.next = head
			head = newNode
			return
		}
		
		var temp : Node! = head
		for _ in 1 ..< n-2 {
			
			temp = temp.next
		}
		
		newNode.next = temp.next
		temp.next = newNode
		
	}
	
	func printLinkedList (){
		
		var temp : Node! = head
		
		while temp != nil && temp!.data != nil {
			
			print(" \(temp!.data!)")
			temp = temp!.next
		}
	}
	
	
}


