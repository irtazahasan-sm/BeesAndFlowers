/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:241051:
  appc.background(230);
} //_CODE_:window1:241051:

public void pausePlayButtonClicked(GButton source, GEvent event) { //_CODE_:pausePlayButton:865570:
  if (running){
    noLoop();
    running = false;
    pausePlayButton.setText("Resume");
    pausePlayButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  }
  else{
    loop();
    running = true;
    pausePlayButton.setText("Pause");
    pausePlayButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  }
  // change colour of pause play button
} //_CODE_:pausePlayButton:865570:

public void restartButtonClicked(GButton source, GEvent event) { //_CODE_:restartButton:590893:
  restart();
} //_CODE_:restartButton:590893:

public void depolSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:depolSlider:577441:
  depolRate = depolSlider.getValueI();
} //_CODE_:depolSlider:577441:

public void speedSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:speedSlider:987592:
  frameRate = speedSlider.getValueI();
} //_CODE_:speedSlider:987592:

public void demo1Clicked(GButton source, GEvent event) { //_CODE_:demo1:262730:
  gridSize = 50;
  cells = new color[gridSize][gridSize];  
  cellsNext = new color[gridSize][gridSize]; 
  originalPosRand = new color[gridSize][gridSize];
  frameRate = 10;
  depolRate = 150;
  //setup = "Random"; 
  nBees = 5;
  nFlowers = 50;
  cellSize = (width - 2 * padding)/gridSize;
  setFirstGrid();
  // .. basically a "new" setup.
} //_CODE_:demo1:262730:

public void slider2dChanged(GSlider2D source, GEvent event) { //_CODE_:slider2d:594491:
  nBees = slider2d.getValueXI();
  nFlowers = slider2d.getValueYI();
  restart();
} //_CODE_:slider2d:594491:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 500, 600, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.CLOSE_WINDOW);
  window1.addDrawHandler(this, "win_draw1");
  pausePlayButton = new GButton(window1, 90, 48, 70, 34);
  pausePlayButton.setText("Pause");
  pausePlayButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  pausePlayButton.addEventHandler(this, "pausePlayButtonClicked");
  restartButton = new GButton(window1, 273, 49, 80, 30);
  restartButton.setText("Restart");
  restartButton.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  restartButton.addEventHandler(this, "restartButtonClicked");
  depolSlider = new GCustomSlider(window1, 101, 144, 189, 42, "purple18px");
  depolSlider.setShowValue(true);
  depolSlider.setShowLimits(true);
  depolSlider.setLimits(50, 1, 300);
  depolSlider.setNumberFormat(G4P.INTEGER, 0);
  depolSlider.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  depolSlider.setOpaque(false);
  depolSlider.addEventHandler(this, "depolSliderChanged");
  depolLabel = new GLabel(window1, 5, 146, 90, 41);
  depolLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  depolLabel.setText("Depollination Rate");
  depolLabel.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  depolLabel.setOpaque(false);
  speedLabel = new GLabel(window1, 3, 219, 91, 41);
  speedLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  speedLabel.setText("Speed");
  speedLabel.setOpaque(false);
  speedSlider = new GCustomSlider(window1, 100, 211, 300, 60, "grey_blue");
  speedSlider.setShowValue(true);
  speedSlider.setShowLimits(true);
  speedSlider.setLimits(10, 1, 60);
  speedSlider.setNbrTicks(12);
  speedSlider.setStickToTicks(true);
  speedSlider.setShowTicks(true);
  speedSlider.setNumberFormat(G4P.INTEGER, 0);
  speedSlider.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  speedSlider.setOpaque(false);
  speedSlider.addEventHandler(this, "speedSliderChanged");
  demo1 = new GButton(window1, 28, 302, 80, 30);
  demo1.setText("Demo1");
  demo1.addEventHandler(this, "demo1Clicked");
  slider2d = new GSlider2D(window1, 151, 347, 148, 146);
  slider2d.setLimitsX(5.0, 1.0, 10.0);
  slider2d.setLimitsY(25.0, 1.0, 50.0);
  slider2d.setNumberFormat(G4P.INTEGER, 0);
  slider2d.setOpaque(true);
  slider2d.addEventHandler(this, "slider2dChanged");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton pausePlayButton; 
GButton restartButton; 
GCustomSlider depolSlider; 
GLabel depolLabel; 
GLabel speedLabel; 
GCustomSlider speedSlider; 
GButton demo1; 
GSlider2D slider2d; 