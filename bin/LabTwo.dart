/**
 * Write your test code below in the main (optional).
 *
 * @author adinashby
 */
import 'dart:collection'; // because of use of HashSet 
void main(List<String> arguments) {

   var board = [["5","3",".",".","7",".",".",".","."]
,["6",".",".","1","9","5",".",".","."]
,[".","9","8",".",".",".",".","6","."]
,["8",".",".",".","6",".",".",".","3"]
,["4",".",".","8",".","3",".",".","1"]
,["7",".",".",".","2",".",".",".","6"]
,[".","6",".",".",".",".","2","8","."]
,[".",".",".","4","1","9",".",".","5"]
,[".",".",".",".","8",".",".","7","9"]];
  
  // call to a function to check it
  if(isValidSudoku(board)){
    print("true");
  }
  else{
    print("false");
  }

}

/**
 * Please refer to the README file for question(s) description
 */

bool isValidSudoku(List<List<String>> board) {

//As hashset can add value at once and If the value is duplicate of other element, it will be ignored.
 HashSet<String> list1 = new HashSet<String>(); // create an object of HashSet and initialize it
  
   for (int i = 0; i < 9; i++) { 
      for(int j = 0; j < 9; j++) {  
        var current_val = board[i][j];
        var i_val = i/3;  //Error: Compilation failed was found if use directly in matrix box condition - A value of type 'double' can't be assigned to a variable of type 'String'.
        var j_val = j/3;  //Error: Compilation failed was found if use directly in matrix box condition - A value of type 'double' can't be assigned to a variable of type 'String'.

        if(current_val != '.'){
          // Now check if the value is not getting added it means it has duplicate value already
          if(!list1.add(current_val + " row " + i.toString() )
            || !list1.add(current_val + " col " + j.toString())
            || !list1.add(current_val + " matrix box " + i_val.toString() + "-" + j_val.toString()))
             return false;
        }
      }
   }
  return true; // if the value can be added and no duplicate value found then return true

}