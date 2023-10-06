<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="CalculatorDemo.Calculator" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora Simple</title>
     <style>
         body{
             background-color:purple
         }
         .result {
            font-size: 24px;
            text-align: right;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
        }

        .btn {
            font-size: 20px;
            width: 60px;
            height: 60px;
            margin: 10px;
            border-color:black;
        }
    </style>
</head>
<body>
    <center>

    
    <form id="form1" runat="server">
        <div>
            <h1>Calculadora Simple</h1>
            <asp:TextBox ID="txtResult" runat="server" ReadOnly="true" CssClass="result" Height="48px" Width="259px" margin="15px" BorderColor="black" /><br />
            <asp:Button ID="btnClear" runat="server" Text="C" OnClick="btnClear_Click" CssClass="btn" /><br />
            <asp:Button ID="btn7" runat="server" Text="7" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btn8" runat="server" Text="8" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btn9" runat="server" Text="9" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btnDivide" runat="server" Text="/" OnClick="Operator_Click" CssClass="btn" /><br />
            <asp:Button ID="btn4" runat="server" Text="4" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btn5" runat="server" Text="5" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btn6" runat="server" Text="6" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btnMultiply" runat="server" Text="*" OnClick="Operator_Click" CssClass="btn" /><br />
            <asp:Button ID="btn1" runat="server" Text="1" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btn2" runat="server" Text="2" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btn3" runat="server" Text="3" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btnSubtract" runat="server" Text="-" OnClick="Operator_Click" CssClass="btn" /><br />
            <asp:Button ID="btn0" runat="server" Text="0" OnClick="Number_Click" CssClass="btn" />
            <asp:Button ID="btnDecimal" runat="server" Text="." OnClick="Decimal_Click" CssClass="btn" />
            <asp:Button ID="btnEqual" runat="server" Text="=" OnClick="btnEqual_Click" CssClass="btn" />
            <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="Operator_Click" CssClass="btn" /><br />
            <asp:Label ID="lblResult" runat="server" CssClass="result" Text=""></asp:Label>
        </div>
    </form>

</body>
</html>
