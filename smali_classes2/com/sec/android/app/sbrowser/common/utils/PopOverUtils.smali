.class public Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static canSupportPopOver(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13880

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const-string p0, "PopOverUtils"

    const-string v0, "PopOver is supported from oneui 8.0"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x258

    if-lt v0, v3, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method private static getContentSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->getContentSizeByWindowMetrics(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static getContentSizeByWindowMetrics(Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 5

    invoke-static {p0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Lf1/E;->x()I

    move-result v1

    invoke-static {}, Lf1/E;->D()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->h(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v0

    invoke-static {p0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, LT6/a;->h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    :cond_0
    add-int/2addr v3, v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getPopOverDetails(Landroid/content/Context;IIII)Landroid/os/Bundle;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->getSizeArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [Landroid/graphics/Point;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x4

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-eqz v6, :cond_2

    aget-object v10, v0, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x5

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :goto_1
    if-eqz v6, :cond_3

    aget-object v11, v0, v2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    :cond_3
    const/4 v11, 0x6

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :goto_2
    if-eqz v6, :cond_4

    const/4 v6, 0x3

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v6, 0x7

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    aput v8, v3, v9

    aput v8, v3, v7

    aput v10, v4, v9

    aput v10, v4, v7

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v9

    aput-object v6, v5, v7

    new-array v0, v2, [I

    invoke-static/range {p0 .. p4}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->getPosition(Landroid/content/Context;IIII)I

    move-result v2

    aput v2, v0, v9

    aput v2, v0, v7

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    :try_start_0
    invoke-static {v2, v3, v4, v5, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoActivityOptions;->semSetPopOverOptions(Landroid/app/ActivityOptions;[I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPopOverDetails failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "PopOverUtils"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-object v1
.end method

.method private static getPosition(Landroid/content/Context;IIII)I
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_3

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    if-lez p4, :cond_4

    div-int/lit8 v5, p0, 0x3

    if-ge p4, v5, :cond_4

    goto :goto_0

    :cond_4
    if-nez p1, :cond_2

    if-lez p4, :cond_2

    mul-int/2addr p0, v2

    div-int/2addr p0, v1

    if-ge p4, p0, :cond_2

    :goto_1
    const/16 p0, 0x10

    if-ne p2, v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 p1, 0x40

    if-ne p2, v2, :cond_6

    :goto_2
    move p0, p1

    goto :goto_3

    :cond_6
    const/16 p4, 0x20

    if-ne p2, v1, :cond_8

    :cond_7
    move p0, p4

    goto :goto_3

    :cond_8
    if-nez p2, :cond_9

    if-lez p3, :cond_9

    div-int/lit8 v3, v0, 0x3

    if-ge p3, v3, :cond_9

    goto :goto_3

    :cond_9
    if-nez p2, :cond_7

    if-lez p3, :cond_7

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    if-ge p3, v0, :cond_7

    goto :goto_2

    :goto_3
    or-int/2addr p0, v4

    return p0
.end method

.method private static getSizeArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.app.sketchbook"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "popoverToolkitSize"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/PopOverUtils;->getContentSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
