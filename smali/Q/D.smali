.class public final LQ/D;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p7, p0, LQ/D;->a:I

    iput-object p1, p0, LQ/D;->b:Ljava/io/Serializable;

    iput-object p2, p0, LQ/D;->c:Ljava/lang/Object;

    iput-object p3, p0, LQ/D;->d:Ljava/lang/Object;

    iput-object p4, p0, LQ/D;->e:Ljava/lang/Object;

    iput-object p5, p0, LQ/D;->f:Ljava/lang/Object;

    iput-object p6, p0, LQ/D;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ldb/r;->a:Ldb/r;

    iget-object v2, v0, LQ/D;->g:Ljava/lang/Object;

    iget-object v3, v0, LQ/D;->e:Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, LQ/D;->b:Ljava/io/Serializable;

    iget-object v6, v0, LQ/D;->f:Ljava/lang/Object;

    iget-object v7, v0, LQ/D;->d:Ljava/lang/Object;

    iget v8, v0, LQ/D;->a:I

    packed-switch v8, :pswitch_data_0

    move-object/from16 v8, p1

    check-cast v8, Lz0/F;

    const-string v9, "$this$layout"

    invoke-static {v8, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, [Lz0/G;

    array-length v8, v5

    move v9, v4

    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v10, v5, v4

    add-int/lit8 v11, v9, 0x1

    const-string v12, "null cannot be cast to non-null type androidx.compose.ui.layout.Placeable"

    invoke-static {v10, v12}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, LQ/D;->c:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz0/w;

    move-object v12, v7

    check-cast v12, LB0/I;

    invoke-interface {v12}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v18

    move-object v12, v3

    check-cast v12, Ltb/u;

    iget v12, v12, Ltb/u;->a:I

    move-object v13, v6

    check-cast v13, Ltb/u;

    iget v13, v13, Ltb/u;->a:I

    move-object v14, v2

    check-cast v14, Lm0/d;

    sget-object v15, LU/i;->a:LU/h;

    invoke-interface {v9}, Lz0/w;->e()Ljava/lang/Object;

    iget v9, v10, Lz0/G;->a:I

    iget v15, v10, Lz0/G;->b:I

    invoke-static {v9, v15}, LG5/V2;->a(II)J

    move-result-wide v15

    invoke-static {v12, v13}, LG5/V2;->a(II)J

    move-result-wide v19

    move-object v13, v14

    move-wide v14, v15

    move-wide/from16 v16, v19

    invoke-virtual/range {v13 .. v18}, Lm0/d;->a(JJLH0/k;)J

    move-result-wide v12

    const/4 v9, 0x0

    invoke-static {v10, v12, v13, v9}, Lz0/F;->d(Lz0/G;JF)V

    add-int/lit8 v4, v4, 0x1

    move v9, v11

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_0
    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    new-instance v8, LQ/g;

    move-object v9, v7

    check-cast v9, LQ/e;

    invoke-interface {v9}, LQ/e;->e()LA7/h;

    move-result-object v11

    invoke-interface {v9}, LQ/e;->g()Ljava/lang/Object;

    move-result-object v15

    new-instance v13, LQ/C;

    move-object v9, v6

    check-cast v9, LQ/i;

    invoke-direct {v13, v9, v4}, LQ/C;-><init>(LQ/i;I)V

    move-object v12, v3

    check-cast v12, LQ/m;

    iget-object v10, v0, LQ/D;->c:Ljava/lang/Object;

    move-object v9, v8

    move-object v0, v13

    move-wide/from16 v13, v19

    move-wide/from16 v16, v19

    move-object/from16 v18, v0

    invoke-direct/range {v9 .. v18}, LQ/g;-><init>(Ljava/lang/Object;LA7/h;LQ/m;JLjava/lang/Object;JLsb/a;)V

    move-object v14, v2

    check-cast v14, Lsb/k;

    move-object v12, v7

    check-cast v12, LQ/e;

    move-object v13, v6

    check-cast v13, LQ/i;

    move-object v9, v8

    move-wide/from16 v10, v19

    invoke-static/range {v9 .. v14}, LG5/x;->g(LQ/g;JLQ/e;LQ/i;Lsb/k;)V

    check-cast v5, Ltb/w;

    iput-object v8, v5, Ltb/w;->a:Ljava/lang/Object;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
