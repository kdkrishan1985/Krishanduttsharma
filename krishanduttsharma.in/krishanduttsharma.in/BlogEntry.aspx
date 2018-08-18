<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BlogEntry.aspx.cs" Inherits="BlogEntry" %>

<%@ Register Assembly="Winthusiasm.HtmlEditor" Namespace="Winthusiasm.HtmlEditor"
    TagPrefix="cc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Blog Entry..</title>
</head>
<body style="background-color: black;">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <div style="width: 100%; padding-left: 20px; padding-right: 20px; padding-bottom: 20px; padding-top: 20px;">

            <div class="panel-group">
                <div class="panel panel-primary">
                    <div class="panel-heading">New Blog Entry</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="alert alert-success" id="alert" runat="server" visible="false">
                                <asp:Label ID="lblalert" runat="server"></asp:Label>
                            </div>
                            <div class="alert alert-danger" id="alertdenger" runat="server" visible="false">
                                <asp:Label ID="lblalertdenger" runat="server"></asp:Label>
                            </div>
                            <div class="col-lg-2">
                                &nbsp;
                            </div>
                            <div class="col-lg-8">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="txtCategory">Category:</label>
                                                <asp:DropDownList ID="txtCategory" runat="server" TextMode="SingleLine" class="form-control">
                                                    <asp:ListItem Value="0">Select Category</asp:ListItem>
                                                    <asp:ListItem Value="ASP.Net">ASP.Net</asp:ListItem>
                                                    <asp:ListItem Value="ASP.NET MVC">ASP.NET MVC</asp:ListItem>
                                                    <asp:ListItem Value="CSharp.Net">CSharp.Net</asp:ListItem>
                                                    <asp:ListItem Value="Entity Framework">Entity Framework</asp:ListItem>
                                                    <asp:ListItem Value="Interview Questions">Interview Questions</asp:ListItem>
                                                    <asp:ListItem Value="LINQ">LINQ</asp:ListItem>
                                                    <asp:ListItem Value="OOPs Concepts">OOPs Concepts</asp:ListItem>
                                                    <asp:ListItem Value="SQL Server">SQL Server</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="tbTitle">Title:</label>
                                                <asp:TextBox ID="tbTitle" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="txtSummary">Summary:</label>
                                                <asp:TextBox ID="txtSummary" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="tbDetails">Details:</label>
                                                <cc2:HtmlEditor ID="tbDetails" runat="server" Text="" BackColor="White" TabbarBackColor="White"
                                                    EditorBackColor="White" Width="900px" Height="300px"
                                                    EditorForeColor="Black" EditorInnerBorderColor="White" FormatHtmlMode="False"
                                                    HtmlModeEditable="False" TabBackColor="White" ToolbarColor="SteelBlue" />
                                            </div>
                                        </div>



                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="tbAuthor">Author:</label>
                                                <asp:TextBox ID="tbAuthor" runat="server" CssClass="form-control">KRISHAN DUTT</asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-group">
                                                <label for="tbYear">Year:</label>
                                                <asp:TextBox ID="tbYear" runat="server" CssClass="form-control">2017</asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                &nbsp;
                            </div>
                        </div>

                    </div>
                    <div class="panel-footer">
                        <div class="table-responsive">
                            <asp:GridView ID="gvBookStoreRecords" runat="server" CssClass="table table-hover">
                            </asp:GridView>
                        </div>
                    </div>
                </div>

            </div>

        </div>


    </form>
</body>
</html>
