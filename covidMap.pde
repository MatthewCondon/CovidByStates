PShape usa;
PShape state;

int Alabama = 0;
int Alaska = 0;
int Arizona = 0;
int Arkansas = 0;
int California = 0;
int Colorado = 0;
int Connecticut = 0;
int Delaware = 0;
int Florida = 0;
int Georgia = 0;
int Hawaii = 0;
int Idaho = 0;
int Illinois = 0;
int Indiana = 0;
int Iowa = 0;
int Kansas = 0;
int Kentucky = 0;
int Louisiana =0;
int Maine = 0;
int Maryland = 0;
int Massachusetts = 0;
int Michigan = 0;
int Minnesota = 0;
int Mississippi = 0;
int Missouri = 0;
int Montana = 0;
int Nebraska = 0;
int Nevada = 0;
int NewHampshire = 0;
int NewJersey = 0;
int NewMexico = 0;
int NewYork = 0;
int NorthCarolina = 0;
int NorthDakota = 0;
int Ohio = 0;
int Oklahoma = 0;
int Oregon = 0;
int Pennsylvania = 0;
int RhodeIsland = 0;
int SouthCarolina = 0;
int SouthDakota = 0;
int Tennessee = 0;
int Texas = 0;
int Utah = 0;
int Vermont = 0;
int Virginia = 0;
int Washington = 0;
int WestVirginia = 0;
int Wisconsin = 0;
int Wyoming = 0;

String []states;
ArrayList<State>allStates = new ArrayList<State>();

String input = "";
String save = "";

String uselessVariable = "This variable is useless and does nothing";

void setup() {
  size(950, 630);
  // The file Blank_US_Map.svg can be found at Wikimedia Commons
  usa = loadShape("https://upload.wikimedia.org/wikipedia/en/9/9f/Usa.svg");
  smooth(); // Improves the drawing quality of the SVG
  //noLoop();

  states=loadStrings("https://raw.githubusercontent.com/nytimes/covid-19-data/master/rolling-averages/us-states.csv");

  for (int i=1; i<states.length; i++) {
    //for(int j=0; j<states[i].length(); j++){
    String []s=states[i].split(",");
    allStates.add(new State(s[2], Integer.parseInt(s[3]), s[0]));
  }
  print(allStates);
}

void getData(String d) {
  for (int i = 0; i < allStates.size(); i++) {
    if (allStates.get(i).getDate().equals(d)) {
      if (allStates.get(i).getName().equals("Alabama")) Alabama = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Alaska")) Alaska = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Arizona")) Arizona = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Arkansas")) Arkansas = allStates.get(i).count();
      if (allStates.get(i).getName().equals("California")) California = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Colorado")) Colorado = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Connecticut")) Connecticut = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Delaware")) Delaware = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Florida")) Florida = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Georgia")) Georgia = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Hawaii")) Hawaii = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Idaho")) Idaho = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Illinois")) Illinois = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Indiana")) Indiana = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Iowa")) Iowa = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Kansas")) Kansas = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Kentucky")) Kentucky = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Louisiana")) Louisiana = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Maine")) Maine = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Maryland")) Maryland = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Massachusetts")) Massachusetts = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Michigan")) Michigan = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Minnesota")) Minnesota = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Mississippi")) Mississippi = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Missouri")) Missouri = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Montana")) Montana = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Nebraska")) Nebraska = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Nevada")) Nevada = allStates.get(i).count();
      if (allStates.get(i).getName().equals("NewHampshire")) NewHampshire = allStates.get(i).count();
      if (allStates.get(i).getName().equals("NewJersey")) NewJersey = allStates.get(i).count();
      if (allStates.get(i).getName().equals("NewMexico")) NewMexico = allStates.get(i).count();
      if (allStates.get(i).getName().equals("NewYork")) NewYork = allStates.get(i).count();
      if (allStates.get(i).getName().equals("NorthCarolina")) NorthCarolina = allStates.get(i).count();
      if (allStates.get(i).getName().equals("NorthDakota")) NorthDakota = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Ohio")) Ohio = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Oklahoma")) Oklahoma = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Oregon")) Oregon = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Pennsylvania")) Pennsylvania = allStates.get(i).count();
      if (allStates.get(i).getName().equals("RhodeIsland")) RhodeIsland = allStates.get(i).count();
      if (allStates.get(i).getName().equals("SouthCarolina")) SouthCarolina = allStates.get(i).count();
      if (allStates.get(i).getName().equals("SouthDakota")) SouthDakota = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Tennessee")) Tennessee = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Texas")) Texas = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Utah")) Utah = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Vermont")) Vermont = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Virginia")) Virginia = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Washington")) Washington = allStates.get(i).count();
      if (allStates.get(i).getName().equals("WestVirginia")) WestVirginia = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Wisconsin")) Wisconsin = allStates.get(i).count();
      if (allStates.get(i).getName().equals("Wyoming")) Wyoming = allStates.get(i).count();
    }
  }
}

