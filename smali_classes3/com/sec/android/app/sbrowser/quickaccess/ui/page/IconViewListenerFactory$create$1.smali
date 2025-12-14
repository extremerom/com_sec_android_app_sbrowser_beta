.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;->create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\t\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "",
        "url",
        "",
        "transitionType",
        "Ldb/r;",
        "onItemSelected",
        "(Ljava/lang/String;I)V",
        "onOpenInNewTabRequested",
        "(Ljava/lang/String;)V",
        "onOpenInNewWindowRequested",
        "position",
        "onScrollRequestedWithPosition",
        "(I)V",
        "dy",
        "onScrollRequestedWithDy",
        "heightToScroll",
        "onCheckedItemScrollRequested",
        "getScrollViewVisibleTop",
        "()I",
        "getCheckedItemCount",
        "getScrollViewVisibleBottom",
        "getVisibleBottomBarHeight",
        "getVisibleToolbarHeight",
        "onScrollStopped",
        "()V",
        "Landroid/view/View;",
        "dummyUrlBar",
        "onUrlEditRequested",
        "(Landroid/view/View;)V",
        "hideGoToTopButtonForLongClickEvent",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

.field final synthetic $mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

.field final synthetic $recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->onCheckedItemScrollRequested$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->hideGoToTopButtonForLongClickEvent$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)V

    return-void
.end method

.method private static final hideGoToTopButtonForLongClickEvent$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)V
    .locals 2

    const-string v0, "IconViewListener"

    const-string v1, "hideGoToTopButtonForClickEvent enable if needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    return-void
.end method

.method private static final onCheckedItemScrollRequested$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScrollViewVisibleBottom()I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getScrollViewVisibleTop()I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public getVisibleBottomBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getVisibleToolbarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result p0

    return p0
.end method

.method public hideGoToTopButtonForLongClickEvent()V
    .locals 4

    const-string v0, "IconViewListener"

    const-string v1, "hideGoToTopButtonForClickEvent disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCheckedItemScrollRequested(I)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/d;-><init>(IILjava/lang/Object;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onItemSelected(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->getDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->loadUrl(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onOpenInNewTabRequested(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->getDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->loadUrlInNewTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpenInNewWindowRequested(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$context:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollRequestedWithDy(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

.method public onScrollRequestedWithPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onScrollStopped()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isToolBarFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->scrollableControlBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->getLastTranslatedToolbarY()F

    move-result v1

    float-to-double v1, v1

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->translationMainToolbarY(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->isHeaderCompletelyVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->translationMainToolbarY(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->isHeaderCompletelyVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->isScrollBottomReached()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->translationMainToolbarY(IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->isScrollTopReached()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->translationMainToolbarY(IZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$recyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;->isHoverScrolling()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->scrollToHeader()V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->setToolbarHiddenWhileScrolling(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onUrlEditRequested(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->$helper:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;->getDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->requestUrlEditMode(Landroid/view/View;)V

    :cond_0
    return-void
.end method
