.class public final LM2/g;
.super LM2/h;
.source "SourceFile"


# instance fields
.field public final d:LT2/h;


# direct methods
.method public constructor <init>(LT2/a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sql"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LM2/h;-><init>(LT2/a;Ljava/lang/String;)V

    invoke-interface {p1, p2}, LT2/a;->X(Ljava/lang/String;)LT2/h;

    move-result-object p1

    iput-object p1, p0, LM2/g;->d:LT2/h;

    return-void
.end method


# virtual methods
.method public final M([B)V
    .locals 1

    invoke-virtual {p0}, LM2/h;->a()V

    iget-object p0, p0, LM2/g;->d:LT2/h;

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1}, LT2/f;->f0(I[B)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, LM2/g;->d:LT2/h;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LM2/h;->c:Z

    return-void
.end method

.method public final getBlob(I)[B
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getColumnCount()I
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getColumnName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getLong(I)J
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(IJ)V
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    iget-object p0, p0, LM2/g;->d:LT2/h;

    invoke-interface {p0, p1, p2, p3}, LT2/f;->i(IJ)V

    return-void
.end method

.method public final isNull(I)Z
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j0(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    const/16 p0, 0x15

    const-string p1, "no row"

    invoke-static {p0, p1}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(I)V
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    iget-object p0, p0, LM2/g;->d:LT2/h;

    invoke-interface {p0, p1}, LT2/f;->l(I)V

    return-void
.end method

.method public final reset()V
    .locals 0

    return-void
.end method

.method public final t0()Z
    .locals 0

    invoke-virtual {p0}, LM2/h;->a()V

    iget-object p0, p0, LM2/g;->d:LT2/h;

    invoke-interface {p0}, LT2/h;->execute()V

    const/4 p0, 0x0

    return p0
.end method

.method public final x(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LM2/h;->a()V

    iget-object p0, p0, LM2/g;->d:LT2/h;

    invoke-interface {p0, p1, p2}, LT2/f;->U(ILjava/lang/String;)V

    return-void
.end method
