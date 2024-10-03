public class DemoDatatype {
  public static void main(String[] args) {
    // notes
  
    // data type
    //"int" --> Integer 整數 (both + / -)
    // x --> variable 變量
    // from right to left --> assign value integer 1 to variable x
    int x = 2;
    int y = 10;

    int a = x + y; // 12

    // Tool: System.out.println()
    // print out
    System.out.println(a);

    // Math Operation: +, -, *, /
    int result = a - y * x;
    System.out.println(result); // -8

    // Math Operation: %
    // remainder
    int remainder = 10 % 3;
    System.out.println(remainder); // 1

    // double (a number with decimal places)
    double w = 10.5;
    double w2 = 10;
    //System.out.println() shortcut; sysout
    System.out.println(w); // 10.5
    
    // Assign an int vsalue to a double variable
    // int value --> double value
    // assign double value to double variable
    System.out.println(w2); // 10.0

    // ! what is 10?
    // 10 is an int value
    // ! what is w2?
    // w2 is an int variable

    // Naming convention: camel case
    int englishScore = 70;
    int historyScore = 85;
    int mathScore = 90;

    // averageScore
    // int + double --> int
    // int + double --> double + double --> double

    // !!!!! Why 81.0 ?
    // Step 1: int + int + int --> int
    // Step 2: int / int --> int
    // Step 3: assign int value to souble variable
    // !!!!! int / double --> double in step 2
    double averageScore = (englishScore + historyScore + mathScore) / 3.0;
    System.out.println(averageScore); // 81.666666667

    // Variable
    
    // Re-assignment
    x = 20;
    a = -40;

    // code block: main(String[] args) {}
    // ! int x = 9; we cannot use the same variable name within a code block example: x
    int x2 = 9;

    // how to back a value?
    int backup = x;
    x = 25;

    // Operators: +=, -=, *=, /=
    int e = 9;
    // From right to left
    // 9 + 1 --> assign to variable 3
    e = e + 1;
    System.out.println("e=" + e); // 10
    e += 1;
    System.out.println("e=" + e); // 11
    e = e - 1;
    System.out.println("e=" + e); // 10
    e -= 1;
    System.out.println("e=" +e); // 18
    e /= 3;
    System.out.println("e+" =e); // 6

    // ++
    e++; // increment by 1
    System.out.println("e=" + e); // 7
    // --
    e--;
    System.out.println("e=" +e); // 6
    ++e; // increment by 1
    System.out.println("e=" + e); // 7
    --e; // decrement by 1
    System.out.println("e=" + e); // 6
  }
}