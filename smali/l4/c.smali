.class public final Ll4/c;
.super LN/f;
.source "SourceFile"


# instance fields
.field public g:I


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll4/c;->g:I

    invoke-super {p0}, LN/A;->clear()V

    return-void
.end method

.method public final g(LN/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll4/c;->g:I

    invoke-super {p0, p1}, LN/A;->g(LN/f;)V

    return-void
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll4/c;->g:I

    invoke-super {p0, p1}, LN/A;->h(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ll4/c;->g:I

    if-nez v0, :cond_0

    invoke-super {p0}, LN/A;->hashCode()I

    move-result v0

    iput v0, p0, Ll4/c;->g:I

    :cond_0
    iget p0, p0, Ll4/c;->g:I

    return p0
.end method

.method public final i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll4/c;->g:I

    invoke-super {p0, p1, p2}, LN/A;->i(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll4/c;->g:I

    invoke-super {p0, p1, p2}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
