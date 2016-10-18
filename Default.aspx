<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" %>

<script runat="server">

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="425px">
       
         <Columns>
      
            <asp:BoundField DataField="資訊學院" HeaderText="資訊學院" SortExpression="資訊學院" />
            <asp:BoundField DataField="語言學院" HeaderText="語言學院" SortExpression="語言學院" />
            <asp:BoundField DataField="設計學院" HeaderText="設計學院" SortExpression="設計學院" />
            <asp:BoundField DataField="觀光學院" HeaderText="觀光學院" SortExpression="觀光學院" />
        </Columns>
     
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" SelectCommand="SELECT * FROM [系所]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabDBConnectionString %>" SelectCommand="SELECT * FROM [LabTable]"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

