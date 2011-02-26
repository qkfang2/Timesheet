<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Timesheet.TimesheetEntry>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.EntryDate) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.EntryDate) %>
                <%= Html.ValidationMessageFor(model => model.EntryDate) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.StartTime) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.StartTime) %>
                <%= Html.ValidationMessageFor(model => model.StartTime) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.EndTime) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.EndTime) %>
                <%= Html.ValidationMessageFor(model => model.EndTime) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.EntryCategory) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.EntryCategory) %>
                <%= Html.ValidationMessageFor(model => model.EntryCategory) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.EntryEvent) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.EntryEvent) %>
                <%= Html.ValidationMessageFor(model => model.EntryEvent) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

