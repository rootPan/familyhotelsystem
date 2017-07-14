/**
 *##############################################################################
 *
 *	[ ��Ŀ��      ]  : Family�Ƶ����ϵͳ
 *  [ ��˾��      ]  : ����ְҵ����ѧԺ
 *  [ ������      ]  : ����
 *  [ ������      ]  : ����
 *	----------------------------------------------------------------------------
 *	##--------------------------------------------------------------------------
 *  			 ��Ȩ����(c) 2016,  FamilyHotelManageSystem Corporation
 *	--------------------------------------------------------------------------##
 *
 *##############################################################################
 */
package com.FamilyHotelManageSystem.sunsdk.swing.Theme;

import javax.swing.*;
import javax.swing.plaf.*;
import javax.swing.plaf.metal.*;
import javax.swing.border.*;
import java.awt.*;


public class DesertMetalTheme extends DefaultMetalTheme {

    public String getName() { return "Desert"; }

    private final ColorUIResource primary1 = new ColorUIResource(147, 118, 30);
    private final ColorUIResource primary2 = new ColorUIResource(219, 177, 50);
    private final ColorUIResource primary3 = new ColorUIResource(237, 195, 67);

    private final ColorUIResource secondary1 = new ColorUIResource(170, 121,  53);
    private final ColorUIResource secondary2 = new ColorUIResource(200, 167,  68);
    private final ColorUIResource secondary3 = new ColorUIResource(243, 208, 100);

    protected ColorUIResource getPrimary1() { return primary1; }
    protected ColorUIResource getPrimary2() { return primary2; }
    protected ColorUIResource getPrimary3() { return primary3; }

    protected ColorUIResource getSecondary1() { return secondary1; }
    protected ColorUIResource getSecondary2() { return secondary2; }
    protected ColorUIResource getSecondary3() { return secondary3; }
    
}