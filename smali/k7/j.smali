.class public final Lk7/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lm7/d;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lk7/k;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lk7/k;

    iget v0, p0, Lk7/j;->a:I

    iget-object p0, p0, Lk7/j;->b:Lm7/d;

    invoke-virtual {p1, v0, p0}, Lk7/k;->d(ILm7/d;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lk7/j;->a:I

    iget-object p0, p0, Lk7/j;->b:Lm7/d;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method
