//******************************************************************
// 
//  Generated by RoboCompDSL
//  
//  File name: IDSLs/HumanTracker.ice
//  Source: IDSLs/HumanTracker.idsl
//  
//****************************************************************** 
#ifndef ROBOCOMPHUMANTRACKER_ICE
#define ROBOCOMPHUMANTRACKER_ICE
module RoboCompHumanTracker
{
	enum TrackingState {  NotTracking, TrackingLost, TrackingStarted, Tracking };
	sequence <float> RTMatrix;
	dictionary <string, RTMatrix> RTMatrixList;
	sequence <float> joint;
	dictionary <string, joint> jointListType;
	struct TPerson
	{
		 TrackingState state;
		 jointListType joints;
		 RTMatrixList rotations;
	};
	dictionary <int, TPerson> PersonList;
	interface HumanTracker
	{
		void getJointsPosition (int id, out jointListType jointList);
		void getRTMatrixList (int id, out RTMatrixList RTMatList);
		void getUserState (int id, out TrackingState state);
		void getUser (int id, out TPerson user);
		void getUsersList (out PersonList users);
	};
};

#endif
