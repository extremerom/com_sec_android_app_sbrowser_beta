.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler$DragGestureListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0001KB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u001d\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010!\u001a\u0004\u0008\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\'R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010(R\u0014\u0010)\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010+\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010*R\"\u0010-\u001a\u00020,8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\"\u00103\u001a\u00020,8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00100\"\u0004\u00085\u00102R\"\u00106\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010.\u001a\u0004\u00087\u00100\"\u0004\u00088\u00102R\"\u00109\u001a\u00020,8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010.\u001a\u0004\u0008:\u00100\"\u0004\u0008;\u00102R\"\u0010<\u001a\u00020,8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010.\u001a\u0004\u0008=\u00100\"\u0004\u0008>\u00102R\"\u0010?\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008?\u0010A\"\u0004\u0008B\u0010CR\"\u0010D\u001a\u00020\u00148\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010@\u001a\u0004\u0008D\u0010A\"\u0004\u0008E\u0010CR\u001a\u0010G\u001a\u00020F8\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\u00a8\u0006L"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/view/View;",
        "contentView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "aiViewController",
        "<init>",
        "(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "Ldb/r;",
        "initializeTouchPositionValue",
        "(Landroid/view/MotionEvent;)V",
        "onTouchDownWindowHandler",
        "onTouchMoveWindowHandler",
        "onTouchUpWindowHandler",
        "onTouchCancelWindowHandler",
        "()V",
        "",
        "onTouch",
        "(Landroid/view/MotionEvent;)Z",
        "initValues",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "splitViewManager",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;",
        "aiViewAnimator",
        "setSubModules",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;)V",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "getAiViewController",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "Lf1/j;",
        "mDragGestureDetector",
        "Lf1/j;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "mPopupViewLayout",
        "Landroid/view/View;",
        "mPopupMenuContainer",
        "",
        "popupViewLayoutInitialY",
        "F",
        "getPopupViewLayoutInitialY",
        "()F",
        "setPopupViewLayoutInitialY",
        "(F)V",
        "popupMenuContainerInitialY",
        "getPopupMenuContainerInitialY",
        "setPopupMenuContainerInitialY",
        "mInitialRawYForScroll",
        "getMInitialRawYForScroll",
        "setMInitialRawYForScroll",
        "initialRawY",
        "getInitialRawY",
        "setInitialRawY",
        "initialRawX",
        "getInitialRawX",
        "setInitialRawX",
        "isWindowHandlerDragEnabled",
        "Z",
        "()Z",
        "setWindowHandlerDragEnabled",
        "(Z)V",
        "isMinimized",
        "setMinimized",
        "Landroid/view/View$OnTouchListener;",
        "windowHandlerTouchListener",
        "Landroid/view/View$OnTouchListener;",
        "getWindowHandlerTouchListener",
        "()Landroid/view/View$OnTouchListener;",
        "DragGestureListener",
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
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

.field private final aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initialRawX:F

.field private initialRawY:F

.field private isMinimized:Z

.field private isWindowHandlerDragEnabled:Z

.field private final mDragGestureDetector:Lf1/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mInitialRawYForScroll:F

.field private final mPopupMenuContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mPopupViewLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private popupMenuContainerInitialY:F

.field private popupViewLayoutInitialY:F

.field private splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

.field private final windowHandlerTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiViewController"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    new-instance p3, Lf1/j;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler$DragGestureListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler$DragGestureListener;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;)V

    invoke-direct {p3, p1, v0}, Lf1/j;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mDragGestureDetector:Lf1/j;

    const p1, 0x7f0b00bd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(...)"

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mPopupViewLayout:Landroid/view/View;

    const p1, 0x7f0b0c09

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mPopupMenuContainer:Landroid/view/View;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/j;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/j;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->windowHandlerTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->windowHandlerTouchListener$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAiViewAnimator$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    return-object p0
.end method

.method private final initializeTouchPositionValue(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setPopupViewLayoutInitialY(F)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setPopupMenuContainerInitialY(F)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setInitialRawY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->initializeTouchPositionValue()V

    :cond_1
    return-void

    :cond_2
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final onTouchCancelWindowHandler()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getInitialRawY()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->performActionUpAndCancelForSplitView()V

    return-void

    :cond_1
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final onTouchDownWindowHandler(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mPopupViewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setPopupViewLayoutInitialY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mPopupMenuContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setPopupMenuContainerInitialY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->updateSplitViewContainerInitialY()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setInitialRawY(F)V

    return-void

    :cond_0
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final onTouchMoveWindowHandler(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getInitialRawY()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getInitialRawY()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->onTouchMoveWindowHandler(F)V

    return-void

    :cond_1
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final onTouchUpWindowHandler(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getInitialRawY()F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->performActionUpAndCancelForSplitView()V

    return-void

    :cond_1
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final windowHandlerTouchListener$lambda$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public getInitialRawX()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->initialRawX:F

    return p0
.end method

.method public getInitialRawY()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->initialRawY:F

    return p0
.end method

.method public final getMInitialRawYForScroll()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mInitialRawYForScroll:F

    return p0
.end method

.method public getWindowHandlerTouchListener()Landroid/view/View$OnTouchListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->windowHandlerTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public final initValues()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setWindowHandlerDragEnabled(Z)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setInitialRawY(F)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setInitialRawX(F)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mInitialRawYForScroll:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setPopupViewLayoutInitialY(F)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setPopupMenuContainerInitialY(F)V

    return-void
.end method

.method public isMinimized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isMinimized:Z

    return p0
.end method

.method public isWindowHandlerDragEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isWindowHandlerDragEnabled:Z

    return p0
.end method

.method public final onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isWindowHandlerDragEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->isBodyContainerTransitionOngoing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->isDragRestoreAnimationOngoing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mDragGestureDetector:Lf1/j;

    iget-object v0, v0, Lf1/j;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;->setOnTouchInvokedKeyboardHide(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return v1

    :cond_1
    const-string p0, "splitViewManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->onTouchCancelWindowHandler()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->onTouchMoveWindowHandler(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->onTouchUpWindowHandler(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->onTouchDownWindowHandler(Landroid/view/MotionEvent;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->initializeTouchPositionValue(Landroid/view/MotionEvent;)V

    return v1

    :cond_7
    const-string p0, "aiViewAnimator"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_1
    return v1
.end method

.method public setInitialRawX(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->initialRawX:F

    return-void
.end method

.method public setInitialRawY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->initialRawY:F

    return-void
.end method

.method public final setMInitialRawYForScroll(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->mInitialRawYForScroll:F

    return-void
.end method

.method public setMinimized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isMinimized:Z

    return-void
.end method

.method public setPopupMenuContainerInitialY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->popupMenuContainerInitialY:F

    return-void
.end method

.method public setPopupViewLayoutInitialY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->popupViewLayoutInitialY:F

    return-void
.end method

.method public final setSubModules(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "splitViewManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiViewAnimator"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->splitViewManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    return-void
.end method

.method public setWindowHandlerDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->isWindowHandlerDragEnabled:Z

    return-void
.end method
