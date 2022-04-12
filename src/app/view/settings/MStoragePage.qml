import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import CustomComponents


Page
{
    id: root
    background: Rectangle
    {
        anchors.fill: parent
        color: properties.pagesBackground
    }
    
    
    ColumnLayout
    {
        id: layout
        property int outsideMargin: 48
        property int inRectMargin : 40
        
        width: parent.width
        spacing: 0
        
        
        RowLayout
        {
            id: titleRow
            Layout.fillWidth: true
            spacing: 0
            
            
            MTitle
            {
                id: title
                Layout.topMargin: 64
                Layout.leftMargin: layout.outsideMargin
                titleText: "Storage"
                descriptionText: "Your storage"
                titleSize: 25
                descriptionSize: 13.25
            }
            
            Item { Layout.fillWidth: true }
            
            MButton
            {
                id: saveButton
                Layout.preferredWidth: 118
                Layout.preferredHeight: 38
                Layout.rightMargin: layout.outsideMargin
                Layout.alignment: Qt.AlignBottom
                borderWidth: 0
                backgroundColor: properties.colorBasePurple
                textContent: "Upgrade"
                fontSize: 12
                fontBold: true
                fontColor: properties.colorBackground
                imagePath: properties.iconHeartWhite
                imageSize: 18
            }
        }
        
        Rectangle
        {
            id: container
            Layout.fillWidth: true
            Layout.preferredHeight: inContainerLayout.height + 55
            Layout.topMargin: 32
            Layout.leftMargin: layout.outsideMargin
            Layout.rightMargin: layout.outsideMargin
            color: properties.colorBackground
            border.color: properties.colorLightBorder
            radius: 4
            antialiasing: true
            
            
            ColumnLayout
            {
                id: inContainerLayout
                width: parent.width
                spacing: 0

                
                Label
                {
                    id: storageTitle
                    Layout.fillWidth: true
                    Layout.leftMargin: layout.inRectMargin
                    Layout.topMargin: 24
                    text: "Total storage"
                    wrapMode: Text.WordWrap
                    color: properties.colorBaseText
                    font.pointSize: 21
                    font.family: properties.defaultFontFamily
                    font.weight: Font.DemiBold
                }
                
                Label
                {
                    id: maxStorageText
                    Layout.fillWidth: true
                    Layout.leftMargin: layout.inRectMargin + 15
                    Layout.topMargin: 10
                    text: "2GB"
                    wrapMode: Text.WordWrap
                    color: properties.colorBaseText
                    font.pointSize: 42
                    font.family: properties.defaultFontFamily
                    font.bold: true
                }
                
                Label
                {
                    id: approximateBooksText
                    Layout.fillWidth: true
                    Layout.leftMargin: layout.inRectMargin + 40
                    text: "This are approximately <font size=4 bold><b>1000</b></font> books."
                    wrapMode: Text.WordWrap
                    color: properties.colorLightText3
                    font.pointSize: 15
                    textFormat: Text.RichText
                    font.family: properties.defaultFontFamily
                }
                
                Label
                {
                    id: availableStorageTitle
                    Layout.fillWidth: true
                    Layout.leftMargin: layout.inRectMargin
                    Layout.topMargin: 50
                    text: "Available storage"
                    wrapMode: Text.WordWrap
                    color: properties.colorBaseText
                    font.pointSize: 21
                    font.family: properties.defaultFontFamily
                    font.weight: Font.DemiBold
                }
                
                Image
                {
                    Layout.leftMargin: layout.inRectMargin + 15
                    Layout.topMargin: 20
                    source: properties.iconPieChart
                    sourceSize.width: 100
                    fillMode: Image.PreserveAspectFit
                }
                
                Label
                {
                    id: availableStorageText
                    Layout.fillWidth: true
                    Layout.leftMargin: layout.inRectMargin + 20
                    Layout.topMargin: 15
                    text: "You currently have <font size=4 color=" + properties.colorBasePurple + " bold><b>24</b></font> files stored " +
                          "and have <font size=4 color=" + properties.colorBasePurple + " bold><b>1.8GB</b></font> free!"
                    wrapMode: Text.WordWrap
                    color: properties.colorLightText3
                    font.pointSize: 15
                    textFormat: Text.RichText
                    font.family: properties.defaultFontFamily
                }
                
                Label
                {
                    id: upgradeText
                    Layout.fillWidth: true
                    Layout.leftMargin: layout.inRectMargin + 20
                    Layout.topMargin: 50
                    text: "If you want to have more storage space available <font color=" + 
                          properties.colorBasePurple + ">upgrade your tier.</font><br>" +
                          "To know why we offer different tiers <font color=" + properties.colorBasePurple + " bold>click here.</font>"
                    wrapMode: Text.WordWrap
                    color: properties.colorLightText3
                    font.pointSize: 15
                    textFormat: Text.RichText
                    font.family: properties.defaultFontFamily
                }
            }
        }
    }
}