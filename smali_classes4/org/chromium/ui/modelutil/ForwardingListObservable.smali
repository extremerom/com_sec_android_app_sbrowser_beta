.class public Lorg/chromium/ui/modelutil/ForwardingListObservable;
.super Lorg/chromium/ui/modelutil/ListObservableImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/ListObservable$ListObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/ui/modelutil/ListObservableImpl<",
        "TP;>;",
        "Lorg/chromium/ui/modelutil/ListObservable$ListObserver<",
        "TP;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public onItemRangeInserted(Lorg/chromium/ui/modelutil/ListObservable;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/ui/modelutil/ListObservableImpl;->notifyItemRangeInserted(II)V

    return-void
.end method
