<%-- Следующие 4 строки представляют собой директивы ASP.NET, необходимые при использовании компонентов SharePoint --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- Разметка и скрипт из следующего элемента Content будут помещены в элемент <head> страницы --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />
    <!-- Office UI Fabric -->
    <link rel="stylesheet" href="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-core/9.6.0/css/fabric.min.css" />

    <!-- Office UI Fabric JS -->
    <link rel="stylesheet" href="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-js/1.2.0/css/fabric.min.css" />
    <link rel="stylesheet" href="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-js/1.2.0/css/fabric.components.min.css" />
    <script type="text/javascript" src="https://static2.sharepointonline.com/files/fabric/office-ui-fabric-js/1.2.0/js/fabric.min.js"></script>

    <!-- Добавьте свои стили CSS в следующий файл -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Добавьте свой код JavaScript в следующий файл -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- Разметка из следующего элемента Content будет помещена в элемент TitleArea страницы --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Task list
</asp:Content>

<%-- Разметка и скрипт из следующего элемента Content будут помещены в элемент <body> страницы --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly"  ID="HomePage1" Title="loc:full" />
    <button type="button" id="newTask" class="ms-Button">New Task</button>
</asp:Content>
