<!-- RocketCDS W3 Theme - Copyright 2023 agence-sesame.fr -->
<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="rocket" TagName="ROCKETTOOLSMETA" Src="~/DesktopModules/DNNrocket/API/Meta.ascx" %>
<dnn:DnnCssInclude ID="w3css" runat="server" FilePath="w3.css" PathNameAlias="SkinPath" forceprovider="DnnPageHeaderProvider" Priority="12" />
 
<rocket:ROCKETTOOLSMETA ID="ROCKETTOOLSMETA1" runat="server" />
<dnn:META runat="server" Content="width=device-width, initial-scale=1.0" Name="viewport" />


<div class="pageouter ">
	<div class="pageinner">
		<div class="header">
			<!-- Begin semantic header html tag -->
			<div class="segment aboveheader">
				<div class="w3-content">
					<div class="w3-row">
						<div id="aboveheader" runat="server" class="" containername="RocketW3" containersrc="nocontainer.ascx" containertype="G">
							<div class="langpane">
								<dnn:LANGUAGE id="dnnLANGUAGE" runat="server" AlternateTemplate="&lt;a href='[URL]' title='[CULTURE:NATIVENAME]'&gt;[CULTURE:TWOLETTERISOCODE]&lt;/a&gt;" ItemTemplate="&lt;a href='[URL]' title='[CULTURE:NATIVENAME]'&gt;[CULTURE:TWOLETTERISOCODE]&lt;/a&gt;" SelectedItemTemplate="&lt;a href='[URL]' title='[CULTURE:NATIVENAME]' class='langsel'&gt;[CULTURE:TWOLETTERISOCODE]&lt;/a&gt;" showLinks="True" showMenu="False" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End semantic header html tag -->
		<div class="main">
			<!-- Begin semantic body html tag -->
			<div class="segment contentfull">
				<div class="w3-content">
					<div class="w3-row">
						<div id="ContentPane" runat="server" class="" containername="RocketW3" containersrc="default.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End semantic body html tag -->
		<div class="footer">
			<!-- Begin semantic header html tag -->
		</div>
		<!-- End semantic footer html tag -->
		<div class="segment copyright">
			<div class="w3-content">
				<div class="w3-row">
					<div class="w3-container w3-padding-24">
						<dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass=" " />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:LOGIN ID="dnnLogin" runat="server" CssClass=" " />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>