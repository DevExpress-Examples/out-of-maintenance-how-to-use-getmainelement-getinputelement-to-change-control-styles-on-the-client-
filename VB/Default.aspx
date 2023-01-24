<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .noImage.dxbButtonSys
        {
            background-image: none !important;
        }
    </style>
    <script type="text/javascript">
        function backgroundColorCombobox_SelectedIndexChanged(s, e) {
            var buttonElement = button.GetMainElement();
            buttonElement.style.backgroundColor = s.GetValue();
        }
        function textColorCombobox_SelectedIndexChanged(s, e) {
            var buttonElement = button.GetMainElement();
            buttonElement.style.color = s.GetValue();
        }

        var colorsArray = ["#d12501", "#98ac57", "#88543e", "#f9eac1", "#dfa625", "#c97c24", "#fb423d", "#435964"];
        function imageRBL_SelectedIndexChanged(s, e) {
            image.SetImageUrl("Images/" + s.GetValue());
            var imageElement = image.GetMainElement();
            imageElement.style.borderColor = colorsArray[s.GetSelectedIndex()];
        }
        function tbRBL_ValueChanged(s, e) {
            var tbInputElement = textBox.GetInputElement();
            if (s.GetValue() == 1) {
                tbInputElement.readOnly = true;
                tbInputElement.style.color = "Gray";
                tbInputElement.style.cursor = "not-allowed";
            }
            else {
                tbInputElement.readOnly = false;
                tbInputElement.style.color = "Black";
                tbInputElement.style.cursor = "text";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server">
            <Items>
                <dx:LayoutGroup ColCount="2" Caption="ASPxButton example">

                    <Items>
                        <dx:LayoutItem Caption="Background Color">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxComboBox ID="backgroundColorCombobox" runat="server" ValueType="System.String">
                                        <ClientSideEvents SelectedIndexChanged="backgroundColorCombobox_SelectedIndexChanged" />
                                        <Items>
                                            <dx:ListEditItem Value="Gray" />
                                            <dx:ListEditItem Value="Black" />
                                            <dx:ListEditItem Value="White" />
                                        </Items>
                                    </dx:ASPxComboBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem RowSpan="2" Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer ID="LayoutItemNestedControlContainer1" runat="server">
                                    <dx:ASPxButton ID="button" runat="server" Text="Some Text Here..." CssClass="noImage"
                                        AutoPostBack="false" ClientInstanceName="button" ForeColor="Blue">
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="Text Color">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxComboBox ID="textColorCombobox" runat="server" ValueType="System.String">
                                        <ClientSideEvents SelectedIndexChanged="textColorCombobox_SelectedIndexChanged" />
                                        <Items>
                                            <dx:ListEditItem Value="Red" />
                                            <dx:ListEditItem Value="Yellow" />
                                            <dx:ListEditItem Value="Green" />
                                            <dx:ListEditItem Value="Orange" />
                                            <dx:ListEditItem Value="Purple" />
                                        </Items>
                                    </dx:ASPxComboBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                    </Items>
                </dx:LayoutGroup>
                <dx:LayoutGroup ColCount="2" Caption="ASPxImage Example">
                    <Items>
                        <dx:LayoutItem Caption="Choose Image">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxRadioButtonList ID="imageRBL" runat="server" ValueType="System.String" RepeatColumns="2" >                                       
                                        <ClientSideEvents SelectedIndexChanged="imageRBL_SelectedIndexChanged"  />
                                        <Items>
                                            <dx:ListEditItem Value="1.jpg" Selected="true" />
                                            <dx:ListEditItem Value="2.jpg" />
                                            <dx:ListEditItem Value="3.jpg" />
                                            <dx:ListEditItem Value="4.jpg" />
                                            <dx:ListEditItem Value="5.jpg" />
                                            <dx:ListEditItem Value="6.jpg" />
                                            <dx:ListEditItem Value="7.jpg" />
                                            <dx:ListEditItem Value="8.jpg" />
                                        </Items>
                                    </dx:ASPxRadioButtonList>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxImage ID="Image1" runat="server" ShowLoadingImage="true"
                                        ImageUrl="~/Images/1.jpg" ClientInstanceName="image">
                                         <Border BorderColor="#d12501" BorderStyle="Solid" BorderWidth="2" />
                                    </dx:ASPxImage>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
                <dx:LayoutGroup ColCount="2" Caption="ASPxTextBox Example">
                    <Items>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxRadioButtonList ID="tbRBL" runat="server" ValueType="System.Int32" RepeatColumns="2">
                                        <ClientSideEvents ValueChanged="tbRBL_ValueChanged" />
                                        <Items>
                                            <dx:ListEditItem Text="Allow Edit" Value="0" Selected="true" />
                                            <dx:ListEditItem Text="Read Only" Value="1" />
                                        </Items>
                                    </dx:ASPxRadioButtonList>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer runat="server">
                                    <dx:ASPxTextBox ID="TextBox1" runat="server" Width="170px"
                                        ClientInstanceName="textBox" Text="Some Text Here...">
                                    </dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
            </Items>
        </dx:ASPxFormLayout>




    </form>
</body>
</html>