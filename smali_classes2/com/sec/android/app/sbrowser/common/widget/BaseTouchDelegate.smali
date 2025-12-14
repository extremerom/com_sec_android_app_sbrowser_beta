.class public Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;
    }
.end annotation


# instance fields
.field private final mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTouching:Z

.field private mShouldUpdateTouchUp:Z

.field private final mViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mDelegates:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mViews:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mIsTouching:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mShouldUpdateTouchUp:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegate(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)V

    return-void
.end method

.method private updateTouchDelegate(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->b(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->d(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->c(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->a(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I

    move-result p2

    add-int/2addr v0, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    new-instance p2, Landroid/view/TouchDelegate;

    invoke-direct {p2, v1, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mDelegates:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addTouchDelegate(Landroid/view/View;IIII)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mViews:Ljava/util/Map;

    new-instance v6, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;-><init>(IIIII)V

    invoke-interface {p0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mIsTouching:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mShouldUpdateTouchUp:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mDelegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/TouchDelegate;

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mIsTouching:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mShouldUpdateTouchUp:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mShouldUpdateTouchUp:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mIsTouching:Z

    :cond_3
    :goto_0
    return v0

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mIsTouching:Z

    return v4
.end method

.method public updateTouchDelegates()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->mViews:Ljava/util/Map;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/widget/a;-><init>(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
