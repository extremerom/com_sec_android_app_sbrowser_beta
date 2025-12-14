.class public abstract Li7/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Li7/f;

.field public final c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Li7/f;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    iput-object p1, p0, Li7/C;->a:Ljava/lang/String;

    iput-object p2, p0, Li7/C;->b:Li7/f;

    iput p3, p0, Li7/C;->c:I

    const/4 p1, -0x1

    iput p1, p0, Li7/C;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Li7/C;->e:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid alignment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Li7/p;)I
.end method

.method public final b()I
    .locals 1

    iget p0, p0, Li7/C;->d:I

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract c()Ljava/util/Collection;
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Li7/C;->g()V

    invoke-virtual {p0}, Li7/C;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li7/C;->e:Z

    return-void
.end method

.method public abstract e()V
.end method

.method public final f()V
    .locals 1

    iget-boolean p0, p0, Li7/C;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 1

    iget-boolean p0, p0, Li7/C;->e:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "already prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract h()I
.end method

.method public final i(Ln7/b;)V
    .locals 4

    invoke-virtual {p0}, Li7/C;->f()V

    iget v0, p0, Li7/C;->c:I

    invoke-virtual {p1, v0}, Ln7/b;->a(I)V

    iget v0, p1, Ln7/b;->c:I

    iget v1, p0, Li7/C;->d:I

    if-gez v1, :cond_0

    iput v0, p0, Li7/C;->d:I

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_3

    :goto_0
    invoke-virtual {p1}, Ln7/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\n"

    const/4 v2, 0x0

    iget-object v3, p0, Li7/C;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ln7/b;->b(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v2, v1}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Li7/C;->j(Ln7/b;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alignment mismatch: for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Li7/C;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract j(Ln7/b;)V
.end method
