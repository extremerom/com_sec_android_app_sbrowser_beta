.class public final LM2/f;
.super LM2/h;
.source "SourceFile"


# instance fields
.field public d:[I

.field public e:[J

.field public f:[D

.field public g:[Ljava/lang/String;

.field public h:[[B

.field public i:Landroid/database/Cursor;


# direct methods
.method public static d(Landroid/database/Cursor;I)V
    .locals 0

    if-ltz p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x19

    const-string p1, "column index out of range"

    invoke-static {p0, p1}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final M([B)V
    .locals 3

    invoke-virtual {p0}, LM2/h;->a()V

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, LM2/f;->b(II)V

    iget-object v2, p0, LM2/f;->d:[I

    aput v0, v2, v1

    iget-object p0, p0, LM2/f;->h:[[B

    aput-object p1, p0, v1

    return-void
.end method

.method public final b(II)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iget-object v1, p0, LM2/f;->d:[I

    array-length v2, v1

    const-string v3, "copyOf(...)"

    if-ge v2, p2, :cond_0

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, LM2/f;->d:[I

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LM2/f;->h:[[B

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [[B

    iput-object p1, p0, LM2/f;->h:[[B

    goto :goto_0

    :cond_2
    iget-object p1, p0, LM2/f;->g:[Ljava/lang/String;

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, LM2/f;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, LM2/f;->f:[D

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LM2/f;->f:[D

    goto :goto_0

    :cond_4
    iget-object p1, p0, LM2/f;->e:[J

    array-length v0, p1

    if-ge v0, p2, :cond_5

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LM2/f;->e:[J

    :cond_5
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, LM2/f;->i:Landroid/database/Cursor;

    if-nez v0, :cond_0

    new-instance v0, LG5/J2;

    invoke-direct {v0, p0}, LG5/J2;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, LM2/h;->a:LT2/a;

    invoke-interface {v1, v0}, LT2/a;->N(LT2/g;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, LM2/f;->i:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, LM2/h;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LM2/h;->a()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, LM2/f;->d:[I

    new-array v1, v0, [J

    iput-object v1, p0, LM2/f;->e:[J

    new-array v1, v0, [D

    iput-object v1, p0, LM2/f;->f:[D

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, LM2/f;->g:[Ljava/lang/String;

    new-array v0, v0, [[B

    iput-object v0, p0, LM2/f;->h:[[B

    invoke-virtual {p0}, LM2/f;->reset()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LM2/h;->c:Z

    return-void
.end method

.method public final e()Landroid/database/Cursor;
    .locals 1

    iget-object p0, p0, LM2/f;->i:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x15

    const-string v0, "no row"

    invoke-static {p0, v0}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getBlob(I)[B
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->e()Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, p1}, LM2/f;->d(Landroid/database/Cursor;I)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    const-string p1, "getBlob(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getColumnCount()I
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->c()V

    iget-object p0, p0, LM2/f;->i:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->c()V

    iget-object p0, p0, LM2/f;->i:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, LM2/f;->d(Landroid/database/Cursor;I)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getColumnName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLong(I)J
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->e()Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, p1}, LM2/f;->d(Landroid/database/Cursor;I)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final i(IJ)V
    .locals 2

    invoke-virtual {p0}, LM2/h;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LM2/f;->b(II)V

    iget-object v1, p0, LM2/f;->d:[I

    aput v0, v1, p1

    iget-object p0, p0, LM2/f;->e:[J

    aput-wide p2, p0, p1

    return-void
.end method

.method public final isNull(I)Z
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->e()Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, p1}, LM2/f;->d(Landroid/database/Cursor;I)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public final j0(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->e()Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, p1}, LM2/f;->d(Landroid/database/Cursor;I)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(I)V
    .locals 1

    invoke-virtual {p0}, LM2/h;->a()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, LM2/f;->b(II)V

    iget-object p0, p0, LM2/f;->d:[I

    aput v0, p0, p1

    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, LM2/h;->a()V

    iget-object v0, p0, LM2/f;->i:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LM2/f;->i:Landroid/database/Cursor;

    return-void
.end method

.method public final t0()Z
    .locals 1

    invoke-virtual {p0}, LM2/h;->a()V

    invoke-virtual {p0}, LM2/f;->c()V

    iget-object p0, p0, LM2/f;->i:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(ILjava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LM2/h;->a()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, LM2/f;->b(II)V

    iget-object v1, p0, LM2/f;->d:[I

    aput v0, v1, p1

    iget-object p0, p0, LM2/f;->g:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method
