.class public Lorg/chromium/ui/modelutil/LayoutViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutResId:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field


# virtual methods
.method public final buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/modelutil/LayoutViewBuilder;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/modelutil/LayoutViewBuilder;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/modelutil/LayoutViewBuilder;->mInflater:Landroid/view/LayoutInflater;

    iget p0, p0, Lorg/chromium/ui/modelutil/LayoutViewBuilder;->mLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
