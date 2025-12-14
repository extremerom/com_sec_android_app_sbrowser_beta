.class public Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isMultiWindow()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNavigationBarModel()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public updateWindowLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->isMultiWindow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout(Z)V

    return-void
.end method

.method public updateWindowLayout(Z)V
    .locals 7

    const-string p1, "updateWindowLayout"

    const-string v0, "SitesWindowObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->isScaleWindow()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_3

    int-to-float v4, v4

    const v5, 0x3eeac083    # 0.4585f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_3
    int-to-float v4, v4

    const v5, 0x3f1cac08    # 0.612f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->isNavigationBarModel()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v3, "dimen"

    const-string v4, "android"

    const-string v5, "navigation_bar_height"

    invoke-virtual {p0, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v3, p0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const p0, 0x800035

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_5

    const p0, 0x800055

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    :cond_5
    const p0, 0x800003

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->create(Landroid/view/WindowManager$LayoutParams;)Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->samsungFlags()I

    move-result v3

    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->setSamsungFlags(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager$LayoutParams;->getBaseInstance()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "Error while getting SAMSUNG_FLAG_OVERRIDE_SYSTEM_UI_POLICY.get()"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method
