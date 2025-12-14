.class public abstract Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/LazyOneshotSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/supplier/LazyOneshotSupplier<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDoSetCalled:Z

.field private final mPromise:Lorg/chromium/base/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Lorg/chromium/base/Promise;

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    return-void
.end method

.method private tryDoSet()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mDoSetCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->doSet()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mDoSetCalled:Z

    return-void
.end method


# virtual methods
.method public abstract doSet()V
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    invoke-virtual {p0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->hasValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->tryDoSet()V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Lorg/chromium/base/Promise;

    invoke-virtual {p0}, Lorg/chromium/base/Promise;->getResult()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasValue()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Lorg/chromium/base/Promise;

    invoke-virtual {p0}, Lorg/chromium/base/Promise;->isFulfilled()Z

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object p0, p0, Lorg/chromium/base/supplier/LazyOneshotSupplierImpl;->mPromise:Lorg/chromium/base/Promise;

    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    return-void
.end method
