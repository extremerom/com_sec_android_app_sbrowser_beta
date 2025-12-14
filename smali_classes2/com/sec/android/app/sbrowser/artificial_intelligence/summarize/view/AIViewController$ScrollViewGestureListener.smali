.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->isMenuContainerAnimationOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setMInitialRawYForScroll(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/ScrollView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/ScrollView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getMInitialRawYForScroll()F

    move-result p1

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->isMenuContainerAnimationOngoing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getMInitialRawYForScroll()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setMInitialRawYForScroll(F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Landroid/widget/ScrollView;

    move-result-object p2

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_1

    return p3

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->n(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->setMInitialRawYForScroll(F)V

    return v1

    :cond_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V

    return v1

    :cond_3
    :goto_0
    return p3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewWindowHandler;->getMInitialRawYForScroll()F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->isMenuContainerAnimationOngoing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->n(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController$ScrollViewGestureListener;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
