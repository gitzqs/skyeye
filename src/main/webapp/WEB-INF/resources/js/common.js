function getFormatDateTime(date) {
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    var hour = date.getHours();
    var minute = date.getMinutes();
    var second = date.getSeconds();
    month = (month >= 1 && month <= 9) ? "0" + month : month;
    strDate = (strDate >= 0 && strDate <= 9) ? "0" + strDate :  strDate;
    hour = (hour >= 0 && hour <= 9) ?  "0" + hour :  hour;
    minute = (minute >= 0 && minute <= 9) ?  "0" + minute :  minute;
    second = (second >= 0 && second <= 9) ?  "0" + second :  second;
    
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
            + " " + hour + seperator2 + minute
            + seperator2 + second;
    return currentdate;
}

function getFormatDate(date) {
    var seperator1 = "-";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    month = (month >= 1 && month <= 9) ? "0" + month : month;
    strDate = (strDate >= 0 && strDate <= 9) ? "0" + strDate :  strDate;
  
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
            
    return currentdate;
}
