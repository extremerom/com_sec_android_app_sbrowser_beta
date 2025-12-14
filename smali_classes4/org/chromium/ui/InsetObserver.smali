.class public Lorg/chromium/ui/InsetObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/InsetObserver$WindowInsetsConsumer;,
        Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;,
        Lorg/chromium/ui/InsetObserver$WindowInsetObserver;,
        Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInitialRawWindowInsetsForTesting:Lf1/w0;


# instance fields
.field private mBottomInsetsForEdgeToEdge:I

.field private final mCurrentSafeArea:Landroid/graphics/Rect;

.field private final mDisplayCutoutRect:Landroid/graphics/Rect;

.field private final mInsetsConsumers:[Lorg/chromium/ui/InsetObserver$WindowInsetsConsumer;

.field private mKeyboardInset:I

.field private final mKeyboardInsetSupplier:Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;

.field private mLastSeenRawWindowInset:Lf1/w0;

.field protected final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/InsetObserver$WindowInsetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootViewReference:Lorg/chromium/ui/base/ImmutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/base/ImmutableWeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemGestureInsets:Landroid/graphics/Rect;

.field private final mWindowInsets:Landroid/graphics/Rect;

.field private final mWindowInsetsAnimationListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowInsetsAnimationProxyCallback:Lf1/d0;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/ImmutableWeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/base/ImmutableWeakReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsetsAnimationListeners:Lorg/chromium/base/ObserverList;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/ui/InsetObserver$WindowInsetsConsumer;

    iput-object v0, p0, Lorg/chromium/ui/InsetObserver;->mInsetsConsumers:[Lorg/chromium/ui/InsetObserver$WindowInsetsConsumer;

    iput-object p1, p0, Lorg/chromium/ui/InsetObserver;->mRootViewReference:Lorg/chromium/ui/base/ImmutableWeakReference;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/InsetObserver;->mCurrentSafeArea:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/InsetObserver;->mDisplayCutoutRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/ui/InsetObserver;->mKeyboardInset:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/InsetObserver;->mSystemGestureInsets:Landroid/graphics/Rect;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    new-instance v0, Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;

    invoke-direct {v0, p1}, Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/ui/InsetObserver;->mKeyboardInsetSupplier:Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/InsetObserver;->addObserver(Lorg/chromium/ui/InsetObserver$WindowInsetObserver;)V

    new-instance v0, Lorg/chromium/ui/InsetObserver$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/InsetObserver$1;-><init>(Lorg/chromium/ui/InsetObserver;I)V

    iput-object v0, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsetsAnimationProxyCallback:Lf1/d0;

    invoke-direct {p0}, Lorg/chromium/ui/InsetObserver;->getRootView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/ui/InsetObserver;->mLastSeenRawWindowInset:Lf1/w0;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/chromium/ui/InsetObserver;->sInitialRawWindowInsetsForTesting:Lf1/w0;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lorg/chromium/ui/InsetObserver;->mLastSeenRawWindowInset:Lf1/w0;

    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lf1/W;->l(Landroid/view/View;Lf1/d0;)V

    invoke-static {p1, p0}, Lf1/O;->m(Landroid/view/View;Lf1/v;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/ObserverList;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsetsAnimationListeners:Lorg/chromium/base/ObserverList;

    return-object p0
.end method

.method private forwardToInsetConsumers(Lf1/w0;)Lf1/w0;
    .locals 4

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mRootViewReference:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mInsetsConsumers:[Lorg/chromium/ui/InsetObserver$WindowInsetsConsumer;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3, v0, p1}, Lf1/v;->onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object p1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mRootViewReference:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private onInsetChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;

    invoke-interface {p1}, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;->onInsetChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onSystemGestureInsetsChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mSystemGestureInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;->onSystemGestureInsetsChanged(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCurrentSafeArea()V
    .locals 7

    invoke-virtual {p0}, Lorg/chromium/ui/InsetObserver;->getLastRawWindowInsets()Lf1/w0;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LX0/b;->e:LX0/b;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/InsetObserver;->getLastRawWindowInsets()Lf1/w0;

    move-result-object v0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/ui/InsetObserver;->mDisplayCutoutRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, LX0/b;->a:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lorg/chromium/ui/InsetObserver;->mDisplayCutoutRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, LX0/b;->b:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lorg/chromium/ui/InsetObserver;->mDisplayCutoutRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v0, LX0/b;->c:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/ui/InsetObserver;->mDisplayCutoutRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, LX0/b;->d:I

    sub-int/2addr v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lorg/chromium/ui/InsetObserver;->mBottomInsetsForEdgeToEdge:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mCurrentSafeArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mCurrentSafeArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/chromium/ui/InsetObserver;->mCurrentSafeArea:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v2}, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;->onSafeAreaChanged(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateDisplayCutoutRect(Lf1/w0;)V
    .locals 4

    iget-object p1, p1, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p1}, Lf1/u0;->e()Lf1/i;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lf1/i;->a:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object p1, p0, Lorg/chromium/ui/InsetObserver;->mDisplayCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lorg/chromium/ui/InsetObserver;->updateCurrentSafeArea()V

    return-void
.end method

.method private updateKeyboardInset()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mRootViewReference:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lorg/chromium/ui/KeyboardUtils;->calculateKeyboardHeightFromWindowInsets(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lorg/chromium/ui/InsetObserver;->mKeyboardInset:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lorg/chromium/ui/InsetObserver;->mKeyboardInset:I

    iget-object v0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;

    iget v2, p0, Lorg/chromium/ui/InsetObserver;->mKeyboardInset:I

    invoke-interface {v1, v2}, Lorg/chromium/ui/InsetObserver$WindowInsetObserver;->onKeyboardInsetChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/ui/InsetObserver$WindowInsetObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWindowInsetsAnimationListener(Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsetsAnimationListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLastRawWindowInsets()Lf1/w0;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mLastSeenRawWindowInset:Lf1/w0;

    return-object p0
.end method

.method public getSupplierForKeyboardInset()Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mKeyboardInsetSupplier:Lorg/chromium/ui/InsetObserver$KeyboardInsetObservableSupplier;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 4

    iput-object p2, p0, Lorg/chromium/ui/InsetObserver;->mLastSeenRawWindowInset:Lf1/w0;

    invoke-direct {p0, p2}, Lorg/chromium/ui/InsetObserver;->updateDisplayCutoutRect(Lf1/w0;)V

    invoke-direct {p0, p2}, Lorg/chromium/ui/InsetObserver;->forwardToInsetConsumers(Lf1/w0;)Lf1/w0;

    move-result-object p2

    invoke-direct {p0}, Lorg/chromium/ui/InsetObserver;->updateKeyboardInset()V

    iget-object v0, p2, Lf1/w0;->a:Lf1/u0;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    iget v1, v0, LX0/b;->a:I

    iget v2, v0, LX0/b;->c:I

    iget v3, v0, LX0/b;->d:I

    iget v0, v0, LX0/b;->b:I

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/chromium/ui/InsetObserver;->onInsetChanged(IIII)V

    iget-object v0, p2, Lf1/w0;->a:Lf1/u0;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    iget v1, v0, LX0/b;->a:I

    iget v2, v0, LX0/b;->c:I

    iget v3, v0, LX0/b;->d:I

    iget v0, v0, LX0/b;->b:I

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/chromium/ui/InsetObserver;->onSystemGestureInsetsChanged(IIII)V

    invoke-virtual {p2}, Lf1/w0;->e()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public removeObserver(Lorg/chromium/ui/InsetObserver$WindowInsetObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeWindowInsetsAnimationListener(Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/InsetObserver;->mWindowInsetsAnimationListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
