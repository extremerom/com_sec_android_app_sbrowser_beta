.class public final Li7/A;
.super Li7/o;
.source "SourceFile"


# instance fields
.field public final b:Lm7/a;

.field public final c:Ll7/t;

.field public d:Li7/G;


# direct methods
.method public constructor <init>(Lm7/a;)V
    .locals 7

    invoke-direct {p0}, Li7/o;-><init>()V

    if-eqz p1, :cond_4

    iput-object p1, p0, Li7/A;->b:Lm7/a;

    iget-object v0, p1, Lm7/a;->c:Lm7/b;

    iget-object v1, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p1, p1, Lm7/a;->b:Lm7/c;

    iget-object p1, p1, Lm7/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x4c

    const/16 v5, 0x5b

    if-ne p1, v5, :cond_0

    move p1, v4

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    :goto_0
    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm7/c;

    iget-object v6, v6, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    move v6, v4

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ll7/t;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ll7/t;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Li7/A;->c:Ll7/t;

    iget-object p1, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length p1, p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    new-instance p1, Li7/G;

    invoke-direct {p1, v0}, Li7/G;-><init>(Lm7/e;)V

    :goto_1
    iput-object p1, p0, Li7/A;->d:Li7/G;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "prototype == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 3

    iget-object v0, p1, Li7/f;->e:Li7/B;

    iget-object v1, p0, Li7/A;->b:Lm7/a;

    iget-object v1, v1, Lm7/a;->b:Lm7/c;

    iget-object v2, p1, Li7/f;->f:Li7/B;

    invoke-virtual {v2, v1}, Li7/B;->q(Lm7/c;)V

    iget-object v1, p0, Li7/A;->c:Ll7/t;

    invoke-virtual {v0, v1}, Li7/B;->o(Ll7/t;)V

    iget-object v0, p0, Li7/A;->d:Li7/G;

    if-eqz v0, :cond_0

    iget-object p1, p1, Li7/f;->b:Li7/y;

    invoke-virtual {p1, v0}, Li7/y;->l(Li7/z;)Li7/z;

    move-result-object p1

    check-cast p1, Li7/G;

    iput-object p1, p0, Li7/A;->d:Li7/G;

    :cond_0
    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_PROTO_ID_ITEM:Li7/q;

    return-object p0
.end method

.method public final d()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final e(Li7/f;Ln7/b;)V
    .locals 10

    iget-object v0, p1, Li7/f;->e:Li7/B;

    iget-object v1, p0, Li7/A;->c:Ll7/t;

    invoke-virtual {v0, v1}, Li7/B;->l(Ll7/t;)I

    move-result v0

    iget-object v2, p0, Li7/A;->b:Lm7/a;

    iget-object v3, v2, Lm7/a;->b:Lm7/c;

    iget-object p1, p1, Li7/f;->f:Li7/B;

    invoke-virtual {p1, v3}, Li7/B;->n(Lm7/c;)I

    move-result p1

    iget-object v3, p0, Li7/A;->d:Li7/G;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Li7/z;->g()I

    move-result v3

    :goto_0
    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lm7/a;->b:Lm7/c;

    invoke-virtual {v6}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " proto("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lm7/a;->c:Lm7/b;

    iget-object v7, v2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v7, v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    if-eqz v8, :cond_1

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v8}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm7/c;

    invoke-virtual {v9}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/o;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Ln7/b;->b(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "  shorty_idx:      "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " // "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ll7/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p2, v1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "  return_type_idx: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v3}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "  parameters_off:  "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p2, v0}, Ln7/b;->j(I)V

    invoke-virtual {p2, p1}, Ln7/b;->j(I)V

    invoke-virtual {p2, v3}, Ln7/b;->j(I)V

    return-void
.end method
