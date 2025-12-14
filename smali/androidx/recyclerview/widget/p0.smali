.class public final Landroidx/recyclerview/widget/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/p0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Landroidx/recyclerview/widget/p0;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/p0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/J0;

    if-nez v1, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p0, p0, Landroidx/recyclerview/widget/p0;->a:I

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v1, v0, v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPositionJumpIfNeeded(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;I)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v1, v0, v2, p0}, Landroidx/recyclerview/widget/J0;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;I)V

    :goto_0
    return-void
.end method
