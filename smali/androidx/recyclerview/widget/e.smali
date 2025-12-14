.class public final Landroidx/recyclerview/widget/e;
.super Landroidx/recyclerview/widget/x;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/f;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/f;

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->d:Landroidx/recyclerview/widget/i;

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/x1;

    iget-object p0, p0, Landroidx/recyclerview/widget/x1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/A;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/A;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/f;

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->d:Landroidx/recyclerview/widget/i;

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/x1;

    iget-object p0, p0, Landroidx/recyclerview/widget/x1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/A;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/A;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getChangePayload(II)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/f;

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->d:Landroidx/recyclerview/widget/i;

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/x1;

    iget-object p0, p0, Landroidx/recyclerview/widget/x1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/A;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/A;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/f;

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->a:Landroidx/recyclerview/widget/f;

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
