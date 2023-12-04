<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFoodie.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script >
        /* For disappering alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";

            }, seconds * 1000);
        };

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- book section -->
  <section class="book_section layout_padding">
    <div class="container">
      <div class="heading_container">
          <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
        <h2>
          Send Your Query
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            
              <div>
                  <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ></asp:RequiredFieldValidator>
              </div>
              <div>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your Email"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControToValidate="txtEmail"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              
              </div>
              <div>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject"> </asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is required" ControlToValidate="txtSubject"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              
              </div>
              <div>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="Enter Your Query/Feedback"> </asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required" ControlToValidate="txtMessage"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              
              </div>
              
              <div class="btn_box">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-warning rounded-pill pl-4 pr-4 text-white" 
                    OnClick="btnSubmit_Click" />
              </div>
           
          </div>
        </div>
        <div class="col-md-6">
          <div class="map_container ">
            <div id="googleMap"><div style="height: 100%; width: 100%;"><div style="overflow: hidden; width: 555px; height: 345px;"><img alt="" src="https://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i19758441&amp;2i25231478&amp;2e1&amp;3u18&amp;4m2&amp;1u555&amp;2u345&amp;5m5&amp;1e0&amp;5svi&amp;6sus&amp;10b1&amp;12b1&amp;key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&amp;token=12495" style="width: 555px; height: 345px;"></div></div></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end book section -->


</asp:Content>
