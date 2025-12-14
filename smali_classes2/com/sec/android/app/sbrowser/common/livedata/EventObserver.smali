.class public Lcom/sec/android/app/sbrowser/common/livedata/EventObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/livedata/EventObserver$OnEventChanged;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Y;"
    }
.end annotation


# instance fields
.field private mEventChanged:Lcom/sec/android/app/sbrowser/common/livedata/EventObserver$OnEventChanged;


# virtual methods
.method public onChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/livedata/Event;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/EventObserver;->mEventChanged:Lcom/sec/android/app/sbrowser/common/livedata/EventObserver$OnEventChanged;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/EventObserver$OnEventChanged;->onUnhandledContent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/EventObserver;->onChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method
