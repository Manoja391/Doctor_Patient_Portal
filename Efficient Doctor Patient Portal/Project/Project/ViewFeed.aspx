﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewFeed.aspx.cs" Inherits="ViewFeed" %>


<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>

    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#FF9900" Text="View Feedback"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />

</div>
</asp:Content>
