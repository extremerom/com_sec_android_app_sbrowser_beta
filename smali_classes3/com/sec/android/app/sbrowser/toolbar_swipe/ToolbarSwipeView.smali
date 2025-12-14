.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;
.super Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;,
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;,
        Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 \u0085\u00012\u00020\u0001:\u0006\u0085\u0001\u0086\u0001\u0087\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J7\u0010)\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008+\u0010\u001aJ\u0017\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\r\u00100\u001a\u00020\r\u00a2\u0006\u0004\u00080\u00101J\u0015\u00103\u001a\u00020\n2\u0006\u00102\u001a\u00020\r\u00a2\u0006\u0004\u00083\u0010\u001dJ\r\u00104\u001a\u00020\u0010\u00a2\u0006\u0004\u00084\u00105J\r\u00106\u001a\u00020\u0010\u00a2\u0006\u0004\u00086\u00105J\u001d\u00109\u001a\u00020\u00102\u0006\u00107\u001a\u00020\r2\u0006\u00108\u001a\u00020,\u00a2\u0006\u0004\u00089\u0010:J\u001d\u0010;\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0010\u00a2\u0006\u0004\u0008;\u0010<J\r\u0010=\u001a\u00020\n\u00a2\u0006\u0004\u0008=\u0010\u001aJ\r\u0010>\u001a\u00020\u0010\u00a2\u0006\u0004\u0008>\u00105J\r\u0010?\u001a\u00020\u0010\u00a2\u0006\u0004\u0008?\u00105J\r\u0010@\u001a\u00020\u0010\u00a2\u0006\u0004\u0008@\u00105J\r\u0010A\u001a\u00020\n\u00a2\u0006\u0004\u0008A\u0010\u001aJ\u0015\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u00020\u0010\u00a2\u0006\u0004\u0008C\u0010DJ\r\u0010E\u001a\u00020\n\u00a2\u0006\u0004\u0008E\u0010\u001aJ\u000f\u0010G\u001a\u00020FH\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010I\u001a\u00020\n2\u0006\u00102\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008I\u0010\u001dJ\u0017\u0010J\u001a\u00020\n2\u0006\u00102\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008J\u0010\u001dJ\u000f\u0010K\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008K\u00105J\u000f\u0010L\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008L\u0010\u001aJ\u001f\u0010N\u001a\u00020\n2\u0006\u00102\u001a\u00020\r2\u0006\u0010M\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008N\u0010OJ\u000f\u0010P\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008P\u0010\u001aJ\u000f\u0010Q\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008Q\u00101J\u001f\u0010T\u001a\u00020\u00102\u0006\u0010R\u001a\u00020F2\u0006\u0010S\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008T\u0010UJ\u001f\u0010X\u001a\u00020\n2\u0006\u0010V\u001a\u00020\r2\u0006\u0010W\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008X\u0010YJ\u0017\u0010[\u001a\u00020\n2\u0006\u0010Z\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008[\u0010\u001dJ\u000f\u0010\\\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\\\u00105J\u001f\u0010`\u001a\u00020\n2\u0006\u0010^\u001a\u00020]2\u0006\u0010_\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008`\u0010aJ\u0017\u0010c\u001a\u00020\u00102\u0006\u0010b\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008c\u0010dJ\u0017\u0010e\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008e\u0010\u0018J\u0017\u0010f\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008f\u0010\u0018J\u0017\u0010g\u001a\u00020\u00102\u0006\u00102\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008g\u0010dR\u0014\u0010i\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0014\u0010l\u001a\u00020k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0018\u0010o\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0018\u0010q\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010pR\u0016\u0010r\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0016\u0010t\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010sR\u0016\u0010u\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010sR\u0016\u0010w\u001a\u00020v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0014\u0010y\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010{\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010zR\u0016\u0010|\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010zR\u0016\u0010}\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010zR\u0016\u0010~\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010sR\u0016\u0010\u007f\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010sR\u0019\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\t\u0010\u0080\u0001R\u001f\u0010\u0081\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000e\n\u0005\u0008\u0081\u0001\u0010z\u0012\u0005\u0008\u0082\u0001\u0010\u001aR\u0019\u0010\u0083\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;",
        "listener",
        "Ldb/r;",
        "setListener",
        "(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)V",
        "",
        "scrollX",
        "scrollY",
        "",
        "clampedX",
        "clampedY",
        "onOverScrolled",
        "(IIZZ)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "computeScroll",
        "()V",
        "mode",
        "setOverScrollMode",
        "(I)V",
        "Landroid/view/MotionEvent;",
        "event",
        "pointerIndex",
        "Landroid/view/PointerIcon;",
        "onResolvePointerIcon",
        "(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "beginFakeDrag",
        "",
        "deltaX",
        "fakeDragBy",
        "(F)V",
        "getCurrentItemIndex",
        "()I",
        "pageNum",
        "setCurrentPage",
        "isFirstPage",
        "()Z",
        "isLastPage",
        "direction",
        "absVelocity",
        "scrollAndAnimatePage",
        "(IF)Z",
        "setEdgeGlowEnabled",
        "(ZZ)V",
        "endFakeDrag",
        "isSettled",
        "isSettling",
        "isBeingFakeDrag",
        "forceStopScroll",
        "enabled",
        "setScrollBlock",
        "(Z)V",
        "forceSettle",
        "Landroid/view/View;",
        "getCurrentPage",
        "()Landroid/view/View;",
        "setCurrentPageValue",
        "scrollToPage",
        "isAbnormalCase",
        "settlePageIfNeeded",
        "fireEvent",
        "setTargetPageNum",
        "(IZ)V",
        "invalidateParentIfNeeded",
        "getScrollRange",
        "descendant",
        "delta",
        "isWithinDeltaOfScreen",
        "(Landroid/view/View;I)Z",
        "dx",
        "dy",
        "smoothScrollBy",
        "(II)V",
        "x",
        "smoothScrollTo",
        "notifyIfSettled",
        "Landroid/graphics/RectF;",
        "rect",
        "pageNumber",
        "getVisibleRect",
        "(Landroid/graphics/RectF;I)V",
        "range",
        "isOverScrollAvailable",
        "(I)Z",
        "drawEdgeGlowLeft",
        "drawEdgeGlowRight",
        "isValidPage",
        "Landroid/view/animation/Interpolator;",
        "interpolator",
        "Landroid/view/animation/Interpolator;",
        "Landroid/widget/OverScroller;",
        "scroller",
        "Landroid/widget/OverScroller;",
        "Landroid/widget/EdgeEffect;",
        "edgeGlowLeft",
        "Landroid/widget/EdgeEffect;",
        "edgeGlowRight",
        "isEdgeGlowLeftEnabled",
        "Z",
        "isEdgeGlowRightEnabled",
        "isScrollBlocked",
        "",
        "lastScrollTimeMillis",
        "J",
        "overFlingDistance",
        "I",
        "currentItem",
        "settleDestinationX",
        "targetPageNum",
        "isPageChanged",
        "isStopScrollRequested",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;",
        "state",
        "getState$annotations",
        "lastAbsVelocity",
        "F",
        "Companion",
        "State",
        "Listener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentItem:I

.field private edgeGlowLeft:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private edgeGlowRight:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final interpolator:Landroid/view/animation/Interpolator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isEdgeGlowLeftEnabled:Z

.field private isEdgeGlowRightEnabled:Z

.field private isPageChanged:Z

.field private isScrollBlocked:Z

.field private isStopScrollRequested:Z

.field private lastAbsVelocity:F

.field private lastScrollTimeMillis:J

.field private listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final overFlingDistance:I

.field private final scroller:Landroid/widget/OverScroller;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settleDestinationX:I

.field private state:I

.field private targetPageNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3f0f5c29    # 0.56f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowLeftEnabled:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowRightEnabled:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->overFlingDistance:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    const-string p0, "ToolbarSwipeView"

    const-string p1, "ToolbarSwipeView has been initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->smoothScrollBy$lambda$0(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;IIII)V

    return-void
.end method

.method private final drawEdgeGlowLeft(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v4, v2

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method private final drawEdgeGlowRight(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getScrollRange()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method private final getCurrentPage()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final getScrollRange()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private static synthetic getState$annotations()V
    .locals 0

    return-void
.end method

.method private final getVisibleRect(Landroid/graphics/RectF;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPageMargin()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    if-eqz v1, :cond_2

    sub-int/2addr p2, p0

    :cond_2
    int-to-float p0, p2

    iput p0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    return-void
.end method

.method private final invalidateParentIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private final isAbnormalCase()Z
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPageMargin()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setTargetPageNum(IZ)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->scrollTo(II)V

    return v3

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "second"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setTargetPageNum(IZ)V

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->smoothScrollTo(I)V

    return v3

    :cond_3
    return v2
.end method

.method private final isOverScrollAvailable(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final isValidPage(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private final isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, p2

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final notifyIfSettled()Z
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->targetPageNum:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setCurrentPageValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isPageChanged:Z

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;->onSettled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isPageChanged:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[notifyIfSettled] page: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", page changed: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ToolbarSwipeView"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const-string v0, "[notifyIfSettled] set mState: "

    invoke-static {v2, v0, v4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isStopScrollRequested:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isPageChanged:Z

    return v3

    :cond_2
    :goto_0
    return v2
.end method

.method private final scrollToPage(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isValidPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setTargetPageNum(IZ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->lastScrollTimeMillis:J

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->smoothScrollTo(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private final setCurrentPageValue(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v0

    const-string v1, "[setCurrentPageValue] Page is changed. / Old page: "

    const-string v2, " / New page: "

    const-string v3, "ToolbarSwipeView"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isPageChanged:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->currentItem:I

    return-void
.end method

.method private final setTargetPageNum(IZ)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->targetPageNum:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->targetPageNum:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result p0

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;->onTargetPageDefined(IZ)V

    :cond_1
    return-void
.end method

.method private final settlePageIfNeeded()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isAbnormalCase()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v4

    if-nez v4, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    if-nez v4, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getVisibleRect(Landroid/graphics/RectF;I)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v7

    const/high16 v7, 0x3e800000    # 0.25f

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_3
    if-lez v3, :cond_6

    move v4, v6

    :cond_6
    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->notifyIfSettled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setTargetPageNum(IZ)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->smoothScrollTo(I)V

    goto :goto_4

    :cond_7
    const-string v3, "ToolbarSwipeView"

    const-string v5, "Hmmmm. Something went wrong. Please check."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setTargetPageNum(IZ)V

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->notifyIfSettled()Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->lastAbsVelocity:F

    :cond_8
    :goto_5
    return-void
.end method

.method private final smoothScrollBy(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->lastScrollTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v5, p1, v3

    iget p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->lastAbsVelocity:F

    const p2, 0x46a41000    # 21000.0f

    div-float/2addr p1, p2

    const p2, 0x3e99999a    # 0.3f

    cmpg-float p2, p1, p2

    const/16 v0, 0xfa

    if-gez p2, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    const p2, 0x3f19999a    # 0.6f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    int-to-float p2, v0

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    mul-float/2addr v0, p2

    float-to-int p1, v0

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x32

    goto :goto_0

    :goto_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, LGa/e;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LGa/e;-><init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;IIII)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_4
    const-string v0, "ToolbarSwipeView"

    const-string v1, "[smoothScrollBy] non-smooth scroll due to ANIMATED_SCROLL_GAP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->lastScrollTimeMillis:J

    return-void
.end method

.method private static final smoothScrollBy$lambda$0(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private final smoothScrollTo(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr p1, v0

    neg-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->smoothScrollBy(II)V

    return-void
.end method


# virtual methods
.method public beginFakeDrag()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const-string v1, "[beginFakeDrag] mState: "

    const-string v2, "ToolbarSwipeView"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const-string v0, "[beginFakeDrag] set mState: "

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->beginFakeDrag()V

    return-void
.end method

.method public computeScroll()V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    if-ne v10, v12, :cond_0

    if-eq v11, v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getScrollRange()I

    move-result v13

    sub-int v1, v12, v10

    sub-int v2, v0, v11

    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->overFlingDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v10

    move v4, v11

    move v5, v13

    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0, v10, v11, v10, v11}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-direct {p0, v13}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isOverScrollAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez v12, :cond_1

    if-ltz v10, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_1
    if-gt v10, v13, :cond_2

    if-ge v13, v12, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->notifyIfSettled()Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->drawEdgeGlowLeft(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->drawEdgeGlowRight(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final endFakeDrag()V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isStopScrollRequested:Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[endFakeDrag] mIsStopScrollRequested: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mState: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolbarSwipeView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const-string v2, "[endFakeDrag] set mState: "

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isStopScrollRequested:Z

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getScrollRange()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settlePageIfNeeded()V

    :cond_2
    return-void
.end method

.method public fakeDragBy(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->isLayoutDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getScrollRange()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isOverScrollAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowLeftEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowRightEnabled:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowLeftEnabled:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    neg-float v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowRightEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isScrollBlocked:Z

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->fakeDragBy(F)V

    :cond_6
    return-void
.end method

.method public final forceSettle()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isStopScrollRequested:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settlePageIfNeeded()V

    return-void
.end method

.method public final forceStopScroll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isStopScrollRequested:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public final getCurrentItemIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->currentItem:I

    return p0
.end method

.method public final isBeingFakeDrag()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFirstPage()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLastPage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSettled()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSettling()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentPage()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->scrollTo(II)V

    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 8

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScrollY(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getScrollRange()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final scrollAndAnimatePage(IF)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->getCurrentItemIndex()I

    move-result v0

    add-int v1, v0, p1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isScrollBlocked:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Companion;->isValidDirection(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isValidPage(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->settleDestinationX:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->state:I

    const-string v2, "[scrollAndAnimatePage] set mState: "

    const-string v4, "ToolbarSwipeView"

    invoke-static {v1, v2, v4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->lastAbsVelocity:F

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-ne v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isPageChanged:Z

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scrollToPage(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isPageChanged:Z

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->scrollToPage(I)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->forceSettle()V

    return v3
.end method

.method public final setCurrentPage(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isValidPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->setTargetPageNum(IZ)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->currentItem:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPage(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->scrollTo(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final setEdgeGlowEnabled(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowLeftEnabled:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isEdgeGlowRightEnabled:Z

    return-void
.end method

.method public final setListener(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->listener:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView$Listener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->edgeGlowRight:Landroid/widget/EdgeEffect;

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public final setScrollBlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeView;->isScrollBlocked:Z

    return-void
.end method
