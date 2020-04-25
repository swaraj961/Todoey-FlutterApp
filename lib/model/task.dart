class Task {
 String tasktitle;
 bool isdone ;
 Task({this.isdone=false, this.tasktitle});
 
void togglecheck(){
  isdone =!isdone;
}

}