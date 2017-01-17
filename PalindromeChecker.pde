public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(noSpecialLetters(noSpaces(noCapitals(lines[i]))))==true)
    {
      System.out.println(lines[i] + " IS a palidrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palidrome.");
    }
  }
}





public boolean isPalindrome(String sWord){
  if ((reverse(sWord)).equals(sWord))
    return true;
  return false;
}






public String reverse(String sWord){
  String reverse = new String();
  
  for (int i = sWord.length()-1; i >= 0; i--)
  {
    reverse += sWord.substring(i,i+1);
  }
  
  return reverse;
}




public String noCapitals(String sWord){
  return sWord.toLowerCase();
}




public String noSpaces(String sWord){
  String noSpaces = new String();
  
  for (int i = 0; i < sWord.length(); i++)
  {
    if (sWord.charAt(i) != ' ')
      noSpaces += sWord.substring(i,i+1);
  }
  
  return noSpaces;
}



public String noSpecialLetters(String sWord)
{
  String noSpecialLetters = new String();

  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)))
      noSpecialLetters += sWord.charAt(i);
  }

  return noSpecialLetters;
}