void draw() {
  background(255);
  // Draw the full map
  shape(usa, 0, 0);

  // Draw the extra information
  textSize(40);
  fill(168, 50, 50);
  text("COVID-19 By The States", 500, 50);

  //text(mouseX+" "+mouseY, 50, 50);

  textSize(15);
  text("Click anywhere to type a date.\nMust be in YYYY-MM-DD.", 630, 70);
  textSize(20);
  text("Input: " + input, 610, 530);
  textSize(10);
  text("Data as per The New York Times Dev Portal\nand reported by the states.", 610, 550);
  fill(255);
  textSize(20);
  text("Key:", 500, 530);
  textSize(10);
  text("0-100 Cases: Green\n101-500 Cases: Yellow\n501-999 Cases: Orange\n1,000-5,000 Cases: Red\n5,000+ Cases: Purple", 500, 550);
  text("Radius of circle varies directly with cases", 610, 616);

  // Get Data as per user input and draw
  getData(save);
  stateCircles();
}

void keyPressed() {
  if (key == '\n') {
    save = input;
    input = "";
  } else {
    input = input + key;
  }
}

//State cases divided by 5
void stateCircles() {
  noStroke();

  // Color Key
  //fill(81, 125, 57, 60);
  // if stateCases 0-100 fill green
  // else if 101-500 fill yellow
  // else if 501-999 fill orange
  // else if 1000-5000 fill red
  // else if 5000+ fill purple

  // Alabama
  if (Alabama==0) fill(255, 255, 255, 60);
  else if (Alabama>0&&Alabama<=20) fill(63, 161, 34, 60);
  else if (Alabama>20&&Alabama<=100) fill(245, 239, 66, 60);
  else if (Alabama>100&&Alabama<=200) fill(255, 174, 0, 60);
  else if (Alabama>200&&Alabama<=1000) fill(166, 27, 33, 60);
  else if (Alabama>1000) fill(90, 32, 138, 60);
  ellipse(680, 410, Alabama/30, Alabama/30);
  // Alaska
  if (Alaska==0) fill(255, 255, 255, 60);
  else if (Alaska>0&&Alaska<=20) fill(63, 161, 34, 60);
  else if (Alaska>20&&Alaska<=100) fill(245, 239, 66, 60);
  else if (Alaska>100&&Alaska<=200) fill(255, 174, 0, 60);
  else if (Alaska>200&&Alaska<=1000) fill(166, 27, 33, 60);
  else if (Alaska>1000) fill(90, 32, 138, 60);
  ellipse(260, 525, Alaska/30, Alaska/30);
  // Arizona
  if (Arizona==0) fill(255, 255, 255, 60);
  else if (Arizona>0&&Arizona<=20) fill(63, 161, 34, 60);
  else if (Arizona>20&&Arizona<=100) fill(245, 239, 66, 60);
  else if (Arizona>100&&Arizona<=200) fill(255, 174, 0, 60);
  else if (Arizona>200&&Arizona<=1000) fill(166, 27, 33, 60);
  else if (Arizona>1000) fill(90, 32, 138, 60);
  ellipse(245, 360, Arizona/30, Arizona/30);
  // Arkansas
  if (Arkansas==0) fill(255, 255, 255, 60);
  else if (Arkansas>0&&Arkansas<=20) fill(63, 161, 34, 60);
  else if (Arkansas>20&&Arkansas<=100) fill(245, 239, 66, 60);
  else if (Arkansas>100&&Arkansas<=200) fill(255, 174, 0, 60);
  else if (Arkansas>200&&Arkansas<=1000) fill(166, 27, 33, 60);
  else if (Arkansas>1000) fill(90, 32, 138, 60);
  ellipse(575, 370, Arkansas/30, Arkansas/30);
  // California
  if (California==0) fill(255, 255, 255, 60);
  else if (California>0&&California<=20) fill(63, 161, 34, 60);
  else if (California>20&&California<=100) fill(245, 239, 66, 60);
  else if (California>100&&California<=200) fill(255, 174, 0, 60);
  else if (California>200&&California<=1000) fill(166, 27, 33, 60);
  else if (California>1000) fill(90, 32, 138, 60);
  ellipse(120, 280, California/30, California/30);
  // Colorado
  if (Colorado==0) fill(255, 255, 255, 60);
  else if (Colorado>0&&Colorado<=20) fill(63, 161, 34, 60);
  else if (Colorado>20&&Colorado<=100) fill(245, 239, 66, 60);
  else if (Colorado>100&&Colorado<=200) fill(255, 174, 0, 60);
  else if (Colorado>200&&Colorado<=1000) fill(166, 27, 33, 60);
  else if (Colorado>1000) fill(90, 32, 138, 60);
  ellipse(360, 270, Colorado/30, Colorado/30);
  // Connecticut
  if (Connecticut==0) fill(255, 255, 255, 60);
  else if (Connecticut>0&&Connecticut<=20) fill(63, 161, 34, 60);
  else if (Connecticut>20&&Connecticut<=100) fill(245, 239, 66, 60);
  else if (Connecticut>100&&Connecticut<=200) fill(255, 174, 0, 60);
  else if (Connecticut>200&&Connecticut<=1000) fill(166, 27, 33, 60);
  else if (Connecticut>1000) fill(90, 32, 138, 60);
  ellipse(875, 180, Connecticut/30, Connecticut/30);
  // Delaware
  if (Delaware==0) fill(255, 255, 255, 60);
  else if (Delaware>0&&Delaware<=20) fill(63, 161, 34, 60);
  else if (Delaware>20&&Delaware<=100) fill(245, 239, 66, 60);
  else if (Delaware>100&&Delaware<=200) fill(255, 174, 0, 60);
  else if (Delaware>200&&Delaware<=1000) fill(166, 27, 33, 60);
  else if (Delaware>1000) fill(90, 32, 138, 60);
  ellipse(845, 245, Delaware/30, Delaware/30);
  // Florida
  if (Florida==0) fill(255, 255, 255, 60);
  else if (Florida>0&&Florida<=20) fill(63, 161, 34, 60);
  else if (Florida>20&&Florida<=100) fill(245, 239, 66, 60);
  else if (Florida>100&&Florida<=200) fill(255, 174, 0, 60);
  else if (Florida>200&&Florida<=1000) fill(166, 27, 33, 60);
  else if (Florida>1000) fill(90, 32, 138, 60);
  ellipse(785, 500, Florida/30, Florida/30);
  // Georgia
  if (Georgia==0) fill(255, 255, 255, 60);
  else if (Georgia>0&&Georgia<=20) fill(63, 161, 34, 60);
  else if (Georgia>20&&Georgia<=100) fill(245, 239, 66, 60);
  else if (Georgia>100&&Georgia<=200) fill(255, 174, 0, 60);
  else if (Georgia>200&&Georgia<=1000) fill(166, 27, 33, 60);
  else if (Georgia>1000) fill(90, 32, 138, 60);
  ellipse(740, 400, Georgia/30, Georgia/30);
  // Hawaii
  if (Hawaii==0) fill(255, 255, 255, 60);
  else if (Hawaii>0&&Hawaii<=20) fill(63, 161, 34, 60);
  else if (Hawaii>20&&Hawaii<=100) fill(245, 239, 66, 60);
  else if (Hawaii>100&&Hawaii<=200) fill(255, 174, 0, 60);
  else if (Hawaii>200&&Hawaii<=1000) fill(166, 27, 33, 60);
  else if (Hawaii>1000) fill(90, 32, 138, 60);
  ellipse(112, 518, Hawaii/30, Hawaii/30);
  // Idaho
  if (Idaho==0) fill(255, 255, 255, 60);
  else if (Idaho>0&&Idaho<=20) fill(63, 161, 34, 60);
  else if (Idaho>20&&Idaho<=100) fill(245, 239, 66, 60);
  else if (Idaho>100&&Idaho<=200) fill(255, 174, 0, 60);
  else if (Idaho>200&&Idaho<=1000) fill(166, 27, 33, 60);
  else if (Idaho>1000) fill(90, 32, 138, 60);
  ellipse(237, 148, Idaho/30, Idaho/30);
  // Illinois
  if (Illinois==0) fill(255, 255, 255, 60);
  else if (Illinois>0&&Illinois<=20) fill(63, 161, 34, 60);
  else if (Illinois>20&&Illinois<=100) fill(245, 239, 66, 60);
  else if (Illinois>100&&Illinois<=200) fill(255, 174, 0, 60);
  else if (Illinois>200&&Illinois<=1000) fill(166, 27, 33, 60);
  else if (Illinois>1000) fill(90, 32, 138, 60);
  ellipse(622, 256, Illinois/30, Illinois/30);
  // Indiana
  if (Indiana==0) fill(255, 255, 255, 60);
  else if (Indiana>0&&Indiana<=20) fill(63, 161, 34, 60);
  else if (Indiana>20&&Indiana<=100) fill(245, 239, 66, 60);
  else if (Indiana>100&&Indiana<=200) fill(255, 174, 0, 60);
  else if (Indiana>200&&Indiana<=1000) fill(166, 27, 33, 60);
  else if (Indiana>1000) fill(90, 32, 138, 60);
  ellipse(669, 250, Indiana/30, Indiana/30);
  // Iowa
  if (Iowa==0) fill(255, 255, 255, 60);
  else if (Iowa>0&&Iowa<=20) fill(63, 161, 34, 60);
  else if (Iowa>20&&Iowa<=100) fill(245, 239, 66, 60);
  else if (Iowa>100&&Iowa<=200) fill(255, 174, 0, 60);
  else if (Iowa>200&&Iowa<=1000) fill(166, 27, 33, 60);
  else if (Iowa>1000) fill(90, 32, 138, 60);
  ellipse(551, 218, Iowa/30, Iowa/30);
  // Kansas
  if (Kansas==0) fill(255, 255, 255, 60);
  else if (Kansas>0&&Kansas<=20) fill(63, 161, 34, 60);
  else if (Kansas>20&&Kansas<=100) fill(245, 239, 66, 60);
  else if (Kansas>100&&Kansas<=200) fill(255, 174, 0, 60);
  else if (Kansas>200&&Kansas<=1000) fill(166, 27, 33, 60);
  else if (Kansas>1000) fill(90, 32, 138, 60);
  ellipse(474, 290, Kansas/30, Kansas/30);
  // Kentucky
  if (Kentucky==0) fill(255, 255, 255, 60);
  else if (Kentucky>0&&Kentucky<=20) fill(63, 161, 34, 60);
  else if (Kentucky>20&&Kentucky<=100) fill(245, 239, 66, 60);
  else if (Kentucky>100&&Kentucky<=200) fill(255, 174, 0, 60);
  else if (Kentucky>200&&Kentucky<=1000) fill(166, 27, 33, 60);
  else if (Kentucky>1000) fill(90, 32, 138, 60);
  ellipse(697, 301, Kentucky/30, Kentucky/30);
  // Louisiana
  if (Louisiana==0) fill(255, 255, 255, 60);
  else if (Louisiana>0&&Louisiana<=20) fill(63, 161, 34, 60);
  else if (Louisiana>20&&Louisiana<=100) fill(245, 239, 66, 60);
  else if (Louisiana>100&&Louisiana<=200) fill(255, 174, 0, 60);
  else if (Louisiana>200&&Louisiana<=1000) fill(166, 27, 33, 60);
  else if (Louisiana>1000) fill(90, 32, 138, 60);
  ellipse(577, 450, Louisiana/30, Louisiana/30);
  // Maine
  if (Maine==0) fill(255, 255, 255, 60);
  else if (Maine>0&&Maine<=20) fill(63, 161, 34, 60);
  else if (Maine>20&&Maine<=100) fill(245, 239, 66, 60);
  else if (Maine>100&&Maine<=200) fill(255, 174, 0, 60);
  else if (Maine>200&&Maine<=1000) fill(166, 27, 33, 60);
  else if (Maine>1000) fill(90, 32, 138, 60);
  ellipse(905, 87, Maine/30, Maine/30);
  // Maryland
  if (Maryland==0) fill(255, 255, 255, 60);
  else if (Maryland>0&&Maryland<=20) fill(63, 161, 34, 60);
  else if (Maryland>20&&Maryland<=100) fill(245, 239, 66, 60);
  else if (Maryland>100&&Maryland<=200) fill(255, 174, 0, 60);
  else if (Maryland>200&&Maryland<=1000) fill(166, 27, 33, 60);
  else if (Maryland>1000) fill(90, 32, 138, 60);
  ellipse(826, 247, Maryland/30, Maryland/30);
  // Massachusetts
  if (Massachusetts==0) fill(255, 255, 255, 60);
  else if (Massachusetts>0&&Massachusetts<=20) fill(63, 161, 34, 60);
  else if (Massachusetts>20&&Massachusetts<=100) fill(245, 239, 66, 60);
  else if (Massachusetts>100&&Massachusetts<=200) fill(255, 174, 0, 60);
  else if (Massachusetts>200&&Massachusetts<=1000) fill(166, 27, 33, 60);
  else if (Massachusetts>1000) fill(90, 32, 138, 60);
  ellipse(885, 161, Massachusetts/30, Massachusetts/30);
  // Michigan
  if (Michigan==0) fill(255, 255, 255, 60);
  else if (Michigan>0&&Michigan<=20) fill(63, 161, 34, 60);
  else if (Michigan>20&&Michigan<=100) fill(245, 239, 66, 60);
  else if (Michigan>100&&Michigan<=200) fill(255, 174, 0, 60);
  else if (Michigan>200&&Michigan<=1000) fill(166, 27, 33, 60);
  else if (Michigan>1000) fill(90, 32, 138, 60);
  ellipse(687, 172, Michigan/30, Michigan/30);
  // Minnesota
  if (Minnesota==0) fill(255, 255, 255, 60);
  else if (Minnesota>0&&Minnesota<=20) fill(63, 161, 34, 60);
  else if (Minnesota>20&&Minnesota<=100) fill(245, 239, 66, 60);
  else if (Minnesota>100&&Minnesota<=200) fill(255, 174, 0, 60);
  else if (Minnesota>200&&Minnesota<=1000) fill(166, 27, 33, 60);
  else if (Minnesota>1000) fill(90, 32, 138, 60);
  ellipse(533, 136, Minnesota/30, Minnesota/30);
  // Mississippi
  if (Mississippi==0) fill(255, 255, 255, 60);
  else if (Mississippi>0&&Mississippi<=20) fill(63, 161, 34, 60);
  else if (Mississippi>20&&Mississippi<=100) fill(245, 239, 66, 60);
  else if (Mississippi>100&&Mississippi<=200) fill(255, 174, 0, 60);
  else if (Mississippi>200&&Mississippi<=1000) fill(166, 27, 33, 60);
  else if (Mississippi>1000) fill(90, 32, 138, 60);
  ellipse(624, 411, Mississippi/30, Mississippi/30);
  // Missouri
  if (Missouri==0) fill(255, 255, 255, 60);
  else if (Missouri>0&&Missouri<=20) fill(63, 161, 34, 60);
  else if (Missouri>20&&Missouri<=100) fill(245, 239, 66, 60);
  else if (Missouri>100&&Missouri<=200) fill(255, 174, 0, 60);
  else if (Missouri>200&&Missouri<=1000) fill(166, 27, 33, 60);
  else if (Missouri>1000) fill(90, 32, 138, 60);
  ellipse(568, 292, Missouri/30, Missouri/30);
  // Montana
  if (Montana==0) fill(255, 255, 255, 60);
  else if (Montana>0&&Montana<=20) fill(63, 161, 34, 60);
  else if (Montana>20&&Montana<=100) fill(245, 239, 66, 60);
  else if (Montana>100&&Montana<=200) fill(255, 174, 0, 60);
  else if (Montana>200&&Montana<=1000) fill(166, 27, 33, 60);
  else if (Montana>1000) fill(90, 32, 138, 60);
  ellipse(320, 97, Montana/30, Montana/30);
  // Nebraska
  if (Nebraska==0) fill(255, 255, 255, 60);
  else if (Nebraska>0&&Nebraska<=20) fill(63, 161, 34, 60);
  else if (Nebraska>20&&Nebraska<=100) fill(245, 239, 66, 60);
  else if (Nebraska>100&&Nebraska<=200) fill(255, 174, 0, 60);
  else if (Nebraska>200&&Nebraska<=1000) fill(166, 27, 33, 60);
  else if (Nebraska>1000) fill(90, 32, 138, 60);
  ellipse(452, 226, Nebraska/30, Nebraska/30);
  // Nevada
  if (Nevada==0) fill(255, 255, 255, 60);
  else if (Nevada>0&&Nevada<=20) fill(63, 161, 34, 60);
  else if (Nevada>20&&Nevada<=100) fill(245, 239, 66, 60);
  else if (Nevada>100&&Nevada<=200) fill(255, 174, 0, 60);
  else if (Nevada>200&&Nevada<=1000) fill(166, 27, 33, 60);
  else if (Nevada>1000) fill(90, 32, 138, 60);
  ellipse(182, 240, Nevada/30, Nevada/30);
  // NewHampshire
  if (NewHampshire==0) fill(255, 255, 255, 60);
  else if (NewHampshire>0&&NewHampshire<=20) fill(63, 161, 34, 60);
  else if (NewHampshire>20&&NewHampshire<=100) fill(245, 239, 66, 60);
  else if (NewHampshire>100&&NewHampshire<=200) fill(255, 174, 0, 60);
  else if (NewHampshire>200&&NewHampshire<=1000) fill(166, 27, 33, 60);
  else if (NewHampshire>1000) fill(90, 32, 138, 60);
  ellipse(882, 139, NewHampshire/30, NewHampshire/30);
  // NewJersey
  if (NewJersey==0) fill(255, 255, 255, 60);
  else if (NewJersey>0&&NewJersey<=20) fill(63, 161, 34, 60);
  else if (NewJersey>20&&NewJersey<=100) fill(245, 239, 66, 60);
  else if (NewJersey>100&&NewJersey<=200) fill(255, 174, 0, 60);
  else if (NewJersey>200&&NewJersey<=1000) fill(166, 27, 33, 60);
  else if (NewJersey>1000) fill(90, 32, 138, 60);
  ellipse(853, 217, NewJersey/30, NewJersey/30);
  // NewMexico
  if (NewMexico==0) fill(255, 255, 255, 60);
  else if (NewMexico>0&&NewMexico<=20) fill(63, 161, 34, 60);
  else if (NewMexico>20&&NewMexico<=100) fill(245, 239, 66, 60);
  else if (NewMexico>100&&NewMexico<=200) fill(255, 174, 0, 60);
  else if (NewMexico>200&&NewMexico<=1000) fill(166, 27, 33, 60);
  else if (NewMexico>1000) fill(90, 32, 138, 60);
  ellipse(338, 369, NewMexico/30, NewMexico/30);
  // NewYork
  if (NewYork==0) fill(255, 255, 255, 60);
  else if (NewYork>0&&NewYork<=20) fill(63, 161, 34, 60);
  else if (NewYork>20&&NewYork<=100) fill(245, 239, 66, 60);
  else if (NewYork>100&&NewYork<=200) fill(255, 174, 0, 60);
  else if (NewYork>200&&NewYork<=1000) fill(166, 27, 33, 60);
  else if (NewYork>1000) fill(90, 32, 138, 60);
  ellipse(835, 159, NewYork/30, NewYork/30);
  // NorthCarolina
  if (NorthCarolina==0) fill(255, 255, 255, 60);
  else if (NorthCarolina>0&&NorthCarolina<=20) fill(63, 161, 34, 60);
  else if (NorthCarolina>20&&NorthCarolina<=100) fill(245, 239, 66, 60);
  else if (NorthCarolina>100&&NorthCarolina<=200) fill(255, 174, 0, 60);
  else if (NorthCarolina>200&&NorthCarolina<=1000) fill(166, 27, 33, 60);
  else if (NorthCarolina>1000) fill(90, 32, 138, 60);
  ellipse(807, 326, NorthCarolina/30, NorthCarolina/30);
  // NorthDakota
  if (NorthDakota==0) fill(255, 255, 255, 60);
  else if (NorthDakota>0&&NorthDakota<=20) fill(63, 161, 34, 60);
  else if (NorthDakota>20&&NorthDakota<=100) fill(245, 239, 66, 60);
  else if (NorthDakota>100&&NorthDakota<=200) fill(255, 174, 0, 60);
  else if (NorthDakota>200&&NorthDakota<=1000) fill(166, 27, 33, 60);
  else if (NorthDakota>1000) fill(90, 32, 138, 60);
  ellipse(448, 98, NorthDakota/30, NorthDakota/30);
  // Ohio
  if (Ohio==0) fill(255, 255, 255, 60);
  else if (Ohio>0&&Ohio<=20) fill(63, 161, 34, 60);
  else if (Ohio>20&&Ohio<=100) fill(245, 239, 66, 60);
  else if (Ohio>100&&Ohio<=200) fill(255, 174, 0, 60);
  else if (Ohio>200&&Ohio<=1000) fill(166, 27, 33, 60);
  else if (Ohio>1000) fill(90, 32, 138, 60);
  ellipse(723, 239, Ohio/30, Ohio/30);
  // Oklahoma
  if (Oklahoma==0) fill(255, 255, 255, 60);
  else if (Oklahoma>0&&Oklahoma<=20) fill(63, 161, 34, 60);
  else if (Oklahoma>20&&Oklahoma<=100) fill(245, 239, 66, 60);
  else if (Oklahoma>100&&Oklahoma<=200) fill(255, 174, 0, 60);
  else if (Oklahoma>200&&Oklahoma<=1000) fill(166, 27, 33, 60);
  else if (Oklahoma>1000) fill(90, 32, 138, 60);
  ellipse(485, 355, Oklahoma/30, Oklahoma/30);
  // Oregon
  if (Oregon==0) fill(255, 255, 255, 60);
  else if (Oregon>0&&Oregon<=20) fill(63, 161, 34, 60);
  else if (Oregon>20&&Oregon<=100) fill(245, 239, 66, 60);
  else if (Oregon>100&&Oregon<=200) fill(255, 174, 0, 60);
  else if (Oregon>200&&Oregon<=1000) fill(166, 27, 33, 60);
  else if (Oregon>1000) fill(90, 32, 138, 60);
  ellipse(136, 129, Oregon/30, Oregon/30);
  // Pennsylvania
  if (Pennsylvania==0) fill(255, 255, 255, 60);
  else if (Pennsylvania>0&&Pennsylvania<=20) fill(63, 161, 34, 60);
  else if (Pennsylvania>20&&Pennsylvania<=100) fill(245, 239, 66, 60);
  else if (Pennsylvania>100&&Pennsylvania<=200) fill(255, 174, 0, 60);
  else if (Pennsylvania>200&&Pennsylvania<=1000) fill(166, 27, 33, 60);
  else if (Pennsylvania>1000) fill(90, 32, 138, 60);
  ellipse(800, 211, Pennsylvania/30, Pennsylvania/30);
  // RhodeIsland
  if (RhodeIsland==0) fill(255, 255, 255, 60);
  else if (RhodeIsland>0&&RhodeIsland<=20) fill(63, 161, 34, 60);
  else if (RhodeIsland>20&&RhodeIsland<=100) fill(245, 239, 66, 60);
  else if (RhodeIsland>100&&RhodeIsland<=200) fill(255, 174, 0, 60);
  else if (RhodeIsland>200&&RhodeIsland<=1000) fill(166, 27, 33, 60);
  else if (RhodeIsland>1000) fill(90, 32, 138, 60);
  ellipse(894, 175, RhodeIsland/30, RhodeIsland/30);
  // SouthCarolina
  if (SouthCarolina==0) fill(255, 255, 255, 60);
  else if (SouthCarolina>0&&SouthCarolina<=20) fill(63, 161, 34, 60);
  else if (SouthCarolina>20&&SouthCarolina<=100) fill(245, 239, 66, 60);
  else if (SouthCarolina>100&&SouthCarolina<=200) fill(255, 174, 0, 60);
  else if (SouthCarolina>200&&SouthCarolina<=1000) fill(166, 27, 33, 60);
  else if (SouthCarolina>1000) fill(90, 32, 138, 60);
  ellipse(777, 367, SouthCarolina/30, SouthCarolina/30);
  // SouthDakota
  if (SouthDakota==0) fill(255, 255, 255, 60);
  else if (SouthDakota>0&&SouthDakota<=20) fill(63, 161, 34, 60);
  else if (SouthDakota>20&&SouthDakota<=100) fill(245, 239, 66, 60);
  else if (SouthDakota>100&&SouthDakota<=200) fill(255, 174, 0, 60);
  else if (SouthDakota>200&&SouthDakota<=1000) fill(166, 27, 33, 60);
  else if (SouthDakota>1000) fill(90, 32, 138, 60);
  ellipse(446, 163, SouthDakota/30, SouthDakota/30);
  // Tennessee
  if (Tennessee==0) fill(255, 255, 255, 60);
  else if (Tennessee>0&&Tennessee<=20) fill(63, 161, 34, 60);
  else if (Tennessee>20&&Tennessee<=100) fill(245, 239, 66, 60);
  else if (Tennessee>100&&Tennessee<=200) fill(255, 174, 0, 60);
  else if (Tennessee>200&&Tennessee<=1000) fill(166, 27, 33, 60);
  else if (Tennessee>1000) fill(90, 32, 138, 60);
  ellipse(674, 340, Tennessee/30, Tennessee/30);
  // Texas
  if (Texas==0) fill(255, 255, 255, 60);
  else if (Texas>0&&Texas<=20) fill(63, 161, 34, 60);
  else if (Texas>20&&Texas<=100) fill(245, 239, 66, 60);
  else if (Texas>100&&Texas<=200) fill(255, 174, 0, 60);
  else if (Texas>200&&Texas<=1000) fill(166, 27, 33, 60);
  else if (Texas>1000) fill(90, 32, 138, 60);
  ellipse(460, 443, Texas/30, Texas/30);
  // Utah
  if (Utah==0) fill(255, 255, 255, 60);
  else if (Utah>0&&Utah<=20) fill(63, 161, 34, 60);
  else if (Utah>20&&Utah<=100) fill(245, 239, 66, 60);
  else if (Utah>100&&Utah<=200) fill(255, 174, 0, 60);
  else if (Utah>200&&Utah<=1000) fill(166, 27, 33, 60);
  else if (Utah>1000) fill(90, 32, 138, 60);
  ellipse(260, 253, Utah/30, Utah/30);
  // Vermont
  if (Vermont==0) fill(255, 255, 255, 60);
  else if (Vermont>0&&Vermont<=20) fill(63, 161, 34, 60);
  else if (Vermont>20&&Vermont<=100) fill(245, 239, 66, 60);
  else if (Vermont>100&&Vermont<=200) fill(255, 174, 0, 60);
  else if (Vermont>200&&Vermont<=1000) fill(166, 27, 33, 60);
  else if (Vermont>1000) fill(90, 32, 138, 60);
  ellipse(861, 131, Vermont/30, Vermont/30);
  // Virginia
  if (Virginia==0) fill(255, 255, 255, 60);
  else if (Virginia>0&&Virginia<=20) fill(63, 161, 34, 60);
  else if (Virginia>20&&Virginia<=100) fill(245, 239, 66, 60);
  else if (Virginia>100&&Virginia<=200) fill(255, 174, 0, 60);
  else if (Virginia>200&&Virginia<=1000) fill(166, 27, 33, 60);
  else if (Virginia>1000) fill(90, 32, 138, 60);
  ellipse(803, 281, Virginia/30, Virginia/30);
  // Washington
  if (Washington==0) fill(255, 255, 255, 60);
  else if (Washington>0&&Washington<=20) fill(63, 161, 34, 60);
  else if (Washington>20&&Washington<=100) fill(245, 239, 66, 60);
  else if (Washington>100&&Washington<=200) fill(255, 174, 0, 60);
  else if (Washington>200&&Washington<=1000) fill(166, 27, 33, 60);
  else if (Washington>1000) fill(90, 32, 138, 60);
  ellipse(162, 56, Washington/30, Washington/30);
  // WestVirginia
  if (WestVirginia==0) fill(255, 255, 255, 60);
  else if (WestVirginia>0&&WestVirginia<=20) fill(63, 161, 34, 60);
  else if (WestVirginia>20&&WestVirginia<=100) fill(245, 239, 66, 60);
  else if (WestVirginia>100&&WestVirginia<=200) fill(255, 174, 0, 60);
  else if (WestVirginia>200&&WestVirginia<=1000) fill(166, 27, 33, 60);
  else if (WestVirginia>1000) fill(90, 32, 138, 60);
  ellipse(758, 266, WestVirginia/30, WestVirginia/30);
  // Wisconsin
  if (Wisconsin==0) fill(255, 255, 255, 60);
  else if (Wisconsin>0&&Wisconsin<=20) fill(63, 161, 34, 60);
  else if (Wisconsin>20&&Wisconsin<=100) fill(245, 239, 66, 60);
  else if (Wisconsin>100&&Wisconsin<=200) fill(255, 174, 0, 60);
  else if (Wisconsin>200&&Wisconsin<=1000) fill(166, 27, 33, 60);
  else if (Wisconsin>1000) fill(90, 32, 138, 60);
  ellipse(605, 158, Wisconsin/30, Wisconsin/30);
  // Wyoming
  if (Wyoming==0) fill(255, 255, 255, 60);
  else if (Wyoming>0&&Wyoming<=20) fill(63, 161, 34, 60);
  else if (Wyoming>20&&Wyoming<=100) fill(245, 239, 66, 60);
  else if (Wyoming>100&&Wyoming<=200) fill(255, 174, 0, 60);
  else if (Wyoming>200&&Wyoming<=1000) fill(166, 27, 33, 60);
  else if (Wyoming>1000) fill(90, 32, 138, 60);
  ellipse(337, 190, Wyoming/30, Wyoming/30);
}
