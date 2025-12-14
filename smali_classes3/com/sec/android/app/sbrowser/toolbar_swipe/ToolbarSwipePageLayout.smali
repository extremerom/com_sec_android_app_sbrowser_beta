.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 g2\u00020\u0001:\u0001gB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0015\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u000fJ\u0017\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ1\u0010\"\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f\u00a2\u0006\u0004\u0008\"\u0010#JU\u0010,\u001a\u00020\u00082\u0006\u0010%\u001a\u00020$2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020\u00172\u0006\u0010+\u001a\u00020\u0017\u00a2\u0006\u0004\u0008,\u0010-J\r\u0010.\u001a\u00020\u0008\u00a2\u0006\u0004\u0008.\u0010\nJ\r\u0010/\u001a\u00020\u0008\u00a2\u0006\u0004\u0008/\u0010\nJ\u0017\u00100\u001a\u00020\u00082\u0006\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00080\u00101J\u001f\u00102\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00172\u0006\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00082\u00103J\u001f\u00104\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00172\u0006\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00084\u00103J\u001f\u00105\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00172\u0006\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00085\u00103J\u000f\u00106\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00086\u0010\nJ\u001f\u00109\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00172\u0006\u00108\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00089\u00103J\u0017\u0010;\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008=\u0010\nJ\u0017\u0010>\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008>\u0010<J\u001f\u0010?\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u000f\u0010C\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008C\u0010BJ\u000f\u0010D\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008D\u0010BJ\u000f\u0010E\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010G\u001a\u00020\u00172\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u001f\u0010L\u001a\u00020K2\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010N\u001a\u00020K2\u0006\u0010J\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008P\u0010BJ\u001f\u0010Q\u001a\u00020K2\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008Q\u0010MJ\u000f\u0010R\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008R\u0010BJ\u000f\u0010S\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008S\u0010FJ\u000f\u0010T\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008T\u0010FJ\u000f\u0010U\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008U\u0010FJ\u000f\u0010V\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008V\u0010FJ\u000f\u0010W\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008W\u0010FR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010XR\u0018\u0010Y\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010XR\u0016\u0010[\u001a\u00020Z8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0016\u0010^\u001a\u00020]8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010a\u001a\u00020`8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010d\u001a\u00020c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0016\u0010f\u001a\u00020c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008f\u0010e\u00a8\u0006h"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;",
        "Landroid/widget/RelativeLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Ldb/r;",
        "onFinishInflate",
        "()V",
        "destroy",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "tab",
        "setTab",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V",
        "getTab",
        "()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "setCurrentTab",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "setThumbnailBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "",
        "enabled",
        "setDarkBackground",
        "(Z)V",
        "isFake",
        "switchToolbar",
        "toolbarBitmap",
        "bottombarBitmap",
        "",
        "toolbarHeight",
        "bottombarHeight",
        "setBitmapToolbar",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V",
        "Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;",
        "param",
        "tabSize",
        "badgeCount",
        "isTabBarShowing",
        "isBookmarkBarShowing",
        "isTranslationBarShowing",
        "isGroup",
        "setFakeToolbar",
        "(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;IIIIZZZZ)V",
        "updateFakeToolbarLayout",
        "updateFakeBottombarLayout",
        "setUrlBarText",
        "(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V",
        "setTabBarVisibility",
        "(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V",
        "setBookmarkBarVisibility",
        "setTranslationBarVisibility",
        "setToolbarLayoutPosition",
        "visible",
        "themeParam",
        "setToolbarShadow",
        "size",
        "setTabCount",
        "(I)V",
        "setBackForwardButtonDisabled",
        "setNotificationBadgeVisibility",
        "setFakeToolbarPosition",
        "(II)V",
        "getBottombarBottomPadding",
        "()I",
        "getToolbarTopPadding",
        "getToolbarBottomPadding",
        "isCurrentTabNewQuickAccessPage",
        "()Z",
        "isNewQuickAccessPortrait",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z",
        "fake",
        "height",
        "Landroid/widget/RelativeLayout$LayoutParams;",
        "getThumbnailLayoutParams",
        "(ZI)Landroid/widget/RelativeLayout$LayoutParams;",
        "getToolbarLayoutParams",
        "(I)Landroid/widget/RelativeLayout$LayoutParams;",
        "getToolbarGravity",
        "getBottombarLayoutParams",
        "getBottombarGravity",
        "isBottomShadowVisible",
        "isBottombarShowing",
        "isInvalidTab",
        "isFocusLayoutType",
        "isBasicLayoutType",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "currentTab",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;",
        "tabThumbnail",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;",
        "Lcom/sec/android/app/sbrowser/toolbar/Toolbar;",
        "fakeToolbar",
        "Lcom/sec/android/app/sbrowser/toolbar/Toolbar;",
        "Lcom/sec/android/app/sbrowser/toolbar/Bottombar;",
        "fakeBottombar",
        "Lcom/sec/android/app/sbrowser/toolbar/Bottombar;",
        "Landroid/widget/ImageView;",
        "bitmapToolbar",
        "Landroid/widget/ImageView;",
        "bitmapBottombar",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bitmapBottombar:Landroid/widget/ImageView;

