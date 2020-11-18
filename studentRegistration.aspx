<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="ISAAProject.StudentRegistration1"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Application Form</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            height: 33px;
            width: 204px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 204px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 204px;
            height: 34px;
        }
        .auto-style8 {
            height: 34px;
        }
        table{
            
            margin-top: 50px;
        }
        body{
            background-color: burlywood;
        }
        
    </style>
</head>
<body>
    <div class="card">
    <div class="card bg-dark text-light">
    <div class="card-header">
        <h1 align="center">Student Application Form:</h1></div></div>
    <form id="form1" runat="server">
        
    <div class="card-body">
        <div class="form-group">
            
            <table align="center">
                
                <tr>
                    <td class="auto-style7">Enter Name:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="name" runat="server" CausesValidation="True" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Age:</td>
                    <td>
                        <asp:TextBox ID="age" runat="server" CausesValidation="True" TextMode="Number" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="age"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter DOB:</td>
                    <td>
                        <asp:TextBox ID="dob" runat="server" TextMode="Date" CssClass="bg-light text-dark border-light"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style2">Gender:</td>
                    <td>
                        <asp:RadioButton GroupName="gender" ID="male" Text="Male" runat="server" />
                        <asp:RadioButton GroupName="gender"  ID="female" Text="Female" runat="server" />
                        <asp:RadioButton GroupName="gender" ID="other" Text="Others" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">Contact Number:</td>
                    <td>
                        <asp:TextBox ID="phone" runat="server" TextMode="Phone" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Invalid Phone" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\+?\d[\d -]{8,12}\d" ControlToValidate="phone"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter School's Name:</td>
                    <td>
                        <asp:TextBox ID="school" runat="server" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="school"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter class X %:</td>
                    <td>Enter class XII %:</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="cx" runat="server" CssClass="bg-light text-dark border-light"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="cxii" runat="server" CssClass="auto-style4 bg-light text-dark border-light"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="cxii"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" TextMode="Email" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Invalid email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Country:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="Country" runat="server" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">ZIP Code:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="zip" runat="server" TextMode="Number" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ErrorMessage="Invalid ZIP Code" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[1-9][0-9]{5}$" ControlToValidate="zip"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Username:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="uname" runat="server" CssClass="bg-light text-dark border-light"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="bg-light text-dark border-light"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="cpass" runat="server" TextMode="Password" CssClass="bg-light text-dark border-light"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="cpass" Display="Dynamic" ErrorMessage="Password not matched" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn btn-success"/></td>
                </tr>
                
            </table>
            </div></div></div>
        <div class="card bg-light text-dark">
    <div class="card-footer">
        <asp:Label ID="lbl1" CssClass="bg-warning text-white" runat="server" Visible="false" ></asp:Label></div></div>
    </form>
         </div>
</body>
</html>

