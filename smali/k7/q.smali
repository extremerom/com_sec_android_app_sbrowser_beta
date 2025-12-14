.class public final Lk7/q;
.super Lk7/c;
.source "SourceFile"


# instance fields
.field public final f:Lm7/e;


# direct methods
.method public constructor <init>(Lk7/n;Lk7/p;Lk7/l;Lm7/e;Ll7/a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lk7/c;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;Ll7/a;)V

    const/4 p2, 0x6

    iget p1, p1, Lk7/n;->e:I

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lk7/q;->f:Lm7/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "catches == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus branchingness"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lk7/e;)V
    .locals 0

    invoke-interface {p1, p0}, Lk7/e;->b(Lk7/q;)V

    return-void
.end method

.method public final d()Lm7/e;
    .locals 0

    iget-object p0, p0, Lk7/q;->f:Lm7/e;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk7/c;->e:Ll7/a;

    invoke-interface {v0}, Ln7/h;->a()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ll7/t;

    if-eqz v2, :cond_0

    check-cast v0, Ll7/t;

    invoke-virtual {v0}, Ll7/t;->g()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, " "

    invoke-static {v1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lk7/q;->f:Lm7/e;

    invoke-static {p0}, Lk7/r;->f(Lm7/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
