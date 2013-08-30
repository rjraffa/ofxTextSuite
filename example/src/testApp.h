#pragma once

#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"

#include "ofxTextSuite.h"
#include "ofxRetinaTrueTypeFont.h"

class testApp : public ofxiPhoneApp{
	
    public:
        void setup();
        void update();
        void draw();
        void exit();
	
        void touchDown(ofTouchEventArgs & touch);
        void touchMoved(ofTouchEventArgs & touch);
        void touchUp(ofTouchEventArgs & touch);
        void touchDoubleTap(ofTouchEventArgs & touch);
        void touchCancelled(ofTouchEventArgs & touch);

        void lostFocus();
        void gotFocus();
        void gotMemoryWarning();
        void deviceOrientationChanged(int newOrientation);
    
        ofxTextBlock        myText;
        TextBlockAlignment  alignment;  //constants for controlling state
    
        ofxiPhoneKeyboard * keyboard;
    
        ofxRetinaTrueTypeFont daFont;
        string                directionsString;
        string                daString;
        string                currentString;
        string                previousString;



};


