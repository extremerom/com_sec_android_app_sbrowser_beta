.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;
.implements Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$Companion;,
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0007\u0018\u0000 v2\u00020\u00012\u00020\u0002:\u0002vwB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\r\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\'\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\'\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010&\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\r\u00a2\u0006\u0004\u0008(\u0010\u0011J\u0015\u0010)\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0019\u00a2\u0006\u0004\u0008)\u0010!J\u0015\u0010*\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0019\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\r\u00a2\u0006\u0004\u0008,\u0010\u0011J\r\u0010-\u001a\u00020\r\u00a2\u0006\u0004\u0008-\u0010\u0011J\u000f\u0010/\u001a\u00020.H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u00081\u0010\u0015J\u000f\u00102\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00082\u0010\u0011J\u0017\u00103\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u00083\u00104J\u0011\u00106\u001a\u0004\u0018\u000105H\u0002\u00a2\u0006\u0004\u00086\u00107J\u001f\u00109\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u00089\u0010:J\'\u0010<\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u00132\u0006\u00108\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008<\u0010=J\'\u0010B\u001a\u00020\r2\u0006\u0010>\u001a\u0002052\u000e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010@0?H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u001b\u0010E\u001a\u0004\u0018\u00010@2\u0008\u0010D\u001a\u0004\u0018\u00010@H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010G\u001a\u00020\u00132\u0008\u0010D\u001a\u0004\u0018\u00010@H\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010J\u001a\u00020\r2\u0006\u0010I\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008L\u0010\u0011J\u000f\u0010M\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008M\u0010\u0011J\u001f\u0010P\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010O\u001a\u00020NH\u0002\u00a2\u0006\u0004\u0008P\u0010QJ\u0017\u0010R\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008R\u0010!J\u000f\u0010S\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008S\u0010\u0015J\u0019\u0010T\u001a\u00020\u00132\u0008\u0010>\u001a\u0004\u0018\u000105H\u0002\u00a2\u0006\u0004\u0008T\u0010UJ!\u0010W\u001a\u00020\u00132\u0008\u0010V\u001a\u0004\u0018\u0001052\u0006\u00108\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008W\u0010XR\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010Y\u001a\u0004\u0008Z\u0010[R\u0014\u0010]\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0014\u0010`\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0014\u0010b\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0014\u0010e\u001a\u00020d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010gR\u0016\u0010h\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010j\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010l\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0018\u0010n\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010mR\u001c\u0010o\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008o\u0010k\u0012\u0004\u0008p\u0010\u0011R\u0016\u0010q\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010rR\u0016\u0010s\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010kR\u0016\u0010t\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010kR\u0016\u0010u\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010k\u00a8\u0006x"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;",
        "Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;",
        "listener",
        "<init>",
        "(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;)V",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;",
        "delegate",
        "Ldb/r;",
        "setDelegate",
        "(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;)V",
        "onDestroy",
        "()V",
        "onTouchLockup",
        "",
        "isSwipeViewShowing",
        "()Z",
        "isQuickAccessSwipeViewShowing",
        "",
        "direction",
        "Landroid/view/MotionEvent;",
        "event1",
        "event2",
        "onSwipePrepared",
        "(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V",
        "onSwipeStarted",
        "event",
        "onSwipeEnd",
        "(Landroid/view/MotionEvent;)V",
        "",
        "velocityX",
        "onFlingOccurred",
        "(F)V",
        "scrollTab",
        "(I)V",
        "forceSettleIfNeeded",
        "dispatchTouchEvent",
        "shouldIntercept",
        "(Landroid/view/MotionEvent;)Z",
        "updateLayout",
        "removeSwipeViewImmediately",
        "Landroid/os/CountDownTimer;",
        "createRemovalTimer",
        "()Landroid/os/CountDownTimer;",
        "isSwipeAllowed",
        "sendEventLog",
        "getSwipeDirection",
        "(I)I",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "getCurrentValidTab",
        "()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "isInfiniteScroll",
        "startSwipe",
        "(IZ)V",
        "isFirstSwipeAction",
        "prepareSwipe",
        "(IZZ)Z",
        "tab",
        "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;",
        "Landroid/graphics/Bitmap;",
        "callback",
        "requestBitmap",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V",
        "bitmap",
        "getCopiedBitmap",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;",
        "isValidBitmap",
        "(Landroid/graphics/Bitmap;)Z",
        "pageChanged",
        "stopSwipe",
        "(Z)V",
        "removeSwipeViewWithAnimation",
        "removeSwipeViewAfterRendererShown",
        "",
        "touchedArea",
        "handleMotionEvents",
        "(Landroid/view/MotionEvent;J)V",
        "handleDownEvent",
        "isSwipeStarted",
        "isValidTab",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z",
        "currentTab",
        "prepareTabsForPager",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Z",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;",
        "getListener",
        "()Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;",
        "swipeRecognizer",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;",
        "layoutHandler",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;",
        "removalTimer",
        "Landroid/os/CountDownTimer;",
        "Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;",
        "touchLockupDetector",
        "Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;",
        "isRemovalInProgress",
        "Z",
        "initialMotionX",
        "I",
        "initialTab",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "targetTab",
        "swipeDirection",
        "getSwipeDirection$annotations",
        "swipeStarted",
        "J",
        "lastAction",
        "lastHandledEvent",
        "waitCountForRemoveAction",
        "Companion",
        "ToolbarSwipeListener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

