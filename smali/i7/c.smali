.class public final Li7/c;
.super Li7/o;
.source "SourceFile"


# instance fields
.field public final b:Ll7/u;

.field public final c:I

.field public final d:Ll7/u;

.field public e:Li7/G;

.field public final f:Ll7/t;

.field public final g:Li7/b;

.field public h:Li7/g;

.field public final i:Li7/a;


# direct methods
.method public constructor <init>(Ll7/u;ILl7/u;Lm7/e;Ll7/t;)V
    .locals 0

    invoke-direct {p0}, Li7/o;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    iput-object p1, p0, Li7/c;->b:Ll7/u;

    iput p2, p0, Li7/c;->c:I

    iput-object p3, p0, Li7/c;->d:Ll7/u;

    move-object p2, p4

    check-cast p2, Ln7/e;

    iget-object p2, p2, Ln7/e;->b:[Ljava/lang/Object;

    array-length p2, p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance p2, Li7/G;

    invoke-direct {p2, p4}, Li7/G;-><init>(Lm7/e;)V

    :goto_0
    iput-object p2, p0, Li7/c;->e:Li7/G;

    iput-object p5, p0, Li7/c;->f:Ll7/t;

    new-instance p2, Li7/b;

    invoke-direct {p2, p1}, Li7/b;-><init>(Ll7/u;)V

    iput-object p2, p0, Li7/c;->g:Li7/b;

    iput-object p3, p0, Li7/c;->h:Li7/g;

    new-instance p1, Li7/a;

    const/4 p2, 0x4

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3}, Li7/z;-><init>(II)V

    iput-object p1, p0, Li7/c;->i:Li7/a;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "interfaces == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "thisClass == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 3

    iget-object v0, p1, Li7/f;->f:Li7/B;

    iget-object v1, p0, Li7/c;->b:Ll7/u;

    invoke-virtual {v0, v1}, Li7/B;->p(Ll7/u;)V

    iget-object v1, p0, Li7/c;->g:Li7/b;

    invoke-virtual {v1}, Li7/b;->s()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Li7/f;->k:Li7/y;

    invoke-virtual {v2, v1}, Li7/y;->k(Li7/z;)V

    invoke-virtual {v1}, Li7/b;->r()Ll7/c;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Li7/g;

    invoke-direct {v2, v1}, Li7/g;-><init>(Ll7/c;)V

    iget-object v1, p1, Li7/f;->l:Li7/y;

    invoke-virtual {v1, v2}, Li7/y;->l(Li7/z;)Li7/z;

    move-result-object v1

    check-cast v1, Li7/g;

    iput-object v1, p0, Li7/c;->h:Li7/g;

    :cond_0
    iget-object v1, p0, Li7/c;->d:Ll7/u;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Li7/B;->p(Ll7/u;)V

    :cond_1
    iget-object v0, p0, Li7/c;->e:Li7/G;

    if-eqz v0, :cond_2

    iget-object v1, p1, Li7/f;->b:Li7/y;

    invoke-virtual {v1, v0}, Li7/y;->l(Li7/z;)Li7/z;

    move-result-object v0

    check-cast v0, Li7/G;

    iput-object v0, p0, Li7/c;->e:Li7/G;

    :cond_2
    iget-object v0, p0, Li7/c;->f:Ll7/t;

    if-eqz v0, :cond_3

    iget-object p1, p1, Li7/f;->e:Li7/B;

    invoke-virtual {p1, v0}, Li7/B;->o(Ll7/t;)V

    :cond_3
    iget-object p0, p0, Li7/c;->i:Li7/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_CLASS_DEF_ITEM:Li7/q;

    return-object p0
.end method

.method public final d()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public final e(Li7/f;Ln7/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ln7/b;->d()Z

    move-result v3

    iget-object v4, v1, Li7/f;->f:Li7/B;

    iget-object v5, v0, Li7/c;->b:Ll7/u;

    invoke-virtual {v4, v5}, Li7/B;->m(Ll7/u;)I

    move-result v6

    const/4 v7, -0x1

    iget-object v8, v0, Li7/c;->d:Ll7/u;

    if-nez v8, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v8}, Li7/B;->m(Ll7/u;)I

    move-result v4

    :goto_0
    iget-object v9, v0, Li7/c;->e:Li7/G;

    const/4 v10, 0x0

    if-nez v9, :cond_1

    move v9, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Li7/z;->g()I

    move-result v9

    :goto_1
    iget-object v11, v0, Li7/c;->i:Li7/a;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Li7/c;->f:Ll7/t;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v1, Li7/f;->e:Li7/B;

    invoke-virtual {v1, v11}, Li7/B;->l(Ll7/t;)I

    move-result v7

    :goto_2
    iget-object v1, v0, Li7/c;->g:Li7/b;

    invoke-virtual {v1}, Li7/b;->s()Z

    move-result v12

    if-eqz v12, :cond_3

    move v1, v10

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Li7/z;->g()I

    move-result v1

    :goto_3
    iget-object v12, v0, Li7/c;->h:Li7/g;

    if-nez v12, :cond_4

    move v12, v10

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Li7/z;->g()I

    move-result v12

    :goto_4
    iget v13, v0, Li7/c;->c:I

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Li7/o;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v5, Ll7/u;->a:Lm7/c;

    invoke-virtual {v5}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v6}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "  class_idx:           "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3}, Ln7/b;->b(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "  access_flags:        "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x7631

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, LG5/a4;->b(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ln7/b;->b(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "  superclass_idx:      "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " // "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "<none>"

    if-nez v8, :cond_5

    move-object v8, v15

    goto :goto_5

    :cond_5
    iget-object v8, v8, Ll7/u;->a:Lm7/c;

    invoke-virtual {v8}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v9}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "  interfaces_off:      "

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ln7/b;->b(ILjava/lang/String;)V

    if-eqz v9, :cond_6

    iget-object v0, v0, Li7/c;->e:Li7/G;

    iget-object v0, v0, Li7/G;->e:Lm7/e;

    move-object v3, v0

    check-cast v3, Ln7/e;

    iget-object v3, v3, Ln7/e;->b:[Ljava/lang/Object;

    array-length v3, v3

    move v8, v10

    :goto_6
    if-ge v8, v3, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "    "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v10

    invoke-virtual {v10}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ln7/b;->b(ILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x4

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  source_file_idx:     "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v11}, Ll7/t;->a()Ljava/lang/String;

    move-result-object v15

    :goto_7
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Ln7/b;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "  annotations_off:     "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "  class_data_off:      "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v12}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "  static_values_off:   "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_8
    invoke-virtual {v2, v6}, Ln7/b;->j(I)V

    invoke-virtual {v2, v13}, Ln7/b;->j(I)V

    invoke-virtual {v2, v4}, Ln7/b;->j(I)V

    invoke-virtual {v2, v9}, Ln7/b;->j(I)V

    invoke-virtual {v2, v7}, Ln7/b;->j(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ln7/b;->j(I)V

    invoke-virtual {v2, v1}, Ln7/b;->j(I)V

    invoke-virtual {v2, v12}, Ln7/b;->j(I)V

    return-void
.end method
