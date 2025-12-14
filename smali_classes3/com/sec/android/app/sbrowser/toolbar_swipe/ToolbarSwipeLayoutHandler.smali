.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0007\u0018\u0000 m2\u00020\u0001:\u0001mB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\r\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\r\u0010\u0017\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J\r\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0018\u0010\u0010J\u001d\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ%\u0010$\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u001f\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020\u0012\u00a2\u0006\u0004\u0008&\u0010\u0014J\r\u0010\'\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\'\u0010\u0010J\r\u0010(\u001a\u00020\u000c\u00a2\u0006\u0004\u0008(\u0010\u0010J\u0015\u0010+\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010-\u001a\u00020\u000c\u00a2\u0006\u0004\u0008-\u0010\u0010J\u0015\u0010/\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u001b\u00a2\u0006\u0004\u0008/\u00100J\u001b\u00104\u001a\u00020\u00122\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020201\u00a2\u0006\u0004\u00084\u00105J)\u00108\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u001b2\u0008\u00106\u001a\u0004\u0018\u0001022\u0008\u00107\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00088\u00109J\u001f\u0010=\u001a\u00020\u000c2\u0006\u0010:\u001a\u0002022\u0008\u0010<\u001a\u0004\u0018\u00010;\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\u0012\u00a2\u0006\u0004\u0008A\u0010\u0014J\u0017\u0010C\u001a\u00020B2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u00020EH\u0002\u00a2\u0006\u0004\u0008F\u0010GJ)\u0010L\u001a\u00020\u000c2\u0006\u0010I\u001a\u00020H2\u0008\u0010J\u001a\u0004\u0018\u0001022\u0006\u0010K\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008N\u0010\u0014J\u0019\u0010O\u001a\u00020\u00122\u0008\u0010J\u001a\u0004\u0018\u000102H\u0002\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010R\u001a\u00020Q2\u0006\u0010J\u001a\u000202H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\u0019\u0010U\u001a\u0004\u0018\u00010T2\u0006\u0010J\u001a\u000202H\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u0017\u0010W\u001a\u00020\u001b2\u0006\u0010J\u001a\u000202H\u0002\u00a2\u0006\u0004\u0008W\u0010XJ\u0011\u0010Y\u001a\u0004\u0018\u00010;H\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ\u001b\u0010[\u001a\u0004\u0018\u00010;2\u0008\u0010J\u001a\u0004\u0018\u000102H\u0002\u00a2\u0006\u0004\u0008[\u0010\\J\u0019\u0010]\u001a\u00020\u00122\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010_\u001a\u00020\u00122\u0008\u0010J\u001a\u0004\u0018\u000102H\u0002\u00a2\u0006\u0004\u0008_\u0010PR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010`R\u0014\u0010a\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010cR\u001c\u0010d\u001a\u0008\u0012\u0004\u0012\u000202018\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010f\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010h\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010gR\u0018\u0010i\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u0016\u0010j\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0016\u0010&\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010l\u00a8\u0006n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;",
        "listener",
        "<init>",
        "(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)V",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;",
        "delegate",
        "Ldb/r;",
        "setDelegate",
        "(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;)V",
        "destroy",
        "()V",
        "updateLayout",
        "",
        "isVisible",
        "()Z",
        "isNotSettled",
        "isBeingFakeDrag",
        "beginFakeDrag",
        "handleCancelEvent",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "initialMotionX",
        "handleMoveEvent",
        "(Landroid/view/MotionEvent;I)V",
        "",
        "velocityX",
        "",
        "flingDistance",
        "minDistance",
        "fling",
        "(FDF)V",
        "isSwipeViewShowing",
        "startSwipe",
        "removeSwipeView",
        "Ljava/lang/Runnable;",
        "endAction",
        "removeSwipeViewWithAnimation",
        "(Ljava/lang/Runnable;)V",
        "forceSettle",
        "direction",
        "scrollAndAnimatePage",
        "(I)Z",
        "",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "result",
        "setTabsForPager",
        "(Ljava/util/List;)Z",
        "initialTab",
        "fromTab",
        "prepareSwipe",
        "(ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z",
        "currentTab",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "updateTabBitmapLazily",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V",
        "getChangedTab",
        "()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "needToRemoveSwipeView",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;",
        "createSwipeView",
        "(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;",
        "Landroid/view/ViewGroup$LayoutParams;",
        "createLayoutParam",
        "()Landroid/view/ViewGroup$LayoutParams;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;",
        "tabLayout",
        "tab",
        "isFake",
        "switchToolbar",
        "(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V",
        "isCurrentTabNewQuickAccessPage",
        "isNewQuickAccessPortrait",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z",
        "Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;",
        "createThemeParam",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;",
        "Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;",
        "getTabTheme",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;",
        "getTabGroupTheme",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I",
        "captureWithoutRipple",
        "()Landroid/graphics/Bitmap;",
        "createBitmap",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;",
        "isInvalidBitmap",
        "(Landroid/graphics/Bitmap;)Z",
        "isInvalidTab",
        "Landroid/content/Context;",
        "toolbarSwipeView",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;",
        "tabsForPager",
        "Ljava/util/List;",
        "leftTabLayout",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;",
        "rightTabLayout",
        "currentTabLayout",
        "fromTabIndex",
        "I",
        "Z",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

