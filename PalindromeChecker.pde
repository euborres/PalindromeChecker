public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  word.toLowerCase();
  String noSpace = new String();
  for(int i = 0; i <= word.length() - 1; i++){
    if(!word.substring(i,i+1).equals(" "))
      noSpace = noSpace + word.substring(i,i+1);
  }
  String back = reverse(noSpace);
  if(back.equals(noSpace))
    return true;
  return false;
}

public String reverse(String str)
{
    String sNew = "";
    int last = str.length() - 1;
    for(int i = last; i >= 0;i--){
      sNew = sNew + str.substring(i,i+1);
    }
    //your code here
    return sNew;
}
