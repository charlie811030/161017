<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            Expr2:
            <asp:TextBox ID="Expr2TextBox" runat="server" Text='<%# Bind("Expr2") %>' />
            <br />
            Expr3:
            <asp:TextBox ID="Expr3TextBox" runat="server" Text='<%# Bind("Expr3") %>' />
            <br />
            科系:
            <asp:TextBox ID="科系TextBox" runat="server" Text='<%# Bind("科系") %>' />
            <br />
            活動名稱:
            <asp:TextBox ID="活動名稱TextBox" runat="server" Text='<%# Bind("活動名稱") %>' />
            <br />
            日期:
            <asp:TextBox ID="日期TextBox" runat="server" Text='<%# Bind("日期") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Expr1:
            <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            Expr2:
            <asp:TextBox ID="Expr2TextBox" runat="server" Text='<%# Bind("Expr2") %>' />
            <br />
            Expr3:
            <asp:TextBox ID="Expr3TextBox" runat="server" Text='<%# Bind("Expr3") %>' />
            <br />
            科系:
            <asp:TextBox ID="科系TextBox" runat="server" Text='<%# Bind("科系") %>' />
            <br />
            活動名稱:
            <asp:TextBox ID="活動名稱TextBox" runat="server" Text='<%# Bind("活動名稱") %>' />
            <br />
            日期:
            <asp:TextBox ID="日期TextBox" runat="server" Text='<%# Bind("日期") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
            <br />
            Expr2:
            <asp:Label ID="Expr2Label" runat="server" Text='<%# Bind("Expr2") %>' />
            <br />
            Expr3:
            <asp:Label ID="Expr3Label" runat="server" Text='<%# Bind("Expr3") %>' />
            <br />
            科系:
            <asp:Label ID="科系Label" runat="server" Text='<%# Bind("科系") %>' />
            <br />
            活動名稱:
            <asp:Label ID="活動名稱Label" runat="server" Text='<%# Bind("活動名稱") %>' />
            <br />
            &nbsp;<asp:Image ID="Image1" runat="server" Height="206px" ImageUrl='<%# Eval("科系", "images/{0}.jpg") %>' Width="177px" />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:系所月曆ConnectionString2 %>" SelectCommand="SELECT 科系 AS Expr1, 活動名稱 AS Expr2, 日期 AS Expr3, 系所活動資訊.* FROM 系所活動資訊 WHERE (科系 = @tid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="tid" QueryStringField="QID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

