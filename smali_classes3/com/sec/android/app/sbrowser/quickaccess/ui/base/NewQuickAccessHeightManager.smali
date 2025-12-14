.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u0013\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "visibleToolBarHeight",
        "",
        "topEmptySpaceHeight",
        "bottomEmptySpaceHeight",
        "isEditMode",
        "",
        "isCheckableBottomBarVisible",
        "topUrlEmptySpaceHeight",
        "bottomBarHeight",
        "checkableTopBarHeight",
        "checkableBottomBarHeight",
        "scrollableControlBarHeight",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bottomBarHeight()I
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public bottomEmptySpaceHeight(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070149

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p1

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->bottomBarHeight()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070cf8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public checkableBottomBarHeight(Z)I
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->checkableBottomBarHeight(Z)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    add-int/2addr p1, p0

    return p1
.end method

.method public checkableTopBarHeight()I
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->checkableTopBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public scrollableControlBarHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->scrollableControlBarHeight()I

    move-result p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->scrollableControlBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    :goto_0
    add-int/2addr p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->bottomBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->visibleToolBarHeight()I

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public topEmptySpaceHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->tabBarHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bookmarkBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public topUrlEmptySpaceHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070dbc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public visibleToolBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    add-int/2addr p0, v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result p0

    :goto_1
    return p0
.end method
