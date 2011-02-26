<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Timesheet.TimesheetEntry>" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Test
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Test</h2>
    <p>
     <%= Html.LabelFor(m => m.Id) %>
    </p>
     <p>
     <%= Html.LabelFor(m => m.EntryDate) %>
                    <%= Html.TextBoxFor(m => m.EntryDate)%>
    </p>
     <p>
     <%= Html.LabelFor(m => m.StartTime) %>
                    <%= Html.TextBoxFor(m => m.StartTime)%>
    </p>
     <p>
     <%= Html.LabelFor(m => m.EntryDate) %>
                    <%= Html.TextBoxFor(m => m.EntryDate)%>
    </p>
     <p>
     <%= Html.LabelFor(m => m.EntryEvent) %>
                    <%= Html.TextBoxFor(m => m.EntryEvent)%>
    </p>
</asp:Content>
