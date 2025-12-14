.class public Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;
.super Lorg/chromium/ui/KeyboardVisibilityDelegate;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mContentViewForTesting:Landroid/view/View;

.field private mIsKeyboardShowing:Z

.field private mLazyKeyboardInsetSupplier:Lorg/chromium/base/supplier/LazyOneshotSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/LazyOneshotSupplier<",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnKeyboardInsetChanged:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/KeyboardVisibilityDelegate;-><init>()V

    new-instance v0, Lcom/sec/terrace/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mOnKeyboardInsetChanged:Lorg/chromium/base/Callback;

    iput-object p1, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->onKeyboardInsetChanged(I)V

    return-void
.end method

.method private getContentView(Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mContentViewForTesting:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const p0, 0x1020002

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private onKeyboardInsetChanged(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->updateKeyboardShowing(Z)V

    return-void
.end method

.method private updateKeyboardShowing(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mIsKeyboardShowing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mIsKeyboardShowing:Z

    invoke-virtual {p0, p1}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->notifyListeners(Z)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->updateKeyboardShowing(Z)V

    return-void
.end method

.method public registerKeyboardVisibilityCallbacks()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mIsKeyboardShowing:Z

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mLazyKeyboardInsetSupplier:Lorg/chromium/base/supplier/LazyOneshotSupplier;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/chromium/base/supplier/LazyOneshotSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/supplier/ObservableSupplier;

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mOnKeyboardInsetChanged:Lorg/chromium/base/Callback;

    invoke-interface {v0, p0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    return-void
.end method

.method public setLazyKeyboardInsetSupplier(Lorg/chromium/base/supplier/LazyOneshotSupplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/supplier/LazyOneshotSupplier<",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mLazyKeyboardInsetSupplier:Lorg/chromium/base/supplier/LazyOneshotSupplier;

    invoke-virtual {p0}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->hasKeyboardVisibilityListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/chromium/base/supplier/LazyOneshotSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/supplier/ObservableSupplier;

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mOnKeyboardInsetChanged:Lorg/chromium/base/Callback;

    invoke-interface {p1, p0}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unregisterKeyboardVisibilityCallbacks()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mLazyKeyboardInsetSupplier:Lorg/chromium/base/supplier/LazyOneshotSupplier;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/chromium/base/supplier/LazyOneshotSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/supplier/ObservableSupplier;

    iget-object p0, p0, Lorg/chromium/ui/base/ActivityKeyboardVisibilityDelegate;->mOnKeyboardInsetChanged:Lorg/chromium/base/Callback;

    invoke-interface {v0, p0}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    return-void
.end method
