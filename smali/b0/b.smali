.class public final Lb0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La0/q;

.field public b:Lb0/a;

.field public c:Z

.field public final d:LB0/n;

.field public final e:Z

.field public f:I

.field public g:I

.field public final h:La0/J0;

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(La0/q;Lb0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/b;->a:La0/q;

    iput-object p2, p0, Lb0/b;->b:Lb0/a;

    new-instance p1, LB0/n;

    invoke-direct {p1}, LB0/n;-><init>()V

    iput-object p1, p0, Lb0/b;->d:LB0/n;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb0/b;->e:Z

    new-instance p1, La0/J0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, La0/J0;-><init>(I)V

    iput-object p1, p0, Lb0/b;->h:La0/J0;

    const/4 p1, -0x1

    iput p1, p0, Lb0/b;->i:I

    iput p1, p0, Lb0/b;->j:I

    iput p1, p0, Lb0/b;->k:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lb0/b;->c()V

    iget-object v0, p0, Lb0/b;->h:La0/J0;

    iget-object v1, v0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, v0, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v0, p0, Lb0/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb0/b;->g:I

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lb0/b;->g:I

    const-string v3, ")."

    const-string v4, " object arguments ("

    const-string v5, ") and "

    const-string v6, " int arguments ("

    const-string v7, ". Not all arguments were provided. Missing "

    const-string v8, "Error while pushing "

    const-string v9, "StringBuilder().apply(builderAction).toString()"

    const-string v10, ", "

    const/4 v11, 0x0

    if-lez v1, :cond_7

    iget-object v13, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lb0/A;->c:Lb0/A;

    iget-object v13, v13, Lb0/a;->b:Lb0/D;

    invoke-virtual {v13, v14}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v13, v11, v1}, LD/a;->n(Lb0/D;II)V

    iget v1, v13, Lb0/D;->h:I

    iget v15, v14, Lb0/C;->a:I

    invoke-static {v13, v15}, Lb0/D;->e(Lb0/D;I)I

    move-result v2

    iget v12, v14, Lb0/C;->b:I

    if-ne v1, v2, :cond_0

    iget v1, v13, Lb0/D;->i:I

    invoke-static {v13, v12}, Lb0/D;->e(Lb0/D;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iput v11, v0, Lb0/b;->g:I

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v11

    move v2, v1

    :goto_0
    if-ge v1, v15, :cond_3

    const/16 v16, 0x1

    shl-int v17, v16, v1

    iget v11, v13, Lb0/D;->h:I

    and-int v11, v17, v11

    if-eqz v11, :cond_2

    if-lez v2, :cond_1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v14, v1}, Lb0/A;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v11, v12, :cond_6

    const/16 v16, 0x1

    shl-int v17, v16, v11

    move/from16 v19, v12

    iget v12, v13, Lb0/D;->i:I

    and-int v12, v17, v12

    if-eqz v12, :cond_5

    if-lez v2, :cond_4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v14, v11}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v19

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v6, v0, v5}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v15, v4, v1, v3}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_7
    :goto_2
    iget-object v1, v0, Lb0/b;->h:La0/J0;

    iget-object v2, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, v0, Lb0/b;->b:Lb0/a;

    iget-object v1, v1, La0/J0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v2, :cond_8

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    sget-object v2, Lb0/g;->c:Lb0/g;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v2}, Lb0/D;->l(Lb0/C;)V

    const/4 v12, 0x0

    invoke-static {v0, v12, v11}, LD/a;->o(Lb0/D;ILjava/lang/Object;)V

    iget v11, v0, Lb0/D;->h:I

    iget v13, v2, Lb0/C;->a:I

    invoke-static {v0, v13}, Lb0/D;->e(Lb0/D;I)I

    move-result v14

    iget v15, v2, Lb0/C;->b:I

    if-ne v11, v14, :cond_a

    iget v11, v0, Lb0/D;->i:I

    invoke-static {v0, v15}, Lb0/D;->e(Lb0/D;I)I

    move-result v14

    if-ne v11, v14, :cond_a

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v12

    move v14, v11

    :goto_5
    if-ge v11, v13, :cond_d

    const/16 v16, 0x1

    shl-int v17, v16, v11

    iget v12, v0, Lb0/D;->h:I

    and-int v12, v17, v12

    if-eqz v12, :cond_c

    if-lez v14, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v2, v11}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    :cond_c
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v12, v15, :cond_10

    const/16 v16, 0x1

    shl-int v17, v16, v12

    move/from16 v18, v15

    iget v15, v0, Lb0/D;->i:I

    and-int v15, v17, v15

    if-eqz v15, :cond_f

    if-lez v14, :cond_e

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v2, v12}, Lb0/g;->c(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v18

    goto :goto_6

    :cond_10
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v14, v6, v1, v5}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v13, v4, v0, v3}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_11
    :goto_7
    return-void
