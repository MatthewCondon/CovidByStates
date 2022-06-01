class State {

  String name;
  int count;
  String date;

  public State(String name, int count, String date) {
    this.name=name;
    this.count=count;
    this.date = date;
  }
  public String getName() {
    return name;
  }
  public int count() {
    return count;
  }
  
  public String getDate(){
   return date; 
  }

  public String toString() {
    return name+ " "+count+" "+date;
  }
}
