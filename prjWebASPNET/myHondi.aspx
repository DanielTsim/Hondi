<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webPizza.aspx.cs" Inherits="FinalExamHondi.webPizza" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            display: grid;
            justify-items: center;
            width: 100%; height: 100%;
            background:whitesmoke;
        }
        .auto-style1 {
            text-align: center;
            color: saddlebrown;
            color: #da9e1e;
        }
        .auto-style2 {
            width: 417px;
        }
        .auto-style3 {
            width: 400px;
        }
        .auto-style4 {
            height: 55px;
            width: 97px;
        }
        .auto-style5 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style6 {
            width: 273px;
          
        }
        .auto-style7 {
            height: 55px;
            width: 273px;
        }
        .auto-style8 { /* 2nd box*/
            margin-top: 0px;
             border-radius:95px;
             padding: 1rem;
             text-align: center;
             padding-bottom: 4rem;
             box-shadow: 2px 2px 5px black;
        }
        .auto-style9 {
            width: 733px;
            height: 581px;
        }
        .auto-style10 {
            width: 97px;
        }
        .auto-style11 {
            width: 500px;
        }
        .auto-style12 {
            height: 116px;
            color: #ffc13b;
        }
        .stylePanel { /* 1st box*/
                      color: #ffc13b;
            border-radius:95px;
            padding: 1rem;
            margin-bottom: -2rem;
            margin-right: 10px;
            box-shadow: 3px 3px 5px black;
        }
        .title{
            text-align: center;
            padding: 1rem;
            font-weight: bold;
            font-size: 1.1rem;
            text-decoration: underline;
        }
        .tecboc {
           border-radius:5px;
           border: 2px solid black;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 { /*3rd box*/
            margin-top: 0px;
             border-radius:95px;
             padding: 1rem;
             text-align: center;
             box-shadow: 2px 2px 5px black;
        }
        #btnOrderNow{
            padding: 8px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style9">
        <hr class="auto-style2" />
    <div>
    
        <h1 class="auto-style1">~ HONDI BUILD & PRICE ~</h1>
    
    </div>
    <hr class="auto-style2" />
        
        <br />
        <table class="auto-style11">
            <tr style="vertical-align:top;">
                <td class="auto-style12">
        
        <asp:Panel ID="firstPanel" runat="server" CssClass="stylePanel"  BackColor="#274f72 " Height="100%" Width="452px">
            <div class="title">Car Information</div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblCustomer" runat="server" AccessKey="c" AssociatedControlID="txtCustomer" Text="Your City:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCustomer" runat="server" CssClass="tecboc" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblZip" runat="server" AccessKey="t" AssociatedControlID="txtZip" Text="Zip Code:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtZip" runat="server" TextMode="Phone" CssClass="tecboc" Width="201px"></asp:TextBox>
                    </td>
                </tr>

                <tr><td><br></td></tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblPizza" runat="server" Text="Car Model:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="cboPizza" runat="server" CssClass="tecboc" AutoPostBack="True" OnSelectedIndexChanged="cboPizza_SelectedIndexChanged" Width="207px">
                            <asp:ListItem>Select Model</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblPizzaSize" runat="server" Text="Interior Color:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:ListBox ID="lstPizzaSize" runat="server" CssClass="tecboc" AutoPostBack="True" Width="207px"></asp:ListBox>
                    </td>
                </tr>

                <tr><td><br></td></tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblToppings" runat="server" Text="Accessories:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:CheckBoxList ID="chklstToppings" runat="server" AutoPostBack="True">
                        </asp:CheckBoxList>
                    </td>
                </tr>

                <tr><td><br></td></tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblPizzaCrust" runat="server" Text="Warranty:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="radlstCrust" runat="server" AutoPostBack="True">
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr><td><br></td></tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblDelivery" runat="server" Text="Contact via telephone?"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:CheckBox ID="chkDelivery" runat="server" AutoPostBack="True" OnCheckedChanged="chkDelivery_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblAddress" runat="server" Text="Telephone:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="tecboc" Width="201px"></asp:TextBox>
                        
                    </td>
                </tr>
            </table>

        </asp:Panel>
                </td>
                <td class="auto-style12">
            <asp:Panel ID="panPricing" runat="server" Height="256px" Width="268px" BackColor="#1e3d59 " CssClass="auto-style8">
                <div class="title">Price Resume</div>
                <asp:Image ID="imgHurtz" runat="server" CssClass="auto-style5" Height="82px" ImageUrl="~/honda.png" Width="112px" />
                <br>
                <asp:Literal ID="litPricing" runat="server"></asp:Literal>
                <br>
                <asp:Button ID="btnOrderNow" runat="server" Text="Conclude" OnClick="btnOrderNow_Click" />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="panOrder" runat="server" CssClass="auto-style15" BackColor="#1e3d59 ">
                        <div class="title">Final Information</div>
                        <asp:Literal ID="litOrder" runat="server"></asp:Literal>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
    </body>
</html>
