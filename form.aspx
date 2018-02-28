<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="Design.form" %>

<!DOCTYPE html>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
   
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/css/bootstrap-datepicker3.min.css">
<html xmlns="http://www.w3.org/1999/xhtml">
    <script src="https://code.jquery.com/jquery-2.2.3.min.js" integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>

<head runat="server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        function check(obj) {
            if (obj.value.trim() != "") {
                document.getElementById("btnsave").disabled = true;
            }
            else {
                document.getElementById("btnsave").disabled = false;
            }
        }
</script>
    <script>
        $(function () {
            $("#fromdate").datepicker();
            format: 'yyyy-mm-dd'
        });
        $("#datepicker").on("change", function () {
            var fromdate = $(this).val();
        });

    </script>
     <script>
         $(function () {
             $("#todate").datepicker();
             format: 'yyyy-mm-dd'
         });
         $("#datepicker1").on("change", function () {
             var todate = $(this).val();
             alert('todate');
         
         });

    </script>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Employee Details</h1>
                <div class="row">
                </div>
                <table class="auto-style1">
                      <tr>
                    <td>&nbsp;</td>
                    <td>
                    <asp:Button ID="btn1" runat="server"  Text="Back" OnClick="btn1_Click"/>
                          </td>
                </tr>
                      <tr>
                    <td><asp:Label runat="server" ID="Label6">Full Name</asp:Label>
                    </td>
                    <td>
<asp:DropDownList ID="ddl1" runat="server" ></asp:DropDownList>                    </td>
                </tr>
                       <tr>
                    <td><asp:Label runat="server" ID="Label7">Reason For Leave</asp:Label>
                    </td>
                    <td>
<asp:DropDownList ID="ddl2" runat="server" ></asp:DropDownList>                    </td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="Label1">Full Name</asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label runat="server" ID="Label2">Reason for Leave</asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="txtreason" runat="server"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>


            <asp:Label runat="server" ID="Label3">Start Date</asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="fromdate" runat="server" onblur="return check(this);"></asp:TextBox>

                        </td>
                </tr>
                <tr>
                    <td>

            <asp:Label runat="server" ID="Label4">End Date</asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="todate" runat="server" ></asp:TextBox>
                        </td>
                </tr>
                 <tr>
                    <td><asp:Label runat="server" ID="Label5">Leave Approve Manager</asp:Label>
                    </td>
                    <td>
<asp:DropDownList ID="ddl3" runat="server" ></asp:DropDownList>                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
<asp:Button ID="btnsave" runat="server" Text="save" OnClick="btnsave_Click" />

                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>
           
            
    </form>
</body>
</html>
