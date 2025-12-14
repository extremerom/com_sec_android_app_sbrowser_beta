.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001a\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "theme",
        "noItemsTextColor",
        "(I)I",
        "",
        "checkableBottomBarVisible",
        "Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;",
        "navigationBarState",
        "(Z)Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;",
        "layout",
        "Ldb/r;",
        "updateBackgroundColor",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V",
        "updateNavigationBarColor",
        "(IZ)V",
        "Landroid/widget/TextView;",
        "textView",
        "updateNoItemsTextColor",
        "(Landroid/widget/TextView;I)V",
        "backgroundColor",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    return-void
.end method

.method private final navigationBarState(Z)Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_QUICKACCESS_EDIT_MODE:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_QUICKACCESS:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_MAIN_VIEW:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    :goto_0
    return-object p0
.end method

.method private final noItemsTextColor(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0608a2

    goto :goto_0

    :cond_0
    const p0, 0x7f0608a0

    goto :goto_0

    :cond_1
    const p0, 0x7f0608a1

    :goto_0
    return p0
.end method


# virtual methods
.method public final backgroundColor(I)I
    .locals 1

    const p0, 0x7f0608c3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0608c4

    goto :goto_0

    :cond_1
    const p0, 0x7f0608c5

    :cond_2
    :goto_0
    return p0
.end method

.method public final updateBackgroundColor(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->backgroundColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final updateNavigationBarColor(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->navigationBarState(Z)Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateNoItemsTextColor(Landroid/widget/TextView;I)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->noItemsTextColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
