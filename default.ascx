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
<div class="pageouter">
	<div class="pageinner">
		<div class="header">
			<!-- Begin semantic header html tag -->
			<div class="segment aboveheader">
				<div class="w3-content">
					<div class="w3-row">
						<div id="aboveheader" runat="server" class="" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
							<div class="langpane">
								<dnn:LANGUAGE id="dnnLANGUAGE" runat="server" AlternateTemplate="&lt;a href='[URL]' title='[CULTURE:NATIVENAME]'&gt;[CULTURE:TWOLETTERISOCODE]&lt;/a&gt;" ItemTemplate="&lt;a href='[URL]' title='[CULTURE:NATIVENAME]'&gt;[CULTURE:TWOLETTERISOCODE]&lt;/a&gt;" SelectedItemTemplate="&lt;a href='[URL]' title='[CULTURE:NATIVENAME]' class='langsel'&gt;[CULTURE:TWOLETTERISOCODE]&lt;/a&gt;" showLinks="True" showMenu="False" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="segment mainheader">
				<div class="w3-content">
					<div class="w3-cell-row">
						<div class="w3-container w3-cell w3-cell-middle w3-mobile">
							<div class="logopane w3-left">
								<dnn:LOGO id="dnnLogo" runat="server" />
							</div>
						</div>
						<div class="w3-container w3-cell w3-cell-middle w3-mobile nav">
							<div class="menu w3-right">
								<dnn:MENU MenuStyle="mainmenu" runat="server" NodeManipulator="RocketTools.DdrMenuInterface,RocketTools"></dnn:MENU>
							</div>
						</div>
						<div class="w3-container w3-stretch nav">
							<div class="navicon w3-clear">
								<a id="navicon" aria-label="Menu" href="javascript:void(0);" role="button"></a></div>
							<div class="mobilemenu w3-hide-large">
								<dnn:MENU runat="server" MenuStyle="MobileMenu" NodeManipulator="RocketTools.DdrMenuInterface,RocketTools"></dnn:MENU>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="segment belowheader">
				<div class="w3-content">
					<div class="w3-row">
						<div id="belowheader" runat="server" class="" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End semantic header html tag  -->
		<div class="main">
			<!-- Begin semantic body html tag -->
			<div class="segment contentfull fullwidth">
				<div class="w3-content">
					<div class="w3-row">
						<div id="ContentPane" runat="server" class="" containername="RocketW3" containersrc="boxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment maincontentleft">
				<div class="w3-content">
					<div class="w3-row">
						<div id="contentleft" runat="server" class="w3-col l8 m8 s12 contentleft" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="columnright" runat="server" class="w3-col l4 m4 s12 columnright" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment maincontentright">
				<div class="w3-content">
					<div class="w3-row">
						<div id="columnleft" runat="server" class="w3-col l4 m4 s12 columnleft" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="contentright" runat="server" class="w3-col l8 m8 s12 contentright" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment maincontentleftwide">
				<div class="w3-content">
					<div class="w3-row">
						<div id="contentleftwide" runat="server" class="w3-col l9 m8 s12 contentleftwide" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="columnrightnarrow" runat="server" class="w3-col l3 m4 s12 columnrightnarrow" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment maincontentrightwide">
				<div class="w3-content">
					<div class="w3-row">
						<div id="columnleftnarrow" runat="server" class="w3-col l3 m4 s12 columnleftnarrow" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="contentrightwide" runat="server" class="w3-col l9 m8 s12 contentrightwide" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment middlefull fullwidth">
				<div class="w3-content">
					<div class="w3-row">
						<div id="middlefull" runat="server" class="" containername="RocketW3" containersrc="boxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment panelshalf">
				<div class="w3-content">
					<div class="w3-row">
						<div id="panelshalffirst" runat="server" class="w3-col l6 m6 s12 first" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="panelshalfsecond" runat="server" class="w3-col l6 m6 s12 second" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment panelsthird">
				<div class="w3-content">
					<div class="w3-row">
						<div id="panelsthirdfirst" runat="server" class="w3-col l4 m4 s12 first" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="panelsthirdsecond" runat="server" class="w3-col l4 m4 s12 second" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="panelsthirdthird" runat="server" class="w3-col l4 m4 s12 third" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment panelsquarter">
				<div class="w3-content">
					<div class="w3-row">
						<div id="panelsquarterfirst" runat="server" class="w3-col l3 m6 s12 first" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="panelsquartersecond" runat="server" class="w3-col l3 m6 s12 second" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="panelsquarterthird" runat="server" class="w3-col l3 m6 s12 third" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="panelsquarterfourth" runat="server" class="w3-col l3 m6 s12 fourth" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment lowerfull fullwidth">
				<div class="w3-content">
					<div class="w3-row">
						<div id="lowerfull" runat="server" class="" containername="RocketW3" containersrc="boxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End semantic body html tag -->
		<div class="footer">
			<!-- Begin semantic footer html tag -->
			<div class="segment footerthird">
				<div class="w3-content">
					<div class="w3-row">
						<div id="footerthirdfirst" runat="server" class="w3-col l4 m4 s12 first" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="footerthirdsecond" runat="server" class="w3-col l4 m4 s12 second" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
						<div id="footerthirdthird" runat="server" class="w3-col l4 m4 s12 third" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
			<div class="segment footerfull fullwidth">
				<div class="w3-content">
					<div class="w3-row">
						<div id="footerfull" runat="server" class="" containername="RocketW3" containersrc="unboxed.ascx" containertype="G">
						</div>
					</div>
				</div>
			</div>
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
