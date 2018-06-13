package com.tianmu.manage.utils;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**  <p>Title:日期时间公共方法封装类</p>
 *  <p>Description:公共方法封装类</p>
 *  <p>Copyright: Copyright (c) 2003.6</p>
 *  <p>Company: </p> */
public class DateTimeUtil
{	
	

    /**
     * 将指定的日期字串"yyyyMMdd"转换为日期格式"yyyy-MM-dd"。
     * @param strDate @param strDate String
     *  @return String String */
    public static String getDateParts(String strDate)
    {
        String newStrDate = "";
        newStrDate = strDate.substring(0, 4) + "-" + strDate.substring(4, 6) + "-" +
            strDate.substring(6, 8);
        return newStrDate;
    }

    /**
     * 返回指定日期前后i日期部分的日期(i为正表示之后，为负表示之前)。
     * @param cal @param cal 表示初始日期
     * @param datePart @param datePart 表示日期的某部分：日、月、年、时、分、秒
     * @param i @param i 表示累加数
     * @return Calendar
     * @throws Exception */
    public static Calendar getAddCalendar(Calendar cal, String datePart, int i) throws Exception
    {
        Calendar calNew = (Calendar) cal.clone();

        if (datePart == null || datePart.equals("") || datePart.equals("DATE"))
            calNew.add(Calendar.DATE, i);
        else if (datePart.equals("MONTH"))
            calNew.add(Calendar.MONTH, i);
        else if (datePart.equals("YEAR"))
            calNew.add(Calendar.YEAR, i);
        else if (datePart.equals("HOUR"))
            calNew.add(Calendar.HOUR_OF_DAY, i);
        else if (datePart.equals("MINUTE"))
            calNew.add(Calendar.MINUTE, i);
        else if (datePart.equals("SECOND"))
            calNew.add(Calendar.SECOND, i);

        return calNew;
    }

    /**
     * 返回两个日期间隔的天数，第二个日期大于第一个日期则返回负数。(该方法的实现目前存在问题)
     * @param startCal @param startCal Calendar
     * @param endCal @param endCal Calendar
     *  @return int */
    public static int getCalendarDiff(Calendar startCal, Calendar endCal)
    {
        int result = 0;
        long lResult =  (startCal.getTimeInMillis() - endCal.getTimeInMillis()) / 24 / 3600 / 1000;
        //System.out.println(startCal.getTimeInMillis());
        //System.out.println(endCal.getTimeInMillis());
       // System.out.println(lResult);
        result = (new Long(lResult)).intValue();
       // System.out.println(result);
        if (result != 0)
        {
            if (result > 0)
                result ++;
            else
                result --;
        }

        return result;
    }

    /**
     * 返回给定日期中当月所包含的天数。
     * @param cal @param cal Calendar
     *  @return int */
    public static int getMonthDays(Calendar cal)
    {
        int year = getCalendarPart(cal, "YEAR");
        int month = getCalendarPart(cal, "MONTH");
        int result = 1;
        boolean temp = true;
        Calendar startCal = Calendar.getInstance();

        startCal.set(year, month - 1, 1);
        while (temp)
        {
            startCal.add(Calendar.DATE, 1);
            int endMonth = getCalendarPart(startCal, "MONTH");
            if (endMonth == month)
                result += 1;
            else
                temp = false;
        }
        return result;
    }

    /**
     * 返回根据年、月、日字符串构造的日期时间。
     * @param yearPart @param yearPart String
     * @param monthPart @param monthPart String
     * @param datePart @param datePart String
     * @return Calendar
     */

