.class public final Ln9/c;
.super Li9/a;
.source "SourceFile"


# instance fields
.field public e:F

.field public f:Ln9/a;

.field public g:Landroid/graphics/PointF;

.field public h:F

.field public i:F


# virtual methods
.method public final b(Landroid/content/Context;Lbc/d;)Ldb/j;
    .locals 5

    check-cast p2, Ln9/b;

    const-string p0, "appContext"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ln9/i;

    invoke-direct {p0}, Lj9/h;-><init>()V

    invoke-static {}, Lj9/b;->u()Landroid/graphics/RuntimeShader;

    move-result-object p1

    iput-object p1, p0, Ln9/i;->l:Landroid/graphics/RuntimeShader;

    new-instance p1, Ln9/e;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p1, Ln9/h;->a:Ln9/a;

    const-string v1, "revealMode"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lk9/s;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p1, v3}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ln9/e;

    const/4 v2, 0x5

    invoke-direct {p1, p0, v0, v2}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p1, Ln9/h;->f:Landroid/graphics/PointF;

    const-string v2, "pos"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lk9/s;

    const/4 v4, 0x4

    invoke-direct {v3, p0, p1, v4}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ln9/e;

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ln9/e;

    const v0, 0x3ef5c28f    # 0.48f

    const/4 v3, 0x2

    invoke-direct {p1, p0, v0, v3}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ln9/e;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object p1, p2, Ln9/b;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    new-instance p1, Ln9/g;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ln9/g;-><init>(Ln9/i;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ln9/f;

    const/4 v3, 0x2

    invoke-direct {v0, p0, p1, v3}, Ln9/f;-><init>(Ln9/i;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object p1, p2, Ln9/b;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    new-instance p1, Ln9/g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ln9/g;-><init>(Ln9/i;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ln9/f;

    const/4 v3, 0x1

    invoke-direct {v0, p0, p1, v3}, Ln9/f;-><init>(Ln9/i;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :goto_1
    iget-object p1, p2, Ln9/b;->d:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk9/s;

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v2}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ln9/b;->f:F

    new-instance v0, Ln9/e;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ln9/b;->e:F

    new-instance v0, Ln9/e;

    const/4 v2, 0x5

    invoke-direct {v0, p0, p1, v2}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ln9/b;->g:F

    new-instance v0, Ln9/e;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, v2}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ln9/e;

    iget v0, p2, Ln9/b;->h:F

    const/4 v2, 0x4

    invoke-direct {p1, p0, v0, v2}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object p1, p2, Ln9/b;->i:Ln9/a;

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk9/s;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ln9/b;->l:F

    invoke-virtual {p0, p1}, Lj9/h;->g(F)V

    iget p1, p2, Ln9/b;->m:F

    new-instance p2, Ln9/e;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {p0, p2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ldb/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
