<!-- Copyright 2023 RocketCDS -->
<%@ Control AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<div class="w3-container default titled clearfix">
	<dnn:TITLE runat="server" id="dnnTITLE" CssClass="title" />
	<div id="ContentPane" runat="server"></div>
</div>
