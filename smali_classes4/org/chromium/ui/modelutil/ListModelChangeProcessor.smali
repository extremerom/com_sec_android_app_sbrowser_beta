.class public Lorg/chromium/ui/modelutil/ListModelChangeProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/ListObservable$ListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modelutil/ListModelChangeProcessor$ViewBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/chromium/ui/modelutil/ListObservable<",
        "TP;>;V:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/modelutil/ListObservable$ListObserver<",
        "TP;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mModel:Lorg/chromium/ui/modelutil/ListObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mViewBinder:Lorg/chromium/ui/modelutil/ListModelChangeProcessor$ViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/ListModelChangeProcessor$ViewBinder<",
            "TM;TV;TP;>;"
        }
    .end annotation
.end field


# virtual methods
.method public onItemRangeInserted(Lorg/chromium/ui/modelutil/ListObservable;II)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/ui/modelutil/ListModelChangeProcessor;->mViewBinder:Lorg/chromium/ui/modelutil/ListModelChangeProcessor$ViewBinder;

    iget-object v0, p0, Lorg/chromium/ui/modelutil/ListModelChangeProcessor;->mModel:Lorg/chromium/ui/modelutil/ListObservable;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ListModelChangeProcessor;->mView:Ljava/lang/Object;

    invoke-interface {p1, v0, p0, p2, p3}, Lorg/chromium/ui/modelutil/ListModelChangeProcessor$ViewBinder;->onItemsInserted(Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method
