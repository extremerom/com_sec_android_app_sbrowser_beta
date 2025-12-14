.class public final Landroidx/recyclerview/widget/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/D;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/D;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/D;->d:I

    iget p0, p0, Landroidx/recyclerview/widget/D;->b:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
