.class public abstract LEc/s;
.super LG5/s2;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, LEc/i;

    sget-object v6, LEc/t;->i:Lhc/f;

    sget-object v7, LEc/m;->e:LEc/m;

    new-instance v8, LEc/y;

    invoke-direct {v8, v4}, LEc/y;-><init>(I)V

    new-array v9, v2, [LEc/e;

    aput-object v7, v9, v3

    aput-object v8, v9, v4

    invoke-direct {v5, v6, v9}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v6, LEc/i;

    sget-object v8, LEc/t;->j:Lhc/f;

    new-instance v9, LEc/y;

    invoke-direct {v9, v2}, LEc/y;-><init>(I)V

    new-array v10, v2, [LEc/e;

    aput-object v7, v10, v3

    aput-object v9, v10, v4

    sget-object v9, LEc/h;->e:LEc/h;

    invoke-direct {v6, v8, v10, v9}, LEc/i;-><init>(Lhc/f;[LEc/e;Lsb/k;)V

    new-instance v8, LEc/i;

    sget-object v9, LEc/t;->a:Lhc/f;

    sget-object v10, LEc/l;->c:LEc/l;

    new-instance v11, LEc/y;

    invoke-direct {v11, v2}, LEc/y;-><init>(I)V

    sget-object v12, LEc/l;->b:LEc/l;

    new-array v13, v0, [LEc/e;

    aput-object v7, v13, v3

    aput-object v10, v13, v4

    aput-object v11, v13, v2

    aput-object v12, v13, v1

    invoke-direct {v8, v9, v13}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v9, LEc/i;

    sget-object v11, LEc/t;->b:Lhc/f;

    new-instance v13, LEc/y;

    invoke-direct {v13, v1}, LEc/y;-><init>(I)V

    new-array v14, v0, [LEc/e;

    aput-object v7, v14, v3

    aput-object v10, v14, v4

    aput-object v13, v14, v2

    aput-object v12, v14, v1

    invoke-direct {v9, v11, v14}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v11, LEc/i;

    sget-object v13, LEc/t;->c:Lhc/f;

    new-instance v14, LEc/y;

    invoke-direct {v14}, LEc/y;-><init>()V

    new-array v15, v0, [LEc/e;

    aput-object v7, v15, v3

    aput-object v10, v15, v4

    aput-object v14, v15, v2

    aput-object v12, v15, v1

    invoke-direct {v11, v13, v15}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v12, LEc/i;

    sget-object v13, LEc/t;->g:Lhc/f;

    new-array v14, v4, [LEc/e;

    aput-object v7, v14, v3

    invoke-direct {v12, v13, v14}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v13, LEc/i;

    sget-object v14, LEc/t;->f:Lhc/f;

    sget-object v15, LEc/z;->e:LEc/z;

    sget-object v16, LEc/u;->c:LEc/u;

    new-array v1, v0, [LEc/e;

    aput-object v7, v1, v3

    aput-object v15, v1, v4

    aput-object v10, v1, v2

    const/16 v17, 0x3

    aput-object v16, v1, v17

    invoke-direct {v13, v14, v1}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v1, LEc/i;

    sget-object v14, LEc/t;->h:Lhc/f;

    sget-object v18, LEc/z;->d:LEc/z;

    new-array v0, v2, [LEc/e;

    aput-object v7, v0, v3

    aput-object v18, v0, v4

    invoke-direct {v1, v14, v0}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v0, LEc/i;

    sget-object v14, LEc/t;->k:Lhc/f;

    move-object/from16 v20, v1

    new-array v1, v2, [LEc/e;

    aput-object v7, v1, v3

    aput-object v18, v1, v4

    invoke-direct {v0, v14, v1}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v14, LEc/i;

    sget-object v1, LEc/t;->l:Lhc/f;

    move-object/from16 v22, v0

    const/4 v2, 0x3

    new-array v0, v2, [LEc/e;

    aput-object v7, v0, v3

    aput-object v18, v0, v4

    const/16 v21, 0x2

    aput-object v16, v0, v21

    invoke-direct {v14, v1, v0}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v0, LEc/i;

    sget-object v1, LEc/t;->p:Lhc/f;

    move-object/from16 v16, v14

    new-array v14, v2, [LEc/e;

    aput-object v7, v14, v3

    aput-object v15, v14, v4

    aput-object v10, v14, v21

    invoke-direct {v0, v1, v14}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v1, LEc/i;

    sget-object v14, LEc/t;->q:Lhc/f;

    move-object/from16 v23, v0

    new-array v0, v2, [LEc/e;

    aput-object v7, v0, v3

    aput-object v15, v0, v4

    aput-object v10, v0, v21

    invoke-direct {v1, v14, v0}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v0, LEc/i;

    sget-object v2, LEc/t;->d:Lhc/f;

    new-array v14, v4, [LEc/e;

    sget-object v24, LEc/m;->d:LEc/m;

    aput-object v24, v14, v3

    sget-object v4, LEc/h;->f:LEc/h;

    invoke-direct {v0, v2, v14, v4}, LEc/i;-><init>(Lhc/f;[LEc/e;Lsb/k;)V

    new-instance v2, LEc/i;

    sget-object v4, LEc/t;->e:Lhc/f;

    move-object/from16 v25, v0

    const/4 v14, 0x4

    new-array v0, v14, [LEc/e;

    aput-object v7, v0, v3

    sget-object v14, LEc/v;->c:LEc/v;

    const/4 v3, 0x1

    aput-object v14, v0, v3

    const/4 v14, 0x2

    aput-object v15, v0, v14

    const/4 v14, 0x3

    aput-object v10, v0, v14

    invoke-direct {v2, v4, v0}, LEc/i;-><init>(Lhc/f;[LEc/e;)V

    new-instance v0, LEc/i;

    sget-object v4, LEc/t;->s:Ljava/util/Set;

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v24, v2

    new-array v2, v14, [LEc/e;

    const/4 v14, 0x0

    aput-object v7, v2, v14

    aput-object v15, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    check-cast v4, Ljava/util/Set;

    invoke-direct {v0, v4, v2}, LEc/i;-><init>(Ljava/util/Set;[LEc/e;)V

    new-instance v2, LEc/i;

    sget-object v4, LEc/t;->r:Ljava/util/Set;

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v27, v0

    new-array v0, v3, [LEc/e;

    aput-object v7, v0, v14

    const/4 v3, 0x1

    aput-object v18, v0, v3

    check-cast v4, Ljava/util/Set;

    invoke-direct {v2, v4, v0}, LEc/i;-><init>(Ljava/util/Set;[LEc/e;)V

    new-instance v0, LEc/i;

    sget-object v4, LEc/t;->n:Lhc/f;

    sget-object v14, LEc/t;->o:Lhc/f;

    filled-new-array {v4, v14}, [Lhc/f;

    move-result-object v4

    invoke-static {v4}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-array v14, v3, [LEc/e;

    const/16 v26, 0x0

    aput-object v7, v14, v26

    sget-object v3, LEc/h;->g:LEc/h;

    invoke-direct {v0, v4, v14, v3}, LEc/i;-><init>(Ljava/util/Collection;[LEc/e;Lsb/k;)V

    new-instance v3, LEc/i;

    sget-object v4, LEc/t;->t:Ljava/util/Set;

    check-cast v4, Ljava/util/Collection;

    const/4 v14, 0x4

    new-array v14, v14, [LEc/e;

    aput-object v7, v14, v26

    sget-object v19, LEc/w;->c:LEc/w;

    const/16 v28, 0x1

    aput-object v19, v14, v28

    move-object/from16 v29, v0

    const/4 v0, 0x2

    aput-object v15, v14, v0

    const/4 v15, 0x3

    aput-object v10, v14, v15

    check-cast v4, Ljava/util/Set;

    invoke-direct {v3, v4, v14}, LEc/i;-><init>(Ljava/util/Set;[LEc/e;)V

    new-instance v4, LEc/i;

    sget-object v10, LEc/t;->m:LKc/j;

    new-array v14, v0, [LEc/e;

    aput-object v7, v14, v26

    aput-object v18, v14, v28

    sget-object v34, LEc/h;->c:LEc/h;

    const-string v7, "regex"

    invoke-static {v10, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, [LEc/e;

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v30, v4

    move-object/from16 v32, v10

    invoke-direct/range {v30 .. v35}, LEc/i;-><init>(Lhc/f;LKc/j;Ljava/util/Collection;Lsb/k;[LEc/e;)V

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v12, v20

    move-object/from16 v13, v22

    move-object/from16 v14, v16

    move-object/from16 v15, v23

    move-object/from16 v16, v1

    move-object/from16 v17, v25

    move-object/from16 v18, v24

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v21, v29

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    filled-new-array/range {v5 .. v23}, [LEc/i;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LEc/s;->a:Ljava/util/List;

    return-void
.end method
