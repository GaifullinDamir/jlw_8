package jspappl;

public class Individual {
    public static int[] GetSumEvenOddNumbers(String args[]) {
        int sumOddNumbers = 0; //переменная-счетчик для нечетных чисел
        int sumEvenNumbers = 0; //переменная-счетчик для нечетных чисел
        for(String strNum : args){
            var intNum = Integer.parseInt(strNum);
            if ( intNum % 2 == 0) {
                sumEvenNumbers += intNum;
            } else {
                sumOddNumbers += intNum;
            }
        }

        return new int[] {sumOddNumbers, sumEvenNumbers};
    }

    public static String getResultsToWeb(String args[]){
        int [] resultArray = GetSumEvenOddNumbers(args);
        String resultString = "<tr><td>Сумма нечётных чисел: </td> <td>" + resultArray[0] + "</td></tr>" +
                "<tr><td>Сумма чётных чисел: </td> <td>" + resultArray[1] + "</td></tr>";
        System.out.println(resultString);
        return resultString;
    }
}