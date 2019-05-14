package bao;

import java.text.DateFormat;
import java.util.Date;
    
public class Time {
    public String showTodayTime(){
        Date date=new Date();
        return DateFormat.getDateInstance().format(date);
        }  
}
