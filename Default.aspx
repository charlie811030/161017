<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" >
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="科系" DataNavigateUrlFormatString="info.aspx?qid={0}" DataTextField="科系" HeaderText="科系" />
            <asp:BoundField DataField="活動名稱" HeaderText="活動名稱" SortExpression="活動名稱" />
            <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
        </Columns>
    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=MAC-PC;Initial Catalog=系所月曆;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [系所活動資訊]"></asp:SqlDataSource>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="314px" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="科系" HeaderText="科系" SortExpression="科系" />
            <asp:BoundField DataField="學院" HeaderText="學院" SortExpression="學院" />
            <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
            <asp:BoundField DataField="系所人數" HeaderText="系所人數" SortExpression="系所人數" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:系所月曆ConnectionString %>" SelectCommand="SELECT * FROM [科系所]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Caption="系所資訊">
        <Columns>
            <asp:BoundField DataField="科系" HeaderText="科系" SortExpression="科系" />
            <asp:BoundField DataField="學院" HeaderText="學院" SortExpression="學院" />
            <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
            <asp:BoundField DataField="系所人數" HeaderText="系所人數" SortExpression="系所人數" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:系所月曆ConnectionString %>" SelectCommand="SELECT * FROM [科系所1]"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="科系" HeaderText="科系" SortExpression="科系" />
            <asp:BoundField DataField="學院" HeaderText="學院" SortExpression="學院" />
            <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
            <asp:BoundField DataField="系所人數" HeaderText="系所人數" SortExpression="系所人數" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:系所月曆ConnectionString %>" SelectCommand="SELECT * FROM [科系所2]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="科系" HeaderText="科系" SortExpression="科系" />
            <asp:BoundField DataField="學院" HeaderText="學院" SortExpression="學院" />
            <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
            <asp:BoundField DataField="系所人數" HeaderText="系所人數" SortExpression="系所人數" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:系所月曆ConnectionString %>" SelectCommand="SELECT * FROM [科系所3]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</asp:Content>