    public static Calendar getCalendar(String yearPart, String monthPart, String datePart)
    {
        Calendar myCal = Calendar.getInstance();
        try
        {
            int year = Integer.parseInt(yearPart);
            int month = Integer.parseInt(monthPart) - 1;
            int date = Integer.parseInt(datePart);
            myCal.set(year, month, date);
        }
        catch (Exception e)
        {
            System.out.println("Exception in DateTimeUtil.getDate():" + e.toString());
        }
        return myCal;
    }
    /**
     * <p>将一个字符串转换成Calendar类型，支持"yyyy-MM-dd HH:mm:ss"和"yyyy-MM-dd"格式</p>
     * <p>如果不是，则返回　null</p>
     * @author zhougf
     * @param dateStr 日期字符串
     * @return 如果格式匹配，返回Calendar类型；否则返回 null
     */
    public static Calendar getCalendar(String dateStr)
    {
    	if (!dateStr.matches("\\d{4}-\\d{1,2}-\\d{1,2} \\d{1,2}:\\d{1,2}:\\d{1,2}"))
		{	
			if(dateStr.matches("\\d{4}-\\d{1,2}-\\d{1,2}"))
			{
				dateStr+=" 00:00:00";
			}
			else
			{
				return null;
			}
		}
    	Calendar cal=Calendar.getInstance();
    	cal.setTime(strToDate(dateStr));
    	return cal;
    }
    
