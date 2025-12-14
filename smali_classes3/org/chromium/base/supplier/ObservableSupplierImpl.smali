.class public Lorg/chromium/base/supplier/ObservableSupplierImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/ObservableSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/supplier/ObservableSupplier<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/Callback<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    iput-object p1, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Object;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->lambda$addObserver$0(Ljava/lang/Object;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method private synthetic lambda$addObserver$0(Ljava/lang/Object;Lorg/chromium/base/Callback;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p2}, Lorg/chromium/base/ObserverList;->hasObserver(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static shouldNotifyOnAdd(I)Z
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/base/supplier/ObservableSupplier$NotifyBehavior;
        .end annotation
    .end param

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static shouldPostOnAdd(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
            "TE;>;I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->shouldNotifyOnAdd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->shouldPostOnAdd(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance p2, Lo9/a;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1, v0, p1}, Lo9/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidOrInstrumentationThread()V

    iget-object p0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public hasObservers()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeObserver(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TE;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    iget-object v0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObject:Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
