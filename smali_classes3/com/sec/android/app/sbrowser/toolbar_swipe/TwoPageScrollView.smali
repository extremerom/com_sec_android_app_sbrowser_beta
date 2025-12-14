.class public Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0015\u0008\u0017\u0018\u0000 E2\u00020\u0001:\u0001EB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u000fJ\u001f\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\rJ\'\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ7\u0010 \u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010$\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008$\u0010\rJ\u000f\u0010%\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008%\u0010\u000fJ7\u0010,\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008,\u0010-J\r\u0010.\u001a\u00020&\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00080\u0010\u000fJ\u0017\u00103\u001a\u00020\u000b2\u0006\u00102\u001a\u000201H\u0016\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u0008\u00a2\u0006\u0004\u00085\u00106J\u0015\u00108\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u0008\u00a2\u0006\u0004\u00088\u00109J!\u0010<\u001a\u00020\u000b2\u0008\u0010:\u001a\u0004\u0018\u00010\u00192\u0008\u0010;\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008<\u0010=R\u0014\u0010>\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010@\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0014\u0010B\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010AR\u0016\u0010.\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010CR\u0016\u0010D\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010?\u00a8\u0006F"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "width",
        "height",
        "Ldb/r;",
        "layoutPages",
        "(II)V",
        "layoutChildren",
        "()V",
        "n",
        "my",
        "child",
        "clamp",
        "(III)I",
        "onFinishInflate",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "Landroid/view/View;",
        "parentWidthMeasureSpec",
        "parentHeightMeasureSpec",
        "measureChild",
        "(Landroid/view/View;II)V",
        "widthUsed",
        "heightUsed",
        "measureChildWithMargins",
        "(Landroid/view/View;IIII)V",
        "x",
        "y",
        "scrollTo",
        "requestLayout",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "isLayoutDirty",
        "()Z",
        "beginFakeDrag",
        "",
        "deltaX",
        "fakeDragBy",
        "(F)V",
        "getPageMargin",
        "()I",
        "pageNumber",
        "getPage",
        "(I)Landroid/view/View;",
        "leftPageView",
        "rightPageView",
        "setPages",
        "(Landroid/view/View;Landroid/view/View;)V",
        "pageMargin",
        "I",
        "leftPage",
        "Landroid/widget/FrameLayout;",
        "rightPage",
        "Z",
        "lastScrollX",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isLayoutDirty:Z

.field private lastScrollX:I

.field private final leftPage:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pageMargin:I

.field private final rightPage:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071482

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->pageMargin:I

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->leftPage:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->rightPage:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->isLayoutDirty:Z

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const-string p0, "TwoPageScrollView"

    const-string p1, "TwoPageScrollView has been initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final clamp(III)I
    .locals 0

    if-ge p2, p3, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int p0, p2, p1

    if-le p0, p3, :cond_1

    sub-int p1, p3, p2

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final layoutChildren()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final layoutPages(II)V
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPageMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->leftPage:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->getPageMargin()I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->rightPage:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public beginFakeDrag()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->lastScrollX:I

    return-void
.end method

.method public fakeDragBy(F)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->lastScrollX:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->scrollTo(II)V

    return-void
.end method

.method public final getPage(I)Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid element request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->leftPage:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->rightPage:Landroid/widget/FrameLayout;

    :goto_1
    return-object p0
.end method

.method public final getPageMargin()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->pageMargin:I

    return p0
.end method

.method public final isLayoutDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->isLayoutDirty:Z

    return p0
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "child"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->pageMargin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x0

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->leftPage:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->rightPage:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "child"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->leftPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->rightPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p0, p4, p5}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->layoutPages(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->layoutChildren()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->isLayoutDirty:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p3

    if-nez p3, :cond_2

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    if-le p3, p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->setScrollX(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-gez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->lastScrollX:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->measureChild(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->isLayoutDirty:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-super {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public final setPages(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->leftPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/TwoPageScrollView;->rightPage:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
