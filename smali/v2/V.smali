.class public final Lv2/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/i0;


# instance fields
.field public final a:Lv2/J0;

.field public final b:Landroidx/recyclerview/widget/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lv2/j1;Lv2/J0;Landroidx/recyclerview/widget/c;)V
    .locals 1

    const-string v0, "oldList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv2/V;->a:Lv2/J0;

    iput-object p3, p0, Lv2/V;->b:Landroidx/recyclerview/widget/c;

    check-cast p1, Lv2/J0;

    iget p2, p1, Lv2/J0;->c:I

    iput p2, p0, Lv2/V;->c:I

    iget p2, p1, Lv2/J0;->d:I

    iput p2, p0, Lv2/V;->d:I

    iget p1, p1, Lv2/J0;->b:I

    iput p1, p0, Lv2/V;->e:I

    const/4 p1, 0x1

    iput p1, p0, Lv2/V;->f:I

    iput p1, p0, Lv2/V;->g:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    iget v0, p0, Lv2/V;->e:I

    iget-object v1, p0, Lv2/V;->b:Landroidx/recyclerview/widget/c;

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lv2/V;->g:I

    if-ne v0, v3, :cond_4

    :goto_0
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lv2/V;->f:I

    if-ne v0, v3, :cond_2

    :goto_1
    iget v0, p0, Lv2/V;->c:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lv2/V;->c:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_3

    iput v2, p0, Lv2/V;->f:I

    rsub-int/lit8 v0, p1, 0x0

    iget v2, p0, Lv2/V;->c:I

    add-int/2addr v0, v2

    sget-object v2, Lv2/u;->PLACEHOLDER_TO_ITEM:Lv2/u;

    invoke-virtual {v1, v0, p1, v2}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    iget v0, p0, Lv2/V;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lv2/V;->c:I

    :cond_3
    sub-int p1, p2, p1

    if-lez p1, :cond_6

    iget v0, p0, Lv2/V;->c:I

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lv2/V;->d:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_5

    iput v2, p0, Lv2/V;->g:I

    iget v2, p0, Lv2/V;->c:I

    add-int/2addr v2, p1

    sget-object v3, Lv2/u;->PLACEHOLDER_TO_ITEM:Lv2/u;

    invoke-virtual {v1, v2, v0, v3}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    iget v2, p0, Lv2/V;->d:I

    sub-int/2addr v2, v0

    iput v2, p0, Lv2/V;->d:I

    :cond_5
    sub-int v2, p2, v0

    if-lez v2, :cond_6

    add-int/2addr p1, v0

    iget v0, p0, Lv2/V;->c:I

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/c;->a(II)V

    :cond_6
    :goto_2
    iget p1, p0, Lv2/V;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lv2/V;->e:I

    return-void
.end method

.method public final b(II)V
    .locals 7

    add-int v0, p1, p2

    iget v1, p0, Lv2/V;->e:I

    iget-object v2, p0, Lv2/V;->a:Lv2/J0;

    iget-object v3, p0, Lv2/V;->b:Landroidx/recyclerview/widget/c;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lv2/V;->g:I

    if-ne v0, v5, :cond_5

    :goto_0
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lv2/V;->f:I

    if-ne v0, v5, :cond_2

    :goto_1
    iget v0, p0, Lv2/V;->c:I

    add-int/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/c;->b(II)V

    goto :goto_4

    :cond_2
    iget p1, v2, Lv2/J0;->c:I

    iget v0, p0, Lv2/V;->c:I

    sub-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    move v6, p1

    :goto_2
    sub-int p1, p2, v6

    if-lez p1, :cond_4

    iget v0, p0, Lv2/V;->c:I

    invoke-virtual {v3, v0, p1}, Landroidx/recyclerview/widget/c;->b(II)V

    :cond_4
    if-lez v6, :cond_8

    iput v4, p0, Lv2/V;->f:I

    iget p1, p0, Lv2/V;->c:I

    sget-object v0, Lv2/u;->ITEM_TO_PLACEHOLDER:Lv2/u;

    invoke-virtual {v3, p1, v6, v0}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    iget p1, p0, Lv2/V;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Lv2/V;->c:I

    goto :goto_4

    :cond_5
    iget v0, v2, Lv2/J0;->d:I

    iget v1, p0, Lv2/V;->d:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    sub-int v0, p2, v6

    if-lez v6, :cond_7

    iput v4, p0, Lv2/V;->g:I

    iget v1, p0, Lv2/V;->c:I

    add-int/2addr v1, p1

    sget-object v2, Lv2/u;->ITEM_TO_PLACEHOLDER:Lv2/u;

    invoke-virtual {v3, v1, v6, v2}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    iget v1, p0, Lv2/V;->d:I

    add-int/2addr v1, v6

    iput v1, p0, Lv2/V;->d:I

    :cond_7
    if-lez v0, :cond_8

    add-int/2addr p1, v6

    iget v1, p0, Lv2/V;->c:I

    add-int/2addr p1, v1

    invoke-virtual {v3, p1, v0}, Landroidx/recyclerview/widget/c;->b(II)V

    :cond_8
    :goto_4
    iget p1, p0, Lv2/V;->e:I

    sub-int/2addr p1, p2

    iput p1, p0, Lv2/V;->e:I

    return-void
.end method

.method public final c(IILjava/lang/Object;)V
    .locals 1

    iget v0, p0, Lv2/V;->c:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lv2/V;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    return-void
.end method

.method public final d(II)V
    .locals 1

    iget v0, p0, Lv2/V;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lv2/V;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/c;->d(II)V

    return-void
.end method
