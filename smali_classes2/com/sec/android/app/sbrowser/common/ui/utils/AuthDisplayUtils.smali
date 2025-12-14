.class public Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static exitMultiWindowMode(Landroid/app/Activity;)Z
    .locals 1

    const v0, 0x7f1407b1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->exitMultiWindowMode(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method

.method public static exitMultiWindowMode(Landroid/app/Activity;I)Z
    .locals 4

    const-string v0, "AuthDisplayUtils"

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const v2, 0x7f140ff6

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    const/16 p1, 0x50

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getInDisplayFingerprintSensorBottomMargin()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :try_start_0
    const-string p1, "exitMultiWindowMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoActivity;->semExitMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to make fullscreen caused by: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3
.end method

.method public static getDialogWidthWithAuthentication(Landroid/app/Activity;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getDialogWidthWithAuthentication(Landroid/app/Activity;Z)I

    move-result p0

    return p0
.end method

.method public static getDialogWidthWithAuthentication(Landroid/app/Activity;Z)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getDeviceWidth(Landroid/app/Activity;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getDialogWidthRatio(FI)F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getInDisplayFingerprintSensorBottomMargin()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->getInDisplayFingerprintSensorBottomMargin(Z)I

    move-result v0

    return v0
.end method

.method public static getInDisplayFingerprintSensorBottomMargin(Z)I
    .locals 10

    const-string v0, "AuthDisplayUtils"

    const-string v1, "getInDisplayFingerprintSensorBottomMargin metrics = "

    const-string v2, "getInDisplayFingerprintSensorBottomMargin area:"

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v4, 0x7f0705aa

    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {v3}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->getCharacteristics()Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->getSensorAreaInDisplay()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v7, "window"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0705ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v6, v2, 0x2

    if-le v1, v6, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    add-int/2addr v2, v1

    iget p0, v5, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v2, p0

    sub-int/2addr v2, v8

    add-int/2addr v2, v7

    return v2

    :cond_2
    return v7

    :catch_0
    const-string v1, "getInDisplayFingerprintSensorBottomMargin reflect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p0, :cond_4

    const v4, 0x7f0705ab

    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static resizeAndMoveIfDialogOverlappedWithInDisplayFP(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    const-string v0, "AuthDisplayUtils"

    const-string v1, "resizeAndMoveIfDialogOverlapped metrics = "

    const-string v2, "resizeAndMoveIfDialogOverlapped area:"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->getCharacteristics()Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->getSensorAreaInDisplay()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v1, 0x2

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v3, Landroid/graphics/Rect;->right:I

    sub-int v5, v1, v2

    :goto_1
    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    int-to-float v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    const-string v1, "resizeAndMoveIfDialogOverlapped overlap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v5

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0705ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x51

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0705ac

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    const-string p0, "resizeAndMoveIfDialogOverlapped reflect failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method
