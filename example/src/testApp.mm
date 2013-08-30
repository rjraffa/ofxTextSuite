#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){	
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(127,127,127);
    
    keyboard = new ofxiPhoneKeyboard(100,152,320,32);
	keyboard->setVisible(true);
	keyboard->setBgColor(255, 255, 255, 255);
	keyboard->setFontColor(0,0,0, 255);
	keyboard->setFontSize(26);
    keyboard->setPosition(0,50);

    string fontName = "quicksandregular.ttf";
    
    myText.init(fontName, 22);
    myText.setText("Hello. Hello. This is sample text using ofxTextBlock with my ofxRetinaTrueTypeFont mod. I updated a few items in the ofxRetinaTrueTypeFont so be sure to grab my forked version. Just want to make sure there are multiple lines to compare with. Try entering more than one line of text above. It wraps super nice!");
    myText.setColor(255, 0, 0, 0);
    myText.setLineHeight(32.0f);
    myText.setLetterSpacing(0.90);

    
    daFont.loadFont(fontName, 22, true, true, true);
    daFont.setLineHeight(32.0f);
    daFont.setLetterSpacing(0.90);
    daString = "Hello. Hello. This is sample text using my ofxRetinaTrueTypeFont mod. I updated a few items in the\nofxRetinaTrueTypeFont so be sure to grab my forked version. Just want to make sure there are\nmultiple lines to compare with. Try entering more than one line of text above. It wraps super nice!";

    directionsString = "Click here, enter some text, and click 'return'";
    
    //Initially wrap the text to the screen width
    myText.wrapTextX(ofGetWidth());
    
    printf("getWidth: %d \n", ofGetWidth());

}

//--------------------------------------------------------------
void testApp::update(){
    
    currentString = keyboard->getText();

    if (previousString != currentString) {
        myText.setText(currentString);
        myText.setColor(0, 255, 0, 0);
        myText.setLineHeight(32.0f);
        myText.setLetterSpacing(0.90);
        //make sure we rewrap the text after we grab the new text
        myText.wrapTextX(ofGetWidth());
    } else {
        printf("same.\n");
    }

    previousString = currentString;
    
    
}

//--------------------------------------------------------------
void testApp::draw(){

    myText.draw(0,170);
    
    ofSetColor(255);
    daFont.drawString(directionsString, 0, 25);
    daFont.drawString(daString, 0, 350);
    	
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){

    
    if (touch.id == 1){
		
		if(!keyboard->isKeyboardShowing()){
			keyboard->openKeyboard();
			keyboard->setVisible(true);
		} else{
			keyboard->setVisible(false);
		}
	}
    
    
    
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

