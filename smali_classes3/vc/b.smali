.class public final Lvc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/c;


# instance fields
.field public final b:Lvc/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvc/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvc/b;->b:Lvc/d;

    return-void
.end method


# virtual methods
.method public a(Lxc/o;LJb/C;Ljava/lang/Iterable;LLb/d;LLb/b;Z)LJb/I;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInsModule"

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDescriptorFactories"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LGb/q;->r:Ljava/util/Set;

    new-instance v3, LJ2/p;

    move-object/from16 v4, p0

    iget-object v12, v4, Lvc/b;->b:Lvc/d;

    const-class v13, Lvc/d;

    const-string v14, "loadResource"

    const/4 v11, 0x1

    const-string v15, "loadResource(Ljava/lang/String;)Ljava/io/InputStream;"

    const/16 v16, 0x0

    const/16 v17, 0x4

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v4, "packageFqNames"

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhc/c;

    sget-object v5, Lvc/a;->m:Lvc/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lvc/a;->a(Lhc/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, LJ2/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    if-eqz v5, :cond_1

    invoke-static {v4, v1, v2, v5}, LG5/q2;->b(Lhc/c;Lxc/o;LJb/C;Ljava/io/InputStream;)Lvc/c;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v14, LJb/K;

    invoke-direct {v14, v15}, LJb/K;-><init>(Ljava/util/ArrayList;)V

    new-instance v7, Lcom/google/firebase/messaging/q;

    invoke-direct {v7, v1, v2}, Lcom/google/firebase/messaging/q;-><init>(Lxc/o;LJb/C;)V

    new-instance v13, Luc/k;

    new-instance v3, LP7/c;

    const/16 v0, 0x13

    invoke-direct {v3, v0, v14}, LP7/c;-><init>(ILjava/lang/Object;)V

    new-instance v4, LL8/a;

    sget-object v0, Lvc/a;->m:Lvc/a;

    invoke-direct {v4, v2, v7, v0}, LL8/a;-><init>(LJb/C;Lcom/google/firebase/messaging/q;Lvc/a;)V

    new-instance v12, LR7/a;

    invoke-direct {v12, v1}, LR7/a;-><init>(Lxc/o;)V

    iget-object v10, v0, Ltc/a;->a:Lic/g;

    const/4 v11, 0x0

    const/high16 v16, 0xd0000

    const/16 v17, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v14

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v18, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Luc/k;-><init>(Lxc/o;LJb/C;LP7/c;LL8/a;LJb/L;Ljava/lang/Iterable;Lcom/google/firebase/messaging/q;LLb/b;LLb/d;Lic/g;Lzc/l;LR7/a;Luc/l;I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvc/c;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Lvc/c;->V0(Luc/k;)V

    goto :goto_2

    :cond_3
    return-object v17
.end method
