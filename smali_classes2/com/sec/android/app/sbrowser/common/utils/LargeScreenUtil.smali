.class public Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;
    }
.end annotation


# static fields
.field private static sDelegate:Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;

.field private static sMargin:[Landroid/graphics/Point;

.field private static sPreHorizontal:I

.field private static sPreVertical:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Point;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sMargin:[Landroid/graphics/Point;

    return-void
.end method

.method private static getDirection(I)I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    const/16 v1, 0x100

    const/16 v2, 0x20

    const/16 v3, 0x10

    if-eq p0, v1, :cond_e

    const/16 v1, 0x200

    if-eq p0, v1, :cond_d

    const/16 v1, 0x300

    if-eq p0, v1, :cond_b

    const/16 v1, 0x400

    if-eq p0, v1, :cond_9

    const/16 v1, 0x500

    if-eq p0, v1, :cond_8

    const/16 v1, 0x600

    if-eq p0, v1, :cond_6

    const/16 v1, 0x700

    if-eq p0, v1, :cond_4

    const/16 v1, 0x800

    if-eq p0, v1, :cond_3

    const/16 v1, 0x900

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    or-int/lit8 p0, v2, 0x1

    return p0

    :cond_1
    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    or-int/lit8 p0, v2, 0x2

    return p0

    :cond_3
    const/16 p0, 0x42

    return p0

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    or-int/lit8 p0, v2, 0x2

    return p0

    :cond_6
    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    or-int/lit8 p0, v2, 0x4

    return p0

    :cond_8
    const/16 p0, 0x44

    return p0

    :cond_9
    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    move v2, v3

    :goto_1
    or-int/lit8 p0, v2, 0x4

    return p0

    :cond_b
    if-eqz v0, :cond_c

    move v2, v3

    :cond_c
    or-int/lit8 p0, v2, 0x1

    return p0

    :cond_d
    const/16 p0, 0x41

    return p0

    :cond_e
    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    move v2, v3

    :goto_2
    or-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public static getGridAreaDirection(Landroid/content/Context;II)I
    .locals 9

    const/16 v0, 0x200

    const/16 v1, 0x300

    const/16 v2, 0x100

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x500

    const/16 v2, 0x600

    const/16 v3, 0x400

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x800

    const/16 v3, 0x900

    const/16 v4, 0x700

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-gt p1, v1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    mul-int/2addr v1, v6

    if-gt p1, v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v6

    :goto_0
    int-to-double v7, p0

    div-double/2addr v7, v3

    double-to-int p0, v7

    if-gt p2, p0, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    mul-int/2addr p0, v6

    if-gt p2, p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v6

    :goto_1
    const-string p0, "Grid area position: ["

    const-string p2, ", "

    const-string v1, "]"

    invoke-static {v2, p1, p0, p2, v1}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "si__LargeScreenUtil"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p0, v0, v2

    aget p0, p0, p1

    return p0
.end method

.method private static getPosition(Landroid/app/Activity;I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sDelegate:Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    :goto_0
    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;->getPosition(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method public static getShareHeight()I
    .locals 1

    const v0, 0xf4260

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18d

    goto :goto_0

    :cond_0
    const v0, 0xf425c

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x168

    goto :goto_0

    :cond_1
    const v0, 0xf425a

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x23b

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f5

    :goto_0
    return v0
.end method

.method public static setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->semSetAnchor(Landroid/app/Dialog;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed semSetAnchor"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "si__LargeScreenUtil"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method

.method public static setAnchorWithType(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->SEM_ANCHOR_TYPE_TOOLBAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoDialog;->semSetAnchorWithType(Landroid/app/Dialog;Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed setAnchorToolbar"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "si__LargeScreenUtil"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method

.method public static setMenuPositionDelegate(Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sDelegate:Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil$MenuPositionDelegate;

    return-void
.end method

.method public static setPopOverOptions(Landroid/app/Activity;[IZ)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZZ)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static setPopOverOptions(Landroid/app/Activity;[IZZ)Landroid/os/Bundle;
    .locals 17

    const v0, 0xf4259

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "setPopOverOptions"

    const-string v2, "si__LargeScreenUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    const/16 v6, 0x168

    aput v6, v4, v5

    const/4 v7, 0x0

    aput v6, v4, v7

    new-array v6, v3, [I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getShareHeight()I

    move-result v8

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v8, 0x2db

    :goto_0
    aput v8, v6, v5

    aput v8, v6, v7

    new-array v8, v3, [Landroid/graphics/Point;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/16 v9, 0xc

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    const/16 v10, 0x24

    const/16 v11, 0x30

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    move v12, v10

    :goto_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    move v10, v11

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1f

    if-ge v11, v13, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isHideStatusBarEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabletLandscape(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    add-int/lit8 v12, v12, -0x18

    :cond_6
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x21

    if-lt v11, v13, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isHideStatusBarEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v12, v12, -0x18

    add-int/lit8 v10, v10, -0x18

    :cond_7
    if-eqz p3, :cond_8

    sget-object v11, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sMargin:[Landroid/graphics/Point;

    aget-object v13, v11, v5

    if-eqz v13, :cond_8

    move-object v8, v11

    goto :goto_3

    :cond_8
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v9, v12}, Landroid/graphics/Point;-><init>(II)V

    aput-object v11, v8, v7

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v11, v8, v5

    sput-object v8, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sMargin:[Landroid/graphics/Point;

    :goto_3
    new-array v9, v3, [I

    :try_start_0
    sget-object v10, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v10}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v11}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v12}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v13}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v14}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v15, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v15}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_4
    if-ge v7, v3, :cond_d

    aget v16, p1, v7

    and-int/lit8 v3, v16, 0x4

    const/4 v1, 0x4

    if-ne v3, v1, :cond_9

    move v1, v12

    goto :goto_5

    :cond_9
    and-int/lit8 v1, v16, 0x1

    if-ne v1, v5, :cond_a

    move v1, v10

    goto :goto_5

    :cond_a
    move v1, v11

    :goto_5
    and-int/lit8 v3, v16, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_b

    move v3, v15

    goto :goto_6

    :cond_b
    and-int/lit8 v3, v16, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_c

    move v3, v13

    goto :goto_6

    :cond_c
    move v3, v14

    :goto_6
    or-int v5, v1, v3

    aput v5, v9, v7

    sput v1, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreVertical:I

    sput v3, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_d
    invoke-static {v0, v4, v6, v8, v9}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->semSetPopOverOptions(Landroid/app/ActivityOptions;[I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed semSetPopOverOptions"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static setPopOverOptionsShare([I)Landroid/os/Bundle;
    .locals 16

    const v0, 0xf4259

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/16 v5, 0x168

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v5, v3, v6

    new-array v5, v2, [I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getShareHeight()I

    move-result v7

    aput v7, v5, v4

    aput v7, v5, v6

    new-array v7, v2, [I

    :try_start_0
    sget-object v8, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_TOP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v8}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_BOTTOM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v9}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v10, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_VERTICAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v10}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v11}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v12}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->SEM_POP_OVER_ANCHOR_POSITION_HORIZONTAL_CENTER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v13}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_0
    if-ge v6, v2, :cond_5

    aget v14, p0, v6

    and-int/lit8 v15, v14, 0x4

    const/4 v2, 0x4

    if-ne v15, v2, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v14, 0x1

    if-ne v2, v4, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    and-int/lit8 v15, v14, 0x40

    const/16 v4, 0x40

    if-ne v15, v4, :cond_3

    move v4, v13

    goto :goto_2

    :cond_3
    and-int/lit8 v4, v14, 0x10

    const/16 v14, 0x10

    if-ne v4, v14, :cond_4

    move v4, v11

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    or-int/2addr v2, v4

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sMargin:[Landroid/graphics/Point;

    invoke-static {v0, v3, v5, v2, v7}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->semSetPopOverOptions(Landroid/app/ActivityOptions;[I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed semSetPopOverOptions"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "si__LargeScreenUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getPosition(Landroid/app/Activity;I)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZZ)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V
    .locals 4

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getDirection(I)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v3, 0x0

    aput p1, v1, v3

    if-eqz p2, :cond_0

    sget p1, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreVertical:I

    if-eqz p1, :cond_0

    sget p2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/2addr p1, p2

    aput p1, v1, v2

    aput p1, v1, v3

    :cond_0
    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZ)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreVertical:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget v5, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/2addr v2, v5

    aput v2, v1, v4

    aput v2, v1, v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    :goto_0
    or-int/2addr v2, v4

    aput v2, v1, v4

    aput v2, v1, v3

    :goto_1
    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreVertical:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget v5, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/2addr v2, v5

    aput v2, v1, v4

    aput v2, v1, v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    :goto_0
    or-int/2addr v2, v4

    aput v2, v1, v4

    aput v2, v1, v3

    :goto_1
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;ILandroid/content/Intent;I)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getPosition(Landroid/app/Activity;I)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZZ)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V
    .locals 4

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getDirection(I)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v3, 0x0

    aput p1, v1, v3

    if-eqz p2, :cond_0

    sget p1, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreVertical:I

    if-eqz p1, :cond_0

    sget p2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/2addr p1, p2

    aput p1, v1, v2

    aput p1, v1, v3

    :cond_0
    invoke-static {p0, v1, v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZZ)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreVertical:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget v5, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/2addr v2, v5

    aput v2, v1, v4

    aput v2, v1, v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    :goto_0
    or-int/2addr v2, v4

    aput v2, v1, v4

    aput v2, v1, v3

    :goto_1
    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method

.method public static startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/2addr v0, v2

    aput v0, v1, v3

    aput v0, v1, v4

    goto :goto_0

    :cond_0
    sget v0, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->sPreHorizontal:I

    or-int/lit8 v2, v0, 0x2

    aput v2, v1, v4

    or-int/lit8 v0, v0, 0x4

    aput v0, v1, v3

    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptionsShare([I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const v0, 0xf4259

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    :try_start_0
    invoke-static {v0, v1, v1, v1, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->semSetPopOverOptions(Landroid/app/ActivityOptions;[I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static supportOldTabletLayout(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportPopOverOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static supportPopOverOptions()Z
    .locals 1

    const v0, 0xf4259

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
