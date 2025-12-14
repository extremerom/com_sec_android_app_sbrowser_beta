.class public final Lw2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lw2/A;


# direct methods
.method public constructor <init>(Lw2/A;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/w;->b:Lw2/A;

    iput-object p2, p0, Lw2/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lw2/w;->b:Lw2/A;

    iget-object v1, v0, Lw2/A;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v1

    instance-of v2, v1, Landroidx/preference/g;

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter must implement PreferencePositionCallback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v2, v1

    check-cast v2, Landroidx/preference/g;

    iget-object p0, p0, Lw2/w;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroidx/preference/g;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object p0, v0, Lw2/A;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Lw2/z;

    iget-object v0, v0, Lw2/A;->mList:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    check-cast v3, Landroidx/preference/g;

    invoke-direct {v2, v3, v0, p0}, Lw2/z;-><init>(Landroidx/preference/g;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/u0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/w0;)V

    :goto_0
    return-void
.end method
