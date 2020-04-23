class Taskdata {
 String tasktitle;
 bool isdone ;
 Taskdata({this.isdone=false, this.tasktitle});
 
void togglecheck(){
  isdone =!isdone;
}

}