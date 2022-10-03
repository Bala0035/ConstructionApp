
//api
var loginAPI =
    "https://raw.githubusercontent.com/B5app/demoAPI/main/workAPI.json";

var orderAPI =
    "https://raw.githubusercontent.com/B5app/demoAPI/main/tottelorder.json";



String date(String date) {
  String optimized = date.toString().substring(0, 10);
  String month = optimized.substring(5, 7);
  String monthWords = "";
  String dateNumber = optimized.substring(8, 10);
  switch (month) {
    case "01":
      {
        monthWords = "Jan";
      }
      break;
    case "02":
      {
        monthWords = "Feb";
      }
      break;
    case "03":
      {
        monthWords = "Mar";
      }
      break;
    case "04":
      {
        monthWords = "Apr";
      }
      break;
    case "05":
      {
        monthWords = "May";
      }
      break;
    case "06":
      {
        monthWords = "Jun";
      }
      break;
    case "07":
      {
        monthWords = "July";
      }
      break;
    case "08":
      {
        monthWords = "Aug";
      }
      break;
    case "09":
      {
        monthWords = "Sep";
      }
      break;
    case "10":
      {
        monthWords = "Oct";
      }
      break;
    case "11":
      {
        monthWords = "Nov";
      }
      break;
    case "12":
      {
        monthWords = "Dec";
      }
  }
  return "$monthWords $dateNumber";
}



