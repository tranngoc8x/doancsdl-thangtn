 <%@ Application Language="C#" %>
 <script runat="server"> 
   void Application_Start(object sender, EventArgs e){  
       // Code that runs on application startup     
       Application["OnlineUsers"] = 0; 
   }         
   void Application_End(object sender, EventArgs e){   
      //  Code that runs on application shutdown     
   }              
   void Application_Error(object sender, EventArgs e){          
     // Code that runs when an unhandled error occurs      
   }    
   void Session_Start(object sender, EventArgs e) {      
     // Code that runs when a new session is started    
     Application.Lock();     
     Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
     Application.UnLock();         
     int count_visit = 0;          

     //Kiểm tra file count_visit.txt nếu không tồn tại thì         
     if (System.IO.File.Exists(Server.MapPath("count_visit.txt")) == false) {          
         count_visit = 1;        
     }      
     // Ngược lại thì      
     else {    
         // Đọc dử liều từ file count_visit.txt    
         System.IO.StreamReader read = new  System.IO.StreamReader(Server.MapPath("count_visit.txt"));   
         count_visit = int.Parse(read.ReadLine());   
         read.Close();            
       // Tăng biến count_visit thêm 1      
       count_visit++;       
      }         

     // khóa website         
     Application.Lock();     
   
     // gán biến Application count_visit     
     Application["count_visit"] = count_visit;   

     // Mở khóa website    
     Application.UnLock();    

     // Lưu dử liệu vào file count_visit.txt     
     System.IO.StreamWriter writer = new  System.IO.StreamWriter(Server.MapPath("count_visit.txt"));  
      writer.WriteLine(count_visit);   
      writer.Close();         
   }     
   void  Session_End(object sender, EventArgs e){  
     Application.Lock();    
     Application["OnlineUsers"] = (int)Application["OnlineUsers"] - 1; 
     Application.UnLock(); 
  }      
</script>