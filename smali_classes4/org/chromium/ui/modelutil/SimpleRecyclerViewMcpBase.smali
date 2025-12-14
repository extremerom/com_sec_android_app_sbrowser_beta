.class public Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase;
.super Lorg/chromium/ui/modelutil/ForwardingListObservable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/RecyclerViewAdapter$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ItemViewTypeCallback;,
        Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ViewBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/ui/modelutil/ForwardingListObservable<",
        "TP;>;",
        "Lorg/chromium/ui/modelutil/RecyclerViewAdapter$Delegate<",
        "TVH;TP;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mItemViewTypeCallback:Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ItemViewTypeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ItemViewTypeCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mModel:Lorg/chromium/ui/modelutil/SimpleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/SimpleList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mViewBinder:Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ViewBinder<",
            "TT;TVH;TP;>;"
        }
    .end annotation
.end field


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase;->mModel:Lorg/chromium/ui/modelutil/SimpleList;

    invoke-interface {p0}, Lorg/chromium/ui/modelutil/SimpleList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase;->mItemViewTypeCallback:Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ItemViewTypeCallback;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase;->mModel:Lorg/chromium/ui/modelutil/SimpleList;

    invoke-interface {p0, p1}, Lorg/chromium/ui/modelutil/SimpleList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ItemViewTypeCallback;->getItemViewType(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITP;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase;->mViewBinder:Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ViewBinder;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase;->mModel:Lorg/chromium/ui/modelutil/SimpleList;

    invoke-interface {p0, p2}, Lorg/chromium/ui/modelutil/SimpleList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0, p3}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewMcpBase$ViewBinder;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
