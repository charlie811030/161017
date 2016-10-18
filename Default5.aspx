<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="2">
        <ItemTemplate>
            科系:
            <asp:Label Text='<%# Eval("科系") %>' runat="server" ID="科系Label" /><br />
            活動名稱:
            <asp:Label Text='<%# Eval("活動名稱") %>' runat="server" ID="活動名稱Label" /><br />
            日期:
            <asp:Label Text='<%# Eval("日期") %>' runat="server" ID="日期Label" /><br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=MAC-PC;Initial Catalog=系所月曆;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [系所活動資訊]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3">
        <ItemTemplate>
            科系:
            <asp:Label Text='<%# Eval("科系") %>' runat="server" ID="科系Label" /><br />
            學院:
            <asp:Label Text='<%# Eval("學院") %>' runat="server" ID="學院Label" /><br />
            編號:
            <asp:Label Text='<%# Eval("編號") %>' runat="server" ID="編號Label" /><br />
            系所人數:
            <asp:Label Text='<%# Eval("系所人數") %>' runat="server" ID="系所人數Label" />
            <asp:Image ID="Image2" runat="server" Height="132px" ImageUrl='<%# Eval("科系", "images/{0}.jpg") %>' Width="105px" />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:系所月曆ConnectionString %>' SelectCommand="SELECT * FROM [科系所]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" Height="473px" Width="300px">
        <ItemTemplate>
            科系:
            <asp:Label Text='<%# Eval("科系") %>' runat="server" ID="科系Label" /><br />
            學院:
            <asp:Label Text='<%# Eval("學院") %>' runat="server" ID="學院Label" /><br />
            編號:
            <asp:Label Text='<%# Eval("編號") %>' runat="server" ID="編號Label" /><br />
            系所人數:
            <asp:Label Text='<%# Eval("系所人數") %>' runat="server" ID="系所人數Label" />
            <asp:Image ID="Image1" runat="server" Height="147px" ImageUrl='<%# Eval("科系", "images/{0}.jpg") %>' Width="121px" />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:系所月曆ConnectionString2 %>' SelectCommand="SELECT * FROM [科系所1]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:系所月曆ConnectionString2 %>' SelectCommand="SELECT * FROM [科系所3]"></asp:SqlDataSource>
    <asp:DataList ID="DataList5" runat="server"></asp:DataList>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