.field private bitmapToolbar:Landroid/widget/ImageView;

.field private currentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

.field private fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

.field private tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getBottombarBottomPadding()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isCurrentTabNewQuickAccessPage()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getBottombarGravity()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isFocusLayoutType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const/16 p0, 0x30

    :goto_0
    return p0
.end method

.method private final getBottombarLayoutParams(ZI)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isFocusLayoutType()Z

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f0b04fc

    goto :goto_0

    :cond_0
    const p0, 0x7f0b0160

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBasicLayoutType()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0b0d5a

    invoke-virtual {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final getThumbnailLayoutParams(ZI)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isFocusLayoutType()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBasicLayoutType()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const p0, 0x7f0b04fc

    goto :goto_0

    :cond_1
    const p0, 0x7f0b0160

    :goto_0
    const/4 p1, 0x3

    invoke-virtual {v0, p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final getToolbarBottomPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isCurrentTabNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getToolbarGravity()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isFocusLayoutType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const/16 p0, 0x30

    :goto_0
    return p0
.end method

.method private final getToolbarLayoutParams(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isFocusLayoutType()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x3

    const p1, 0x7f0b0d5a

    invoke-virtual {v0, p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBasicLayoutType()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final getToolbarTopPadding()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isCurrentTabNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isHideStatusBarEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isBasicLayoutType()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final isBottomShadowVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isFocusLayoutType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->shouldShowBottomBarShadow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isBottombarShowing()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final isCurrentTabNewQuickAccessPage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->currentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method private final isFocusLayoutType()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final isInvalidTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method private final setBackForwardButtonDisabled()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    const-string v3, "fakeBottombar"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setBackwardButtonEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setForwardButtonEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const-string v3, "fakeToolbar"

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setBackwardButtonEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setForwardButtonEnabled(Z)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private final setBookmarkBarVisibility(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setFakeToolbar] isBookmarkBarShowing = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolbarSwipePageLayout"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "fakeToolbar"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v4, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateBookmarkBarVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyVisibilityChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final setFakeToolbarPosition(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const-string v2, "fakeToolbar"

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getToolbarLayoutParams(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getToolbarGravity()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getToolbarTopPadding()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getToolbarBottomPadding()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "fakeBottombar"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p1, :cond_5

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getBottombarLayoutParams(ZI)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getBottombarGravity()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getBottombarBottomPadding()I

    move-result p2

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    if-eqz p1, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getThumbnailLayoutParams(ZI)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    const-string p0, "tabThumbnail"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3
.end method

.method private final setNotificationBadgeVisibility(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateOptionMenuBadgeVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p0, "fakeBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateOptionMenuBadgeVisibility(I)V

    :goto_0
    return-void

    :cond_2
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setTabBarVisibility(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setFakeToolbar] isTabBarShowing = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolbarSwipePageLayout"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "fakeToolbar"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v4, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTabBarVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->setNewTabButtonVisible(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    return-void

    :cond_9
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final setTabCount(I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v0

    const v1, 0x7f0b0d18

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const-string p0, "fakeBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private final setToolbarLayoutPosition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarLayoutPosition()V

    return-void

    :cond_0
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setToolbarShadow(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    const-string v2, "fakeToolbar"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarShadowColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->showShadowIfNeeded()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->hideShadow()V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setTranslationBarVisibility(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[setFakeToolbar] isTranslationBarShowing = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ToolbarSwipePageLayout"

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const-string v0, "fakeToolbar"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTransBarVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->notifyVisibilityChanged()V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method private final setUrlBarText(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    const-string v2, "fakeToolbar"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setText(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateTextFieldBackgroundVisibility()V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->clearBottombarButtons()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->clearToolbarButtons()V

    return-void

    :cond_0
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "fakeBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "tabThumbnail"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0d5a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    const v0, 0x7f0b0160

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapToolbar:Landroid/widget/ImageView;

    const v0, 0x7f0b015f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapBottombar:Landroid/widget/ImageView;

    const v0, 0x7f0b04fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const v0, 0x7f0b04fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->initialize(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V

    return-void

    :cond_0
    const-string p0, "fakeBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setBitmapToolbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isInvalidTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    const-string v1, "[setBitmapToolbar] for tab : "

    const-string v2, "ToolbarSwipePageLayout"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapToolbar:Landroid/widget/ImageView;

    const-string v1, "bitmapToolbar"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getToolbarLayoutParams(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapToolbar:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapToolbar:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapBottombar:Landroid/widget/ImageView;

    const-string v0, "bitmapBottombar"

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, p4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getBottombarLayoutParams(ZI)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapBottombar:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapBottombar:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p4, v3

    :goto_2
    sub-int/2addr p1, p4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isCurrentTabNewQuickAccessPage()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p2

    goto :goto_3

    :cond_4
    move p2, v3

    :goto_3
    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    if-eqz p2, :cond_5

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getThumbnailLayoutParams(ZI)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    const-string p0, "tabThumbnail"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->currentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isCurrentTabNewQuickAccessPage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public final setDarkBackground(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;->setDarkBackground(Z)V

    return-void

    :cond_0
    const-string p0, "tabThumbnail"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setFakeToolbar(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;IIIIZZZZ)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "param"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isInvalidTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setFakeToolbar] for tab "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolbarSwipePageLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[setFakeToolbar] toolbarHeight : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / bottombarHeight : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / tabSize : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / badgeCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / isGroup : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->updateFakeToolbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->updateFakeBottombarLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p9}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottomShadowVisible()Z

    move-result v1

    invoke-virtual {v0, p1, v1, p9}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;ZZ)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setUrlBarText(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-direct {p0, p6, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setTabBarVisibility(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-direct {p0, p7, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setBookmarkBarVisibility(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-direct {p0, p8, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setTranslationBarVisibility(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setToolbarLayoutPosition()V

    iget-object p8, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p8}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->shouldShowToolbarShadow()Z

    move-result p8

    const/4 p9, 0x0

    if-nez p8, :cond_2

    if-nez p6, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    move p6, p9

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p6, 0x1

    :goto_1
    invoke-direct {p0, p6, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setToolbarShadow(ZLcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setTabCount(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setBackForwardButtonDisabled()V

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setNotificationBadgeVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p3, p9

    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setFakeToolbarPosition(II)V

    return-void

    :cond_4
    const-string p0, "fakeBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public final setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->tabThumbnail:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const-string p0, "tabThumbnail"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final switchToolbar(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isInvalidTab()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapToolbar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->bitmapBottombar:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setVisibilitySuper(I)V

    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledRecursive(Landroid/view/View;Z)V

    return-void

    :cond_6
    const-string p0, "fakeBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p0, "bitmapBottombar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p0, "fakeToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string p0, "bitmapToolbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateFakeBottombarLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    const/4 v1, 0x0

    const-string v2, "fakeBottombar"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->isBottombarShowing()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeBottombar:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->changeMode()V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateFakeToolbarLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    const/4 v1, 0x0

    const-string v2, "fakeToolbar"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateToolbarButtons()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->updateCutOutMarginsVisibility()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->fakeToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->changeMode()V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method
