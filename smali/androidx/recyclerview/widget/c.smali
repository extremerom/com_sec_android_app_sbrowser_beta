.class public final Landroidx/recyclerview/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/i0;


# instance fields
.field public final a:Landroidx/recyclerview/widget/u0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/u0;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final c(IILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final d(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemMoved(II)V

    return-void
.end method