.end method

.method public final c()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lb0/b;->l:I

    if-lez v1, :cond_f

    iget v2, v0, Lb0/b;->i:I

    const-string v4, ")."

    const-string v5, " object arguments ("

    const-string v6, ") and "

    const-string v7, " int arguments ("

    const-string v8, ". Not all arguments were provided. Missing "

    const-string v9, "Error while pushing "

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    const-string v11, ", "

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ltz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lb0/b;->b()V

    iget-object v15, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lb0/t;->c:Lb0/t;

    iget-object v15, v15, Lb0/a;->b:Lb0/D;

    invoke-virtual {v15, v3}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v15, v13, v2}, LD/a;->n(Lb0/D;II)V

    invoke-static {v15, v14, v1}, LD/a;->n(Lb0/D;II)V

    iget v1, v15, Lb0/D;->h:I

    iget v2, v3, Lb0/C;->a:I

    invoke-static {v15, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v13

    iget v14, v3, Lb0/C;->b:I

    if-ne v1, v13, :cond_0

    iget v1, v15, Lb0/D;->i:I

    invoke-static {v15, v14}, Lb0/D;->e(Lb0/D;I)I

    move-result v13

    if-ne v1, v13, :cond_0

    iput v12, v0, Lb0/b;->i:I

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    const/4 v13, 0x1

    shl-int v18, v13, v1

    iget v13, v15, Lb0/D;->h:I

    and-int v13, v18, v13

    if-eqz v13, :cond_2

    if-lez v12, :cond_1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v1}, Lb0/t;->b(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_6

    const/16 v16, 0x1

    shl-int v18, v16, v13

    move/from16 v19, v14

    iget v14, v15, Lb0/D;->i:I

    and-int v14, v18, v14

    if-eqz v14, :cond_5

    if-lez v12, :cond_4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3, v13}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v19

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v12, v7, v0, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v2, v5, v1, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_7
    iget v2, v0, Lb0/b;->k:I

    iget v3, v0, Lb0/b;->j:I

    invoke-virtual/range {p0 .. p0}, Lb0/b;->b()V

    iget-object v13, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lb0/q;->c:Lb0/q;

    iget-object v13, v13, Lb0/a;->b:Lb0/D;

    invoke-virtual {v13, v14}, Lb0/D;->l(Lb0/C;)V

    const/4 v15, 0x1

    invoke-static {v13, v15, v2}, LD/a;->n(Lb0/D;II)V

    const/4 v2, 0x0

    invoke-static {v13, v2, v3}, LD/a;->n(Lb0/D;II)V

    const/4 v2, 0x2

    invoke-static {v13, v2, v1}, LD/a;->n(Lb0/D;II)V

    iget v1, v13, Lb0/D;->h:I

    iget v2, v14, Lb0/C;->a:I

    invoke-static {v13, v2}, Lb0/D;->e(Lb0/D;I)I

    move-result v3

    iget v15, v14, Lb0/C;->b:I

    if-ne v1, v3, :cond_8

    iget v1, v13, Lb0/D;->i:I

    invoke-static {v13, v15}, Lb0/D;->e(Lb0/D;I)I

    move-result v3

    if-ne v1, v3, :cond_8

    iput v12, v0, Lb0/b;->j:I

    iput v12, v0, Lb0/b;->k:I

    goto/16 :goto_0

    :goto_3
    iput v1, v0, Lb0/b;->l:I

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    move v12, v3

    :goto_4
    if-ge v3, v2, :cond_b

    const/16 v16, 0x1

    shl-int v18, v16, v3

    iget v1, v13, Lb0/D;->h:I

    and-int v1, v18, v1

    if-eqz v1, :cond_a

    if-lez v12, :cond_9

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v14, v3}, Lb0/q;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v15, :cond_e

    const/16 v16, 0x1

    shl-int v17, v16, v2

    move/from16 v18, v15

    iget v15, v13, Lb0/D;->i:I

    and-int v15, v17, v15

    if-eqz v15, :cond_d

    if-lez v12, :cond_c

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v14, v2}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v18

    goto :goto_5

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v7, v0, v6}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v5, v1, v4}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_f
    :goto_6
    return-void
