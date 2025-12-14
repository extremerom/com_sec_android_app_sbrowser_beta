.class public final Lw2/z;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/preference/g;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/preference/g;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/z;->a:Landroidx/preference/g;

    iput-object p2, p0, Lw2/z;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lw2/z;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lw2/z;->h()V

    return-void
.end method

.method public final b(II)V
    .locals 0

    invoke-virtual {p0}, Lw2/z;->h()V

    return-void
.end method

.method public final c(IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lw2/z;->h()V

    return-void
.end method

.method public final d(II)V
    .locals 0

    invoke-virtual {p0}, Lw2/z;->h()V

    return-void
.end method

.method public final e(II)V
    .locals 0

    invoke-virtual {p0}, Lw2/z;->h()V

    return-void
.end method

.method public final f(II)V
    .locals 0

    invoke-virtual {p0}, Lw2/z;->h()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lw2/z;->a:Landroidx/preference/g;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/u0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/w0;)V

    iget-object v1, p0, Lw2/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/g;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lw2/z;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