.field private fromTabIndex:I

.field private volatile isSwipeViewShowing:Z

.field private leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabsForPager:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end field

.field private final toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->createSwipeView(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->createLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final captureWithoutRipple()Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const/4 v2, 0x0

    const-string v3, "delegate"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabBarButtons()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->backupViewStates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->restoreViewStates(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0

    :cond_0
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private final createBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabThumbnail(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isInvalidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1

    :cond_2
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final createLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private final createSwipeView(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    const v1, 0x7f0e08f9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.sec.android.app.sbrowser.toolbar_swipe.ToolbarSwipePageLayout"

    invoke-static {v0, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    const v1, 0x7f0e08f8

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.toolbar_swipe.ToolbarSwipeView"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setListener(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->setPages(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->requestLayout()V

    return-object v0
.end method

.method private final createThemeParam(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;
    .locals 9

    new-instance v8, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const/4 v1, 0x0

    const-string v2, "delegate"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isHighContrastModeEnabled()Z

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isNightModeEnabled()Z

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isSecretMode()Z

    move-result v5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->getTabTheme(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->getTabGroupTheme(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isContentDarkModeEnabled()Z

    move-result p0

    move-object v0, v8

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    move v6, p1

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;-><init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;IZ)V

    return-object v8

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final getTabGroupTheme(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const/4 v2, 0x0

    const-string v3, "delegate"

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isNightModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isHighContrastModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getLightThemeColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getDarkThemeColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    return p0

    :cond_4
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private final getTabTheme(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final isCurrentTabNewQuickAccessPage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final isInvalidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private final isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

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

.method private final switchToolbar(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    move/from16 v11, p3

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[switchToolbar] isFake = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToolbarSwipeLayoutHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const-string v3, "delegate"

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    if-eqz v11, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isCurrentTabNewQuickAccessPage()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isHideStatusBarEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v2

    goto :goto_2

    :cond_1
    :goto_0
    move v2, v5

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getFixedToolbarHeight()I

    move-result v2

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isHideStatusBarEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v5

    :cond_4
    :goto_1
    add-int/2addr v2, v5

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNewQuickAccessPortrait(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->createThemeParam(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v6, :cond_d

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getBottomBar()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v7, :cond_c

    invoke-interface {v7, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabCountInGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v7

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v8, :cond_b

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getOptionMenuBadgeCount()I

    move-result v8

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v9, :cond_a

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isTabBarShowing()Z

    move-result v9

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v12, :cond_9

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isBookmarkBarShowing()Z

    move-result v12

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isTranslationBarShowing()Z

    move-result v13

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v14, v0, 0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v3, v6

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setFakeToolbar(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;IIIIZZZZ)V

    goto/16 :goto_5

    :cond_8
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_9
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_f
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v4

    goto :goto_3

    :cond_10
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isTabBarShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->captureWithoutRipple()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_11
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getBottomBar()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v5, :cond_15

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isNewQuickAccessPortrait()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v5

    goto :goto_4

    :cond_12
    iget-object v5, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v5, :cond_14

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_4
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getBottomBar()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v10, v1, v2, v5, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setBitmapToolbar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    :goto_5
    invoke-virtual {v10, v11}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->switchToolbar(Z)V

    return-void

    :cond_13
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_14
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_15
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_16
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_17
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_18
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_19
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_1a
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final beginFakeDrag()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->beginFakeDrag()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    return-void
.end method

.method public final fling(FDF)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isSettling()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isBeingFakeDrag()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    neg-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isFirstPage()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isLastPage()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v2, v1, :cond_5

    :cond_4
    return-void

    :cond_5
    float-to-double v3, p4

    cmpl-double p4, p2, v3

    const-string v1, "ToolbarSwipeLayoutHandler"

    if-lez p4, :cond_6

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->forceStopScroll()V

    iget-boolean p4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing:Z

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[onFlingOccurred] Page switch request is sent after fling occurred. Velocity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " / Distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " / mIsSwipeViewShowing: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  / direction:  "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / current page: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scrollAndAnimatePage(IF)Z

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[onFlingOccurred] fling distance is too short : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_7
    const-string p0, "tabsForPager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final forceSettle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->forceSettle()V

    return-void
.end method

.method public final getChangedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "tabsForPager"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->fromTabIndex:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    if-eqz p0, :cond_1

    add-int/2addr v3, v0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final handleCancelEvent()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isBeingFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->endFakeDrag()V

    :cond_0
    return-void
.end method

.method public final handleMoveEvent(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isBeingFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->fakeDragBy(F)V

    :cond_0
    return-void
.end method

.method public final isBeingFakeDrag()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isBeingFakeDrag()Z

    move-result p0

    return p0
.end method

.method public final isNotSettled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isSettled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isSwipeViewShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final needToRemoveSwipeView()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string p0, "tabsForPager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final prepareSwipe(ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 23
    .param p2    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    const-string v7, "tabsForPager"

    if-eqz v6, :cond_1b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v9, v12}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setScrollBlock(Z)V

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    if-eqz v9, :cond_1a

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iput v9, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->fromTabIndex:I

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    if-nez v9, :cond_1

    move v13, v11

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    sub-int/2addr v6, v11

    if-ne v9, v6, :cond_2

    move v9, v11

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v12, v13, v9}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setEdgeGlowEnabled(ZZ)V

    const/4 v9, -0x1

    if-eq v1, v9, :cond_5

    if-eq v1, v11, :cond_3

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x0

    goto :goto_5

    :cond_3
    iget v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->fromTabIndex:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    :goto_4
    move v13, v11

    goto :goto_5

    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    goto :goto_3

    :cond_5
    iget v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->fromTabIndex:I

    if-ne v1, v6, :cond_6

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    goto :goto_3

    :goto_5
    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    if-eqz v14, :cond_19

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-ne v1, v15, :cond_7

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v1, :cond_8

    if-nez v12, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_9
    if-ne v3, v2, :cond_a

    move-object v2, v1

    goto :goto_7

    :cond_a
    if-ne v6, v2, :cond_b

    move-object v2, v12

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    iput-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->currentTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->createBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v6}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->createBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object v14

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const-string v16, "delegate"

    if-eqz v15, :cond_18

    invoke-interface {v15, v6}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v15

    const-string v11, "[prepareSwipe] toTab index: "

    const-string v10, "ToolbarSwipeLayoutHandler"

    invoke-static {v15, v11, v10}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    if-eqz v11, :cond_17

    check-cast v11, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    check-cast v8, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v9, :cond_d

    invoke-interface {v9, v8}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v8

    const/4 v9, -0x1

    if-lt v8, v9, :cond_c

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-static/range {v16 .. v16}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v11, :cond_f

    invoke-interface {v11, v9}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-static/range {v16 .. v16}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_10
    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v18, ","

    const/16 v19, 0x0

    const/16 v22, 0x3e

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v22}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[prepareSwipe] mTabsForPager: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[prepareSwipe] fromTabBitmap: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[prepareSwipe] toTabBitmap: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v7, :cond_16

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isNightModeEnabled()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v7, :cond_12

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isHighContrastModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_b

    :cond_12
    invoke-static/range {v16 .. v16}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    :goto_a
    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_b
    invoke-direct {v0, v1, v3, v7}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->switchToolbar(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setDarkBackground(Z)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    if-nez v13, :cond_14

    const/4 v2, 0x1

    invoke-direct {v0, v12, v6, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->switchToolbar(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    :cond_14
    invoke-virtual {v12, v8}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setDarkBackground(Z)V

    invoke-virtual {v12, v14}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-ne v1, v0, :cond_15

    const/4 v0, 0x0

    goto :goto_c

    :cond_15
    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setCurrentPage(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[prepareSwipe] tab preparation time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_16
    invoke-static/range {v16 .. v16}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_17
    const/4 v0, 0x0

    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    invoke-static/range {v16 .. v16}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :goto_d
    return v0

    :cond_19
    const/4 v0, 0x0

    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v0, 0x0

    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v0, 0x0

    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeSwipeView()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->currentTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNotSettled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->forceSettle()V

    :cond_2
    return-void
.end method

.method public final removeSwipeViewWithAnimation(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "endAction"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final scrollAndAnimatePage(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    const v0, 0x46a41000    # 21000.0f

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scrollAndAnimatePage(IF)Z

    move-result p0

    return p0
.end method

.method public final setDelegate(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    return-void
.end method

.method public final setTabsForPager(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->tabsForPager:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final startSwipe()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->toolbarSwipeView:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->beginFakeDrag()V

    return-void
.end method

.method public final updateLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->updateFakeToolbarLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->leftTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->updateFakeBottombarLayout()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->updateFakeToolbarLayout()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->rightTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->updateFakeBottombarLayout()V

    :cond_3
    return-void
.end method

.method public final updateTabBitmapLazily(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "currentTab"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isInvalidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->currentTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->currentTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->currentTabLayout:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipePageLayout;

    :cond_2
    :goto_0
    return-void
.end method