    /**
	 * 通过字符串转化为Calendar
	 * 
	 * @param dateStr
	 * @return
	 */
	public static Calendar getCalendarByStr(String dateStr,String format) {
		Calendar ce = Calendar.getInstance();
		DateFormat df = new SimpleDateFormat(format);
		try {
			Date date = df.parse(dateStr);
			ce.setTime(date);
		} catch (ParseException e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		}
		return ce;
	}
    /**
     * 通过字符串转化为Calendar
     * @param dateStr
     * @return
     */
    public static Calendar getCalendarByStr(String dateStr){
    	Calendar ce = Calendar.getInstance();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = df.parse(dateStr);
			ce.setTime(date);
		} catch (ParseException e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		}
		return ce;
    }
    /**
	 * <p>将一个字符串转换成日期类型，支持"yyyy-MM-dd HH:mm:ss"和"yyyy-MM-dd"格式，</p>
	 * <p>如果不是，则返回　null</p>
	 * @author zhougf
	 * @param strDate 日期字符串
	 * @return　如果格式匹配，返回Date类型；否则返回 null
	 */
	public static Date strToDate(String strDate) {
		//用正则匹配日期字符串
		if (!strDate.matches("\\d{4}-\\d{1,2}-\\d{1,2} \\d{1,2}:\\d{1,2}:\\d{1,2}"))
		{	
			if(strDate.matches("\\d{4}-\\d{1,2}-\\d{1,2}"))
			{
				strDate+=" 00:00:00";
			}
			else
			{
				return null;
			}
		}
		Calendar cal = Calendar.getInstance();
		String[] ser=strDate.split(" ");
		String date=ser[0];
		String hour=ser[1];
		//设定日期
		cal.set(Calendar.YEAR, Integer.parseInt(date.split("-")[0]));
		cal.set(Calendar.MONTH, Integer.parseInt(date.split("-")[1]) - 1);
		cal.set(Calendar.DATE, Integer.parseInt(date.split("-")[2]));
		//设定时间
		cal.set(Calendar.HOUR_OF_DAY,Integer.parseInt(hour.split(":")[0]));
		cal.set(Calendar.MINUTE,Integer.parseInt(hour.split(":")[1]));
		cal.set(Calendar.SECOND,Integer.parseInt(hour.split(":")[2]));
		return cal.getTime();
	}
    /**
     * 根据Date返回Calendar。
     * @param oldDate @param oldDate Date
     *  @return Calendar
     */
    public static Calendar getCalendarFromDate(java.util.Date oldDate)
    {
        Calendar myCal = Calendar.getInstance();
        myCal.setTime(oldDate);

        return myCal;
    }

    /**
     * 根据Calendar返回Date。
     * @param oldCalendar @param oldCalendar Calendar
     *  @return Date
     */
    public static Date getDateFromCalendar(Calendar oldCalendar)
    {
        Date myDate = null;
        myDate = oldCalendar.getTime();

        return myDate;
    }

    /**
     * 返回指定日期的指定部分的数值
     * @param cal @param cal Calendar
     * @param part @param part Calendar
     *  @return int */
    public static int getCalendarPart(Calendar cal, String part)
    {
        int calPart = 0;

        if (cal == null || part == null || part.equals(""))
        {
            calPart = 0;
        }

        if (part.equalsIgnoreCase("YEAR"))
            calPart = cal.get(Calendar.YEAR);
        else if (part.equalsIgnoreCase("MONTH"))
            calPart = cal.get(Calendar.MONTH) + 1;
        else if (part.equalsIgnoreCase("DATE"))
            calPart = cal.get(Calendar.DATE);
        else if (part.equalsIgnoreCase("HOUR"))
            calPart = cal.get(Calendar.HOUR);
        else if (part.equalsIgnoreCase("MINUTE"))
            calPart = cal.get(Calendar.MINUTE);
        else if (part.equalsIgnoreCase("SECOND"))
            calPart = cal.get(Calendar.SECOND);
        else if (part.equalsIgnoreCase("MILLISECOND"))
            calPart = cal.get(Calendar.MILLISECOND);

        return calPart;
    }

    /**
     * 返回当前日期是星期几
     * @param myDate @param myDate java.util.Date
     *  @return String */
    public static String getWeekFromDate(java.util.Date myDate)
    {
        Calendar myCal = getCalendarFromDate(myDate);
        String myWeek = getWeekFromCalendar(myCal);

        return myWeek;
    }

    /**
     * 返回当前日期是星期几
     * @param myCalendar @param myCalendar Calendar
     *  @return String */
    public static String getWeekFromCalendar(Calendar myCalendar)
    {
        try
        {
            String strDate = getFormatDate(myCalendar, "yyyy-MM-dd");
            SimpleDateFormat myFormatter = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date mydate = myFormatter.parse(strDate);
            SimpleDateFormat weekFormatter = new SimpleDateFormat("E");
            String myWeek = weekFormatter.format(mydate);

            return myWeek;
        }
        catch (Exception e)
        {
            System.out.println("Error in DateTimeUtil.getWeekFromDate():" + e.getMessage());
        }

        return null;
    }

    /**
     * 按照指定的日期格式返回给定日期时间串的相应格式。
     * @param myDate @param myDate Date 如果该参数为空则取当前日历；
     * @param strFormat @param strFormat String 如果该参数不合法，则返回格式为“yyyy-MM-dd”的日期字符串；
     * 日期格式意义如下：
     Letter  Date or Time Component  Presentation  Examples
     G      Era designator           Text  AD
     y      Year                     Year  1996; 96
     M      Month in year            Month  July; Jul; 07
     w      Week in year             Number  27
     W      Week in month            Number  2
     D      Day in year              Number  189
     d      Day in month             Number  10
     F      Day of week in month     Number  2
     E      Day in week              Text  Tuesday; Tue
     a      Am/pm marker             Text  PM
     H      Hour in day (0-23)       Number  0
     k      Hour in day (1-24)       Number  24
     K      Hour in am/pm (0-11)     Number  0
     h      Hour in am/pm (1-12)     Number  12
     m      Minute in hour           Number  30
     s      Second in minute         Number  55
     S      Millisecond              Number  978
     z      Time zone                General time zone  Pacific Standard Time; PST; GMT-08:00
     Z      Time zone                RFC 822 time zone  -0800

     *  @return String */
    public static String getFormatDate(Date myDate, String strFormat)
    {
        SimpleDateFormat dateFormatter = null;
        String strDateTime = null;

        try
        {
            if (strFormat == null || strFormat.equals(""))
                dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            else
                dateFormatter = new SimpleDateFormat(strFormat);

            strDateTime = dateFormatter.format(myDate);
        }
        catch (Exception e)
        {
            Calendar calTemp = getCalendarFromDate(myDate);
            strDateTime = calTemp.get(Calendar.YEAR) + "-" + (calTemp.get(Calendar.MONTH) + 1) + "-" + calTemp.get(Calendar.DATE);
        }

        return strDateTime;
    }

    /**
     * 按照指定的日期格式返回给定日期时间串的相应格式。
     * @param cal @param cal 如果该参数为空则取当前日历；
     * @param strFormat @param strFormat 如果该参数不合法，则返回格式为“yyyy-MM-dd”的日期字符串；
     *  @return String */
    public static String getFormatDate(Calendar cal, String strFormat)
    {
        Date myDate = getDateFromCalendar(cal);
        String strDateTime = getFormatDate(myDate, strFormat);
        return strDateTime;
    }

    /**  判断所输入的年份是否为闰年。
     *
     * @param year @param year int
     *  @return boolean */
    public static boolean isLeapYear(int year)
    {
        if (year > 1582 && year % 4 == 0 &&
            (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0)))
            return true;
        else
            return false;
    }


    /**
     * 计算两个日期相隔的天数
     * @param exitDateFrom
     * @param exitDateTo
     * @return
     */
    public static int getIntervalDaysOfExitDate2(Date exitDateFrom, Date exitDateTo){
        Calendar aCalendar = Calendar.getInstance();
        Calendar bCalendar = Calendar.getInstance();
        aCalendar.setTime(exitDateFrom);
        bCalendar.setTime(exitDateTo);
        int days = 0;
        while(aCalendar.before(bCalendar)){
            days++;
            aCalendar.add(Calendar.DAY_OF_YEAR, 1);
        }
        return days;
    }
    
    /**
     * 当前时间转换为 UTC时间
     * @param date
     * @return
     */
    public static String getUtcDateStr(Date date){
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	int zoneOffset = cal.get(java.util.Calendar.ZONE_OFFSET);
        // 取得夏令时差：
        int dstOffset = cal.get(java.util.Calendar.DST_OFFSET);
        cal.add(java.util.Calendar.MILLISECOND, -(zoneOffset + dstOffset));
        Date reDate = cal.getTime();
        //2015-12-01T17:36:00Z
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        String reDateStr = sdf.format(reDate);
    	return reDateStr;
    }

	public static String formatDate(java.util.Calendar calendar) {
		if (calendar != null) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
					"yyyy-MM-dd");
			return simpleDateFormat.format(calendar.getTime());
		} else {
			return "";
		}
	}
	
	public static String formatDateTime(java.util.Calendar calendar) {
		if (calendar != null) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			return simpleDateFormat.format(calendar.getTime());
		} else {
			return "";
		}
	}
	
	/**
	 * 功能：获取本周的开始时间
	 */
	public static Calendar getWeekStart() {// 当周开始时间
		Calendar currentDate = Calendar.getInstance();
		currentDate.setFirstDayOfWeek(Calendar.MONDAY);
		currentDate.set(Calendar.HOUR_OF_DAY, 0);
		currentDate.set(Calendar.MINUTE, 0);
		currentDate.set(Calendar.SECOND, 0);
		currentDate.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
		return currentDate;
	}
	
	/**
	 * 两个日期之间相差几个月
	 * @Description: TODO
	 * @param @param date1
	 * @param @param date2
	 * @param @return
	 * @param @throws ParseException   
	 * @return int  
	 * @throws
	 * @author yokoboy
	 * @date 2017年12月4日
	 */
	public static int getMonthSpace(String date1, String date2)
            throws ParseException {

        int result = 0;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();

        c1.setTime(sdf.parse(date1));
        c2.setTime(sdf.parse(date2));

        result = c2.get(Calendar.MONTH) - c1.get(Calendar.MONTH);
        int month = (c2.get(Calendar.YEAR) - c1.get(Calendar.YEAR)) * 12; 
        return month+result;

    }

	public static int daysBetween(String smdate,String bdate) throws ParseException{  
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
        Calendar cal = Calendar.getInstance();    
        cal.setTime(sdf.parse(smdate));    
        long time1 = cal.getTimeInMillis();                 
        cal.setTime(sdf.parse(bdate));    
        long time2 = cal.getTimeInMillis();         
        long between_days=(time2-time1)/(1000*3600*24);  
            
       return Integer.parseInt(String.valueOf(between_days));     
    }  
}
