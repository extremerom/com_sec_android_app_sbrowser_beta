.class public abstract Li7/s;
.super Li7/n;
.source "SourceFile"


# instance fields
.field public final c:Ll7/p;


# direct methods
.method public constructor <init>(Ll7/p;)V
    .locals 1

    iget-object v0, p1, Ll7/p;->a:Ll7/u;

    invoke-direct {p0, v0}, Li7/n;-><init>(Ll7/u;)V

    iput-object p1, p0, Li7/s;->c:Ll7/p;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final e(Li7/f;Ln7/b;)V
    .locals 5

    iget-object v0, p1, Li7/f;->f:Li7/B;

    iget-object v1, p0, Li7/s;->c:Ll7/p;

    iget-object v2, v1, Ll7/p;->b:Ll7/r;

    iget-object v3, p0, Li7/n;->b:Ll7/u;

    invoke-virtual {v0, v3}, Li7/B;->m(Ll7/u;)I

    move-result v0

    iget-object v2, v2, Ll7/r;->a:Ll7/t;

    iget-object v3, p1, Li7/f;->e:Li7/B;

    invoke-virtual {v3, v2}, Li7/B;->l(Ll7/t;)I

    move-result v2

    invoke-virtual {p0, p1}, Li7/s;->k(Li7/f;)I

    move-result p1

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/o;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ll7/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v0}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "  class_idx: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v1}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-virtual {p0}, Li7/s;->l()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "  %-10s %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v2}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "  name_idx:  "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v0}, Ln7/b;->k(I)V

    invoke-virtual {p2, p1}, Ln7/b;->k(I)V

    invoke-virtual {p2, v2}, Ln7/b;->j(I)V

    return-void
.end method

.method public abstract k(Li7/f;)I
.end method

.method public abstract l()Ljava/lang/String;
.end method
