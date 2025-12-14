.class public final Lg7/f;
.super Lg7/k;
.source "SourceFile"


# instance fields
.field public final f:Ll7/a;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lg7/i;Lk7/p;Lk7/l;Ll7/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lg7/f;->f:Ll7/a;

    const/4 p1, -0x1

    iput p1, p0, Lg7/f;->g:I

    iput p1, p0, Lg7/f;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "constant == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg7/f;->f:Ll7/a;

    invoke-interface {p0}, Ln7/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lg7/i;)Lg7/g;
    .locals 4

    new-instance v0, Lg7/f;

    iget-object v1, p0, Lg7/f;->f:Ll7/a;

    iget-object v2, p0, Lg7/g;->c:Lk7/p;

    iget-object v3, p0, Lg7/g;->d:Lk7/l;

    invoke-direct {v0, p1, v2, v3, v1}, Lg7/f;-><init>(Lg7/i;Lk7/p;Lk7/l;Ll7/a;)V

    iget p1, p0, Lg7/f;->g:I

    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lg7/f;->n(I)V

    :cond_0
    iget p0, p0, Lg7/f;->h:I

    if-ltz p0, :cond_1

    invoke-virtual {v0, p0}, Lg7/f;->m(I)V

    :cond_1
    return-object v0
.end method

.method public final i(Lk7/l;)Lg7/g;
    .locals 4

    new-instance v0, Lg7/f;

    iget-object v1, p0, Lg7/g;->b:Lg7/i;

    iget-object v2, p0, Lg7/g;->c:Lk7/p;

    iget-object v3, p0, Lg7/f;->f:Ll7/a;

    invoke-direct {v0, v1, v2, p1, v3}, Lg7/f;-><init>(Lg7/i;Lk7/p;Lk7/l;Ll7/a;)V

    iget p1, p0, Lg7/f;->g:I

    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lg7/f;->n(I)V

    :cond_0
    iget p0, p0, Lg7/f;->h:I

    if-ltz p0, :cond_1

    invoke-virtual {v0, p0}, Lg7/f;->m(I)V

    :cond_1
    return-object v0
.end method

.method public final l()I
    .locals 3

    iget v0, p0, Lg7/f;->g:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index not yet set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg7/f;->f:Ll7/a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lg7/f;->h:I

    if-gez v0, :cond_0

    iput p1, p0, Lg7/f;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "class index already set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lg7/f;->g:I

    if-gez v0, :cond_0

    iput p1, p0, Lg7/f;->g:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "index already set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