.end method

.method public final d(Z)V
    .locals 12

    iget-object v0, p0, Lb0/b;->a:La0/q;

    if-eqz p1, :cond_0

    iget-object p1, v0, La0/q;->F:La0/v0;

    iget p1, p1, La0/v0;->i:I

    goto :goto_0

    :cond_0
    iget-object p1, v0, La0/q;->F:La0/v0;

    iget p1, p1, La0/v0;->g:I

    :goto_0
    iget v0, p0, Lb0/b;->f:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_a

    if-lez v0, :cond_9

    iget-object v3, p0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lb0/d;->c:Lb0/d;

    iget-object v3, v3, Lb0/a;->b:Lb0/D;

    invoke-virtual {v3, v5}, Lb0/D;->l(Lb0/C;)V

    invoke-static {v3, v1, v0}, LD/a;->n(Lb0/D;II)V

    iget v0, v3, Lb0/D;->h:I

    iget v6, v5, Lb0/C;->a:I

    invoke-static {v3, v6}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    iget v8, v5, Lb0/C;->b:I

    if-ne v0, v7, :cond_2

    iget v0, v3, Lb0/D;->i:I

    invoke-static {v3, v8}, Lb0/D;->e(Lb0/D;I)I

    move-result v7

    if-ne v0, v7, :cond_2

    iput p1, p0, Lb0/b;->f:I

    goto/16 :goto_4

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v1

    move v0, p1

    :goto_2
    const-string v7, ", "

    if-ge p1, v6, :cond_5

    shl-int v9, v2, p1

    iget v10, v3, Lb0/D;->h:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_4

    if-lez v0, :cond_3

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v5, p1}, Lb0/d;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LV0/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v9, v1

    :goto_3
    if-ge v1, v8, :cond_8

    shl-int v10, v2, v1

    iget v11, v3, Lb0/D;->i:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    if-lez v0, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v5, v1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Error while pushing "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Not all arguments were provided. Missing "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " int arguments ("

    const-string v3, ") and "

    invoke-static {p1, v0, v2, p0, v3}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v0, ")."

    invoke-static {p1, v9, p0, v1, v0}, LV0/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_4
    return-void

    :cond_a
    const-string p0, "Tried to seek backward"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v4
.end method

.method public final e(II)V
    .locals 1

    if-lez p2, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lb0/b;->i:I

    if-ne v0, p1, :cond_1

    iget p1, p0, Lb0/b;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lb0/b;->l:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lb0/b;->c()V

    iput p1, p0, Lb0/b;->i:I

    iput p2, p0, Lb0/b;->l:I

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Invalid remove index "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