.field private initialMotionX:I

.field private initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isRemovalInProgress:Z

.field private lastAction:I

.field private lastHandledEvent:I

.field private final layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final removalTimer:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private swipeDirection:I

.field private final swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private swipeStarted:J

.field private targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final touchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private waitCountForRemoveAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;
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

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeStarted:J

    const/4 p3, -0x1

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->lastAction:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->lastHandledEvent:I

    const-string p3, "ToolbarSwipeController"

    const-string v0, "Toolbar swipe feature has been initialized."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-direct {p3, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    new-instance p3, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V

    invoke-direct {p3, p1, p2, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->createRemovalTimer()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removalTimer:Landroid/os/CountDownTimer;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->touchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->setListener(Lcom/sec/android/app/sbrowser/common/device/TouchLockupListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->onSwipePrepared$lambda$0(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    return-object p0
.end method

.method public static final synthetic access$removeSwipeViewAfterRendererShown(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewAfterRendererShown()V

    return-void
.end method

.method public static final synthetic access$sendEventLog(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->sendEventLog()V

    return-void
.end method

.method public static final synthetic access$stopSwipe(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->stopSwipe(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewAfterRendererShown$lambda$4(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation$lambda$3(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V

    return-void
.end method

.method private final createRemovalTimer()Landroid/os/CountDownTimer;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$createRemovalTimer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$createRemovalTimer$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->scrollTab$lambda$1(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->requestBitmap$lambda$2(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final getCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ToolbarSwipeController"

    const-string p1, "[createCopiedBitmap] OutOfMemoryError occurred."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private final getCurrentValidTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const-string v1, "delegate"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabs()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p0

    :cond_0
    return-object v2

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private final getSwipeDirection(I)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private final handleDownEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNotSettled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ToolbarSwipeController"

    const-string p1, "handleDownEvent: handler is not settled"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->setHighSensitivity(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->setSwipeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->touchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->setHighSensitivity(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->setSwipeEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

.method private final handleMotionEvents(Landroid/view/MotionEvent;J)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->lastHandledEvent:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->lastHandledEvent:I

    const-string v1, "handleMotionEvents. action: "

    const-string v2, "ToolbarSwipeController"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq v0, p2, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialMotionX:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->handleMoveEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->handleCancelEvent()V

    goto :goto_0

    :cond_3
    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeStarted:J

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->handleDownEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method private final isSwipeAllowed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isSwipeAllowed()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final isSwipeStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipeStarted()Z

    move-result p0

    return p0
.end method

.method private final isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private final isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final onSwipePrepared$lambda$0(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->getCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->updateTabBitmapLazily(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final prepareSwipe(IZZ)Z
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[prepareSwipe] fromTab id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ToolbarSwipeController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[prepareSwipe] fromTab index : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[prepareSwipe] isFirstSwipeAction : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->prepareTabsForPager(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "[prepareSwipe] failed to prepare tabs for pager"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p2, p1, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->prepareSwipe(ILcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0

    :cond_4
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final prepareTabsForPager(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-lez p1, :cond_3

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->setTabsForPager(Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_8
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final removeSwipeViewAfterRendererShown()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReadyToShow()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->waitCountForRemoveAction:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LGa/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LGa/a;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;I)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->waitCountForRemoveAction:I

    if-lt v0, v1, :cond_2

    const-string v1, "[removeSwipeViewAfterRendererShown] remove swipe view : "

    const-string v2, "ToolbarSwipeController"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->waitCountForRemoveAction:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation()V

    :goto_1
    return-void
.end method

.method private static final removeSwipeViewAfterRendererShown$lambda$4(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->waitCountForRemoveAction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->waitCountForRemoveAction:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewAfterRendererShown()V

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->waitCountForRemoveAction:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string p0, "ToolbarSwipeController"

    const-string v0, "[removeSwipeViewAfterRendererShown] It takes too long to remove ToolbarSwipeView."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final removeSwipeViewWithAnimation()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    new-instance v1, LGa/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LGa/a;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->removeSwipeViewWithAnimation(Ljava/lang/Runnable;)V

    const-string v0, "ToolbarSwipeController"

    const-string v1, "[removeSwipeViewWithAnimation]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->touchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    return-void
.end method

.method private static final removeSwipeViewWithAnimation$lambda$3(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;->onSwipeViewRemoved()V

    return-void
.end method

.method private final requestBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p0, :cond_1

    new-instance v0, LGa/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, LGa/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->captureBitmapAsync(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void

    :cond_1
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final requestBitmap$lambda$2(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "ToolbarSwipeController"

    const-string v1, "[requestBitmap] bitmap received"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private static final scrollTab$lambda$1(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->getCopiedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->updateTabBitmapLazily(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final sendEventLog()V
    .locals 9

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeDirection:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isSecretMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "202"

    goto :goto_0

    :cond_1
    const-string v0, "201"

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeDirection:I

    const/4 v2, -0x1

    const-string v3, "Bottom"

    const-string v4, "Top"

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-ne v1, v2, :cond_4

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeStarted:J

    cmp-long p0, v1, v7

    const-string v7, "1050"

    if-eqz p0, :cond_3

    cmp-long p0, v1, v5

    if-nez p0, :cond_2

    move-object v3, v4

    :cond_2
    invoke-static {v0, v7, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v0, v7}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeStarted:J

    cmp-long p0, v1, v7

    const-string v7, "1051"

    if-eqz p0, :cond_6

    cmp-long p0, v1, v5

    if-nez p0, :cond_5

    move-object v3, v4

    :cond_5
    invoke-static {v0, v7, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v0, v7}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final startSwipe(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->prepareSwipe(IZZ)Z

    move-result p1

    const-string p2, "[startSwipe] isPrepared: "

    const-string v0, "ToolbarSwipeController"

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->startSwipe()V

    :cond_0
    return-void
.end method

.method private final stopSwipe(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->needToRemoveSwipeView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->getChangedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const-string p1, "ToolbarSwipeController"

    const-string v0, "[stopSwipe] Current tab changed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removalTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_2
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->lastAction:I

    const-string v2, "ToolbarSwipeController"

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->lastAction:I

    const-string v1, "dispatchTouchEvent. action: "

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->touchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->start()V

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const-string v3, "delegate"

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isKeyboardTurnedOn()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_4
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeAllowed()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNotSettled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->reset()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation()V

    const-string p0, "[dispatchTouchEvent] Trouble happened. The swipe recognizer was reset manually."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v2, :cond_a

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getTouchedArea(Landroid/view/MotionEvent;)J

    move-result-wide v1

    if-nez v0, :cond_9

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->handleMotionEvents(Landroid/view/MotionEvent;J)V

    return-void

    :cond_a
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final forceSettleIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isNotSettled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->forceSettle()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    :cond_1
    return-void

    :cond_2
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isQuickAccessSwipeViewShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSwipeViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result p0

    return p0
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->destroy()V

    return-void
.end method

.method public onFlingOccurred(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    const/4 v1, 0x0

    const-string v2, "delegate"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ToolbarSwipeController"

    const-string v3, "[onFlingOccurred]"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    neg-float v3, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->computeFlingDistance(F)D

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getToolbar()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->fling(FDF)V

    return-void

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onSwipeEnd(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ToolbarSwipeController"

    const-string v0, "[onSwipeEnd]"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->setSwipeEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeRecognizer:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->setHighSensitivity(Z)V

    return-void
.end method

.method public onSwipePrepared(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 3
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event1"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "event2"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, LGa/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, LGa/b;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->requestBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "[onSwipePrepared] direction: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " execution time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    const-string p2, "ToolbarSwipeController"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onSwipeStarted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event1"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "event2"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[onSwipeStarted] direction: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ToolbarSwipeController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialMotionX:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeDirection:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removalTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    invoke-direct {p0, p1, p3, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->prepareSwipe(IZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->beginFakeDrag()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->forceSettle()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->resetDrawableStates()V

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->startSwipe(IZ)V

    :goto_0
    return-void

    :cond_3
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onTouchLockup()V
    .locals 2

    const-string v0, "ToolbarSwipeController"

    const-string v1, "[onTouchLockup]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->forceSettleIfNeeded()V

    return-void
.end method

.method public final removeSwipeViewImmediately()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->targetTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->removeSwipeView()V

    const-string v0, "ToolbarSwipeController"

    const-string v1, "[removeSwipeViewImmediately]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->touchLockupDetector:Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController$ToolbarSwipeListener;->onSwipeViewRemoved()V

    return-void
.end method

.method public final declared-synchronized scrollTab(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;->isValidDirection(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isKeyboardTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->getCurrentValidTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, LGa/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, LGa/b;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->requestBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->initialTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->swipeStarted:J

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->getSwipeDirection(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->startSwipe(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->scrollAndAnimatePage(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->removeSwipeViewWithAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string p1, "delegate"

    invoke-static {p1}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final setDelegate(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->setDelegate(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;)V

    return-void
.end method

.method public final shouldIntercept(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->delegate:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;->isInControlBarArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeStarted()Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isBeingFakeDrag()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isSwipeStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->isRemovalInProgress:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->isSwipeViewShowing()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeController;->layoutHandler:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->updateLayout()V

    return-void
.end method
