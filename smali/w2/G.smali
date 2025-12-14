.class public final Lw2/G;
.super Landroidx/recyclerview/widget/j1;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Landroidx/recyclerview/widget/i1;

.field public final c:LH6/i;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/j1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/j1;->getItemDelegate()Lf1/b;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/i1;

    iput-object v0, p0, Lw2/G;->b:Landroidx/recyclerview/widget/i1;

    new-instance v0, LH6/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, LH6/i;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lw2/G;->c:LH6/i;

    iput-object p1, p0, Lw2/G;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final getItemDelegate()Lf1/b;
    .locals 0

    iget-object p0, p0, Lw2/G;->c:LH6/i;

    return-object p0
.end method
