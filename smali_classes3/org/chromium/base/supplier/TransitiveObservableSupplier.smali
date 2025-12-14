.class public Lorg/chromium/base/supplier/TransitiveObservableSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/ObservableSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/supplier/ObservableSupplier<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mCurrentTargetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplierImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOnParentSupplierChangeCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final mOnTargetSupplierChangeCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mParentSupplier:Lorg/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final mUnwrapFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TP;",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/base/supplier/ObservableSupplier;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TP;>;",
            "Ljava/util/function/Function<",
            "TP;",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-direct {v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    new-instance v0, Lorg/chromium/base/supplier/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/supplier/a;-><init>(Lorg/chromium/base/supplier/TransitiveObservableSupplier;I)V

    iput-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnParentSupplierChangeCallback:Lorg/chromium/base/Callback;

    new-instance v0, Lorg/chromium/base/supplier/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/supplier/a;-><init>(Lorg/chromium/base/supplier/TransitiveObservableSupplier;I)V

    iput-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Lorg/chromium/base/Callback;

    iput-object p1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    iput-object p2, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/supplier/TransitiveObservableSupplier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->onParentSupplierChange(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/base/supplier/TransitiveObservableSupplier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->onTargetSupplierChange(Ljava/lang/Object;)V

    return-void
.end method

.method private onParentSupplierChange(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Lorg/chromium/base/Callback;

    invoke-interface {v0, v1}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/supplier/ObservableSupplier;

    :goto_0
    iput-object p1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->addSyncObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->onTargetSupplierChange(Ljava/lang/Object;)V

    return-void
.end method

.method private onTargetSupplierChange(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/base/Callback;I)Ljava/lang/Object;
    .locals 2
    .param p2    # I
        .annotation build Lorg/chromium/base/supplier/ObservableSupplier$NotifyBehavior;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    iget-object v1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnParentSupplierChangeCallback:Lorg/chromium/base/Callback;

    invoke-interface {v0, v1}, Lorg/chromium/base/supplier/ObservableSupplier;->addSyncObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->onParentSupplierChange(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->addObserver(Lorg/chromium/base/Callback;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mUnwrapFunction:Ljava/util/function/Function;

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeObserver(Lorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->removeObserver(Lorg/chromium/base/Callback;)V

    iget-object p1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mDelegateSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {p1}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->hasObservers()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mParentSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnParentSupplierChangeCallback:Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    iget-object p1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mOnTargetSupplierChangeCallback:Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/supplier/ObservableSupplier;->removeObserver(Lorg/chromium/base/Callback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->mCurrentTargetSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    :cond_0
    return-void
.end method
