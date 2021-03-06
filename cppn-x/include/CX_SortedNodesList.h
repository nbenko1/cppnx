/*
 * CX_SortedNodesList.h
 *
 *  Created on: Jul 25, 2013
 *      Author: joost
 */

#ifndef CX_SORTEDNODESLIST_H_
#define CX_SORTEDNODESLIST_H_

#include "CX_MovableObject.hpp"

class SortedNodesList {
public:
	SortedNodesList(MovableObject::AxisEnumerator compareIndex):axisEnum(compareIndex){
		//nix
	}

	virtual ~SortedNodesList(){
		//nix
	}

	void add(MovableObject* node){
//		std::cout << "Adding node: " << node->getBranch() << "_" << node->getId() << std::endl;
		int i;
		for(i = sortedNodes.size()-1; i>=0; i--){
			if(sortedNodes[i]->getSortedValue(axisEnum)<node->getSortedValue(axisEnum)){
				break;
			}
			sortedNodes[i]->sortedIndex[axisEnum]++;
		}
		node->sortedIndex[axisEnum] = i+1;
		sortedNodes.insert(i+1, node);
	}

	void remove(MovableObject* node){
//		std::cout << "Removing node: " << node->getBranch() << "_" << node->getId() << std::endl;
		for(int i = node->sortedIndex[axisEnum]+1; i<sortedNodes.size(); i++){
			sortedNodes[i]->sortedIndex[axisEnum]--;
		}
		sortedNodes.removeAt(node->sortedIndex[axisEnum]);
	}

	void update(MovableObject* node){
		int index = node->sortedIndex[axisEnum];
//		std::cout << "node: " << node << " index: " << index << std::endl;
		while(index > 0 ? sortedNodes[index-1]->getSortedValue(axisEnum) > node->getSortedValue(axisEnum) :  false){
//			std::cout << sortedNodes[index-1] << std::endl;
			sortedNodes[index] = sortedNodes[index-1];
			sortedNodes[index]->sortedIndex[axisEnum] = index;
			sortedNodes[index-1]=node;
			index--;
		}
	//	std::cout << "x_index: " << x_index << std::endl;
		while(index < (sortedNodes.size()-1) ? sortedNodes[index+1]->getSortedValue(axisEnum) < node->getSortedValue(axisEnum) :  false){
//			std::cout << sortedNodes[index+1] << std::endl;
			sortedNodes[index] = sortedNodes[index+1];
			sortedNodes[index]->sortedIndex[axisEnum] = index;
			sortedNodes[index+1]=node;
			index++;
		}

		node->sortedIndex[axisEnum] = index;

//		std::cout << "Positions: " << std::endl;
//		if(axisEnum == Node::x_pos){
////			std::cout << "x: ";
//			foreach(Node* node, sortedNodes){
//				std::cout << "; " << node->pos().x();
//			}
//		} else {
//			std::cout << "y: ";
//			foreach(Node* node, sortedNodes){
//				std::cout << "; " << node->pos().y();
//			}
//
//			std::cout << std::endl;
//			std::cout << "nodes: ";
//			foreach(Node* node, sortedNodes){
//				std::cout << "; " << node->getBranch() << "_" << node->getId();
//			}
//		}
//		std::cout << std::endl;
	}

	void clear(){
		sortedNodes.clear();
	}

	MovableObject* front(){
		return sortedNodes.front();
	}

	MovableObject* back(){
		return sortedNodes.back();
	}

	qreal edgeValue(){
	    switch(axisEnum){
	    case MovableObject::left:
	        return sortedNodes.front()->getSortedValue(axisEnum);
	    break;
	    case MovableObject::right:
	        return sortedNodes.back()->getSortedValue(axisEnum);
	    break;
	    case MovableObject::top:
	        return sortedNodes.front()->getSortedValue(axisEnum);
	    break;
	    case MovableObject::bottom:
	        return sortedNodes.back()->getSortedValue(axisEnum);
	    break;
	    default:
	        dbg::sentinel(DBG_HERE);
	    }
	    dbg::sentinel(DBG_HERE);
	    return 0.0;
	}

	inline int size() const{
	    return sortedNodes.size();
	}

	inline bool empty() const{
	    return sortedNodes.empty();
	}


private:
	QList<MovableObject*> sortedNodes;
	MovableObject::AxisEnumerator axisEnum;
};

#endif /* CX_SORTEDNODESLIST_H_ */
