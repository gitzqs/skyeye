var sopwd = "";
$().ready(function() {
// $("#jklbid").click(function (){//监控列表查询
// window.open("/monitor/list");
// });
	
	
// //1.监控列表查询(不跳转页面)
// function queryMonitorList(){
// $.get("/skyeye/monitor/list", "", function(data) {
// })
// }
	
// $.ajax({
// type : "GET",
// url : "/monitor/list",
// async : false,
// success : function(data) {
// alert(data);
// },
// error : function(e) {
// alert("系统异常,请稍后再试");
// return false;
// }
// });
	sopwd = $("#sopwd").val();
});

function formatDate(value) {
	return new Date(value).Format('yyyy-MM-dd hh:mm:ss');
}

Date.prototype.Format = function(fmt) {
	if(isNaN(this.getDate())) {
		return "";
	}
	
	var o = {   
	    "M+" : this.getMonth()+1,                 // 月份
	    "d+" : this.getDate(),                    // 日
	    "h+" : this.getHours(),                   // 小时
	    "m+" : this.getMinutes(),                 // 分
	    "s+" : this.getSeconds(),                 // 秒
	    "q+" : Math.floor((this.getMonth()+3)/3), // 季度
	    "S"  : this.getMilliseconds()             // 毫秒
	};   
	if(/(y+)/.test(fmt))   
		fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
	for(var k in o)   
    if(new RegExp("("+ k +")").test(fmt))   
    	fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
		return fmt;   
} 