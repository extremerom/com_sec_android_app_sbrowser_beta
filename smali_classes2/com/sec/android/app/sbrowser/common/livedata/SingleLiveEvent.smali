.class public Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/X;"
    }
.end annotation


# instance fields
.field private final mPending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent;->mPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/J;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/J;",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent$1;-><init>(Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent;Landroidx/lifecycle/Y;)V

    invoke-super {p0, p1, v0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Y;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent$2;-><init>(Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent;Landroidx/lifecycle/Y;)V

    invoke-super {p0, v0}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SingleLiveEvent;->mPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
