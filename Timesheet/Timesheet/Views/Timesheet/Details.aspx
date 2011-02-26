<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Timesheet.TimesheetEntry>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">Id</div>
        <div class="display-field"><%= Html.Encode(Model.Id) %></div>
        
        <div class="display-label">EntryDate</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.EntryDate)) %></div>
        
        <div class="display-label">StartTime</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.StartTime)) %></div>
        
        <div class="display-label">EndTime</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.EndTime)) %></div>
        
        <div class="display-label">EntryCategory</div>
        <div class="display-field"><%= Html.Encode(Model.EntryCategory) %></div>
        
        <div class="display-label">EntryEvent</div>
        <div class="display-field"><%= Html.Encode(Model.EntryEvent) %></div>
        
    </fieldset>
    <p>

        <%= Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %> |
        <%= Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

