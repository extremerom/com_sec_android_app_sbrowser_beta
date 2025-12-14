.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 R2\u00020\u00012\u00020\u0002:\u0001RB!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010H\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010#\u001a\u00020\r2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010(\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008(\u0010\'J\u0011\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0019\u0010.\u001a\u00020\r2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00102\u001a\u00020\r2\u0008\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00082\u00103J\u001f\u00106\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00086\u00107J\u0017\u00108\u001a\u00020\r2\u0006\u00104\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00088\u0010\'J\u0017\u00109\u001a\u00020\r2\u0006\u00105\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00089\u0010\'J\u000f\u0010:\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008<\u0010;R\u0014\u0010>\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010C\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010G\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010FR\u0016\u0010H\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010DR\u0016\u0010I\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010DR\u0014\u0010J\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010L\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010KR\u0018\u0010M\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010P\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010Q\u00a8\u0006S"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;",
        "Landroid/widget/PopupWindow;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/app/Activity;Landroid/util/AttributeSet;I)V",
        "Landroid/view/MotionEvent;",
        "event",
        "Ldb/r;",
        "onTouchMotionEvent",
        "(Landroid/view/MotionEvent;)V",
        "Landroid/graphics/PointF;",
        "pointA",
        "pointB",
        "",
        "getDistance",
        "(Landroid/graphics/PointF;Landroid/graphics/PointF;)F",
        "from",
        "to",
        "moveToPosition",
        "(Landroid/graphics/PointF;Landroid/graphics/PointF;)V",
        "Lr1/d;",
        "listener",
        "Lr1/f;",
        "createSpringAnimation",
        "(Lr1/d;)Lr1/f;",
        "show",
        "()V",
        "Landroid/view/View;",
        "view",
        "setAnchorView",
        "(Landroid/view/View;)V",
        "offset",
        "setHorizontalOffset",
        "(I)V",
        "setVerticalOffset",
        "Landroid/widget/ListView;",
        "getListView",
        "()Landroid/widget/ListView;",
        "Landroid/widget/ListAdapter;",
        "adapter",
        "setAdapter",
        "(Landroid/widget/ListAdapter;)V",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "clickListener",
        "setOnItemClickListener",
        "(Landroid/widget/AdapterView$OnItemClickListener;)V",
        "width",
        "height",
        "updateContentSize",
        "(II)V",
        "setWidth",
        "setHeight",
        "getWidth",
        "()I",
        "getHeight",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "optionPopupLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;",
        "listView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;",
        "inset",
        "I",
        "anchorView",
        "Landroid/view/View;",
        "backgroundView",
        "offsetX",
        "offsetY",
        "centerPos",
        "Landroid/graphics/PointF;",
        "lastTouchDownPos",
        "touchAnimation",
        "Lr1/f;",
        "Lk9/r;",
        "guidingLightEffect",
        "Lk9/r;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private anchorView:Landroid/view/View;

.field private final backgroundView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final centerPos:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private guidingLightEffect:Lk9/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final inset:I

.field private lastTouchDownPos:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private offsetX:I

.field private offsetY:I

.field private final optionPopupLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private touchAnimation:Lr1/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07007f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0015

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-static {p1, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->optionPopupLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0b00b4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    const p2, 0x7f0b00b3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->backgroundView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->centerPos:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->lastTouchDownPos:Landroid/graphics/PointF;

    return-void
.end method

.method public static synthetic a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;Lr1/e;FF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->moveToPosition$lambda$0(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;Lr1/e;FF)V

    return-void
.end method

.method public static final synthetic access$onTouchMotionEvent(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->onTouchMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private final createSpringAnimation(Lr1/d;)Lr1/f;
    .locals 2

    new-instance p0, Lr1/f;

    new-instance v0, LU/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU/b;-><init>(I)V

    invoke-direct {p0, v0}, Lr1/f;-><init>(LU/b;)V

    new-instance v0, Lr1/g;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v1}, Lr1/g;-><init>(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lr1/g;->a(F)V

    const v1, 0x43b48000    # 361.0f

    invoke-virtual {v0, v1}, Lr1/g;->b(F)V

    invoke-virtual {p0, p1}, Lr1/e;->b(Lr1/d;)V

    iput-object v0, p0, Lr1/f;->u:Lr1/g;

    return-object p0
.end method

.method private final getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 1

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private final moveToPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->touchAnimation:Lr1/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr1/f;->g()V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->createSpringAnimation(Lr1/d;)Lr1/f;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->touchAnimation:Lr1/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lr1/f;->h()V

    :cond_1
    return-void
.end method

.method private static final moveToPosition$lambda$0(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;Lr1/e;FF)V
    .locals 2

    new-instance p3, Landroid/graphics/PointF;

    iget p5, p0, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p5

    mul-float/2addr v0, p4

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p5

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    mul-float/2addr p1, p4

    div-float/2addr p1, v1

    add-float/2addr p1, p0

    invoke-direct {p3, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->guidingLightEffect:Lk9/r;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk9/r;->f:Lk9/g;

    invoke-virtual {p0}, Li9/a;->c()Lj9/h;

    move-result-object p0

    check-cast p0, Lk9/z;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lk9/z;->m(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method private final onTouchMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, LG5/d3;->e(FFF)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v2, v3}, LG5/d3;->e(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->lastTouchDownPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->centerPos:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->moveToPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->lastTouchDownPos:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->getDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    const v1, 0x3ca3d70a    # 0.02f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->lastTouchDownPos:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->moveToPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->lastTouchDownPos:Landroid/graphics/PointF;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->centerPos:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->moveToPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->centerPos:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->moveToPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->lastTouchDownPos:Landroid/graphics/PointF;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    return-object p0
.end method

.method public getWidth()I
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->anchorView:Landroid/view/View;

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->offsetX:I

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->offsetY:I

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method public show()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->optionPopupLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v1, "findViewById(...)"

    invoke-static {v4, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->optionPopupLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->anchorView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "anchorView"

    if-eqz v1, :cond_3

    :try_start_1
    iget v5, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->offsetX:I

    iget v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->offsetY:I

    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-ge v1, v5, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$show$1;

    invoke-direct {v5, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7$show$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;->setOnTouchEventListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView$OnTouchEventListener;)V

    const v1, 0x7f080057

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "getBackground(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->anchorView:Landroid/view/View;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v7, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;-><init>(I)V

    sget-object v9, Lm9/b;->Common:Lm9/b;

    sget-object v10, Lk9/p;->SIZE:Lk9/p;

    const/16 v15, 0x380

    const/16 v16, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v16}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;ILjava/lang/Object;)Lk9/r;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->guidingLightEffect:Lk9/r;

    return-void

    :cond_2
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateContentSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->listView:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->inset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->backgroundView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
