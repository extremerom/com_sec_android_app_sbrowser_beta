.class public final LU/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/x;


# instance fields
.field public final synthetic a:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/h;->a:Lm0/d;

    return-void
.end method


# virtual methods
.method public final a(LB0/I;Ljava/util/List;J)Lz0/y;
    .locals 14

    move-object v8, p1

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    sget-object v9, Lfb/w;->a:Lfb/w;

    if-eqz v0, :cond_0

    invoke-static/range {p3 .. p4}, LH0/a;->d(J)I

    move-result v0

    invoke-static/range {p3 .. p4}, LH0/a;->c(J)I

    move-result v1

    sget-object v2, LU/f;->b:LU/f;

    invoke-virtual {p1, v0, v1, v9, v2}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static/range {p3 .. p4}, LH0/a;->b(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, LH0/a;->a(J)I

    move-result v3

    const/16 v4, 0x29

    const v5, 0x7fffffff

    if-gez v1, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maxWidth("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be >= minWidth("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-gez v3, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxHeight("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must be >= minHeight("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    invoke-static {v0, v1, v0, v3}, LG5/R2;->d(IIII)J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    move-object v5, p0

    iget-object v6, v5, LU/h;->a:Lm0/d;

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lz0/w;

    invoke-interface {v2}, Lz0/w;->e()Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lz0/w;->o(J)Lz0/G;

    move-result-object v1

    invoke-static/range {p3 .. p4}, LH0/a;->d(J)I

    move-result v0

    iget v3, v1, Lz0/G;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static/range {p3 .. p4}, LH0/a;->c(J)I

    move-result v0

    iget v3, v1, Lz0/G;->b:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-instance v11, LU/g;

    move-object v0, v11

    move-object v3, p1

    move v4, v7

    move v5, v10

    invoke-direct/range {v0 .. v6}, LU/g;-><init>(Lz0/G;Lz0/w;LB0/I;IILm0/d;)V

    invoke-virtual {p1, v7, v10, v9, v11}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lz0/G;

    new-instance v5, Ltb/u;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p3 .. p4}, LH0/a;->d(J)I

    move-result v7

    iput v7, v5, Ltb/u;->a:I

    new-instance v7, Ltb/u;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p3 .. p4}, LH0/a;->c(J)I

    move-result v10

    iput v10, v7, Ltb/u;->a:I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v0, v10, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lz0/w;

    invoke-interface {v11}, Lz0/w;->e()Ljava/lang/Object;

    invoke-interface {v11, v3, v4}, Lz0/w;->o(J)Lz0/G;

    move-result-object v11

    aput-object v11, v1, v0

    iget v12, v5, Ltb/u;->a:I

    iget v13, v11, Lz0/G;->a:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v5, Ltb/u;->a:I

    iget v12, v7, Ltb/u;->a:I

    iget v11, v11, Lz0/G;->b:I

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Ltb/u;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v10, v5, Ltb/u;->a:I

    iget v11, v7, Ltb/u;->a:I

    new-instance v12, LQ/D;

    const/4 v13, 0x1

    move-object v0, v12

    move-object/from16 v2, p2

    move-object v3, p1

    move-object v4, v5

    move-object v5, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, LQ/D;-><init>(Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v10, v11, v9, v12}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object v0

    return-object v0
.end method
