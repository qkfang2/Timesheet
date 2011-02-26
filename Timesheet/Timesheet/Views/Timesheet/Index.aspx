<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Timesheet.TimesheetEntry>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	TimesheetList
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>TimesheetList</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Id
            </th>
            <th>
                EntryDate
            </th>
            <th>
                StartTime
            </th>
            <th>
                EndTime
            </th>
            <th>
                EntryCategory
            </th>
            <th>
                EntryEvent
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
                <%= Html.ActionLink("Details", "Details", new { id=item.Id })%> |
                <%= Html.ActionLink("Delete", "Delete", new { id=item.Id })%>
            </td>
            <td>
                <%= Html.Encode(item.Id) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.EntryDate)) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.StartTime)) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.EndTime)) %>
            </td>
            <td>
                <%= Html.Encode(item.EntryCategory) %>
            </td>
            <td>
                <%= Html.Encode(item.EntryEvent) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

