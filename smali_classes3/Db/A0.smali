.class public abstract LDb/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, LDb/A0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)LOb/e;
    .locals 41

    const/4 v3, 0x5

    const/4 v4, 0x1

    const-string v5, "<this>"

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, LPb/c;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, LDb/J0;

    invoke-direct {v6, v5}, LDb/J0;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v7, LDb/A0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LOb/e;

    if-eqz v9, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v7, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    new-instance v8, Lo3/f;

    invoke-direct {v8, v3, v5}, Lo3/f;-><init>(ILjava/lang/Object;)V

    new-instance v9, Lo3/f;

    const-class v10, Ldb/r;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string v11, "getClassLoader(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v3, v10}, Lo3/f;-><init>(ILjava/lang/Object;)V

    new-instance v12, LB3/c;

    invoke-direct {v12, v5}, LB3/c;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "runtime module for "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LOb/d;->b:LOb/d;

    sget-object v19, LOb/d;->c:LOb/d;

    const-string v10, "moduleName"

    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lxc/l;

    const-string v10, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v15, v10}, Lxc/l;-><init>(Ljava/lang/String;)V

    new-instance v14, LIb/k;

    sget-object v10, LIb/h;->FROM_DEPENDENCIES:LIb/h;

    invoke-direct {v14, v15, v10}, LIb/k;-><init>(Lxc/l;LIb/h;)V

    new-instance v13, LMb/B;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhc/f;->h(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    const/16 v10, 0x38

    invoke-direct {v13, v3, v15, v14, v10}, LMb/B;-><init>(Lhc/f;Lxc/l;LGb/i;I)V

    iget-object v3, v15, Lxc/l;->a:Lxc/n;

    invoke-interface {v3}, Lxc/n;->lock()V

    :try_start_0
    iget-object v10, v14, LGb/i;->a:LMb/B;

    if-nez v10, :cond_7

    iput-object v13, v14, LGb/i;->a:LMb/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v3}, Lxc/n;->unlock()V

    new-instance v3, LGb/m;

    invoke-direct {v3, v13, v4}, LGb/m;-><init>(LMb/B;I)V

    iput-object v3, v14, LIb/k;->f:LGb/m;

    new-instance v3, Lac/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lo3/f;

    const/16 v10, 0xa

    invoke-direct {v11, v10}, Lo3/f;-><init>(I)V

    new-instance v10, Lcom/google/firebase/messaging/q;

    invoke-direct {v10, v15, v13}, Lcom/google/firebase/messaging/q;-><init>(Lxc/o;LJb/C;)V

    sget-object v21, Lac/g;->c:Lac/g;

    new-instance v4, LVb/a;

    sget-object v16, LTb/h;->c:LTb/h;

    sget-object v17, LTb/h;->a:LTb/h;

    new-instance v0, LR7/a;

    sget-object v33, Lfb/v;->a:Lfb/v;

    invoke-direct {v0, v15}, LR7/a;-><init>(Lxc/o;)V

    sget-object v22, LJb/T;->c:LJb/T;

    sget-object v23, LRb/b;->a:LRb/b;

    new-instance v1, LGb/o;

    invoke-direct {v1, v13, v10}, LGb/o;-><init>(LMb/B;Lcom/google/firebase/messaging/q;)V

    new-instance v2, LSb/c;

    move-object/from16 p0, v6

    sget-object v6, LSb/t;->c:LSb/t;

    invoke-direct {v2, v6}, LSb/c;-><init>(LSb/t;)V

    new-instance v27, LZb/c;

    sget-object v29, LVb/b;->a:LVb/b;

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    sget-object v28, LSb/l;->a:LSb/l;

    sget-object v18, Lzc/k;->b:Lzc/j;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v35, Lzc/j;->b:Lzc/l;

    new-instance v32, Lac/g;

    invoke-direct/range {v32 .. v32}, Ljava/lang/Object;-><init>()V

    move-object/from16 v36, v7

    move-object v7, v10

    move-object v10, v4

    move-object/from16 v37, v11

    move-object v11, v15

    move-object/from16 v38, v13

    move-object v13, v8

    move-object/from16 v39, v14

    move-object v14, v3

    move-object/from16 v40, v9

    move-object v9, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v5

    move-object/from16 v18, v0

    move-object/from16 v20, v37

    move-object/from16 v24, v38

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v30, v35

    move-object/from16 v31, v6

    invoke-direct/range {v10 .. v32}, LVb/a;-><init>(Lxc/l;LB3/c;Lo3/f;Lac/f;LTb/h;LOb/d;LTb/h;LR7/a;LOb/d;Lo3/f;Lac/g;LJb/T;LRb/b;LMb/B;LGb/o;LSb/c;LZb/c;LSb/l;LVb/b;Lzc/l;LSb/t;Lac/g;)V

    new-instance v0, LVb/d;

    invoke-direct {v0, v4}, LVb/d;-><init>(LVb/a;)V

    sget-object v1, Lec/f;->g:Lec/f;

    const-string v2, "metadataVersion"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo3/e;

    invoke-direct {v2, v8, v3}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, LQ9/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v8, v4, LQ9/a;->a:Ljava/lang/Object;

    new-instance v6, LMb/a;

    const/16 v10, 0xe

    invoke-direct {v6, v10, v4}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v6}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object v6

    iput-object v6, v4, LQ9/a;->b:Ljava/lang/Object;

    move-object/from16 v6, v38

    iput-object v6, v4, LQ9/a;->c:Ljava/lang/Object;

    iput-object v7, v4, LQ9/a;->d:Ljava/lang/Object;

    new-instance v10, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {v10, v6, v7}, Lcom/google/android/gms/internal/auth/j;-><init>(LJb/C;Lcom/google/firebase/messaging/q;)V

    iput-object v10, v4, LQ9/a;->e:Ljava/lang/Object;

    sget-object v10, Lec/f;->g:Lec/f;

    iput-object v10, v4, LQ9/a;->f:Ljava/lang/Object;

    iput-object v1, v4, LQ9/a;->f:Ljava/lang/Object;

    sget-object v1, Lyc/m;->a:Lyc/m;

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    iget-object v1, v6, LMb/B;->e:LGb/i;

    instance-of v10, v1, LIb/k;

    if-eqz v10, :cond_2

    check-cast v1, LIb/k;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v10, Luc/k;

    sget-object v20, Lac/g;->b:Lac/g;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LIb/k;->J()LIb/q;

    move-result-object v11

    if-eqz v11, :cond_3

    :goto_1
    move-object/from16 v23, v11

    goto :goto_2

    :cond_3
    sget-object v11, LLb/a;->b:LLb/a;

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, LIb/k;->J()LIb/q;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_3
    move-object/from16 v24, v1

    goto :goto_4

    :cond_4
    sget-object v1, LLb/a;->d:LLb/a;

    goto :goto_3

    :goto_4
    sget-object v25, Lgc/h;->a:Lic/g;

    new-instance v1, LR7/a;

    invoke-direct {v1, v9}, LR7/a;-><init>(Lxc/o;)V

    sget-object v11, Luc/l;->f:Luc/l;

    move-object/from16 v29, v11

    move-object v13, v10

    move-object v14, v9

    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v21, v33

    move-object/from16 v22, v7

    move-object/from16 v26, v35

    move-object/from16 v27, v1

    invoke-direct/range {v13 .. v29}, Luc/k;-><init>(Lxc/o;LJb/C;Luc/g;Luc/c;LJb/L;Luc/o;Luc/p;Ljava/lang/Iterable;Lcom/google/firebase/messaging/q;LLb/b;LLb/d;Lic/g;Lzc/k;LR7/a;Ljava/util/List;Luc/n;)V

    iput-object v10, v3, Lac/f;->a:Luc/k;

    new-instance v1, LX4/i;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v0}, LX4/i;-><init>(ILjava/lang/Object;)V

    move-object/from16 v2, v37

    iput-object v1, v2, Lo3/f;->b:Ljava/lang/Object;

    new-instance v1, LIb/s;

    invoke-virtual/range {v39 .. v39}, LIb/k;->J()LIb/q;

    move-result-object v2

    invoke-virtual/range {v39 .. v39}, LIb/k;->J()LIb/q;

    move-result-object v4

    new-instance v5, LR7/a;

    invoke-direct {v5, v9}, LR7/a;-><init>(Lxc/o;)V

    const-string v12, "additionalClassPartsProvider"

    invoke-static {v2, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "platformDependentDeclarationFilter"

    invoke-static {v4, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v40

    invoke-direct {v1, v9, v12, v6}, LIb/s;-><init>(Lxc/l;Lo3/f;LMb/B;)V

    new-instance v12, Luc/k;

    new-instance v13, LP7/c;

    const/16 v14, 0x13

    invoke-direct {v13, v14, v1}, LP7/c;-><init>(ILjava/lang/Object;)V

    new-instance v14, LL8/a;

    sget-object v15, Lvc/a;->m:Lvc/a;

    invoke-direct {v14, v6, v7, v15}, LL8/a;-><init>(LJb/C;Lcom/google/firebase/messaging/q;Lvc/a;)V

    move-object/from16 v16, v10

    new-instance v10, LHb/a;

    invoke-direct {v10, v9, v6}, LHb/a;-><init>(Lxc/l;LMb/B;)V

    move-object/from16 v17, v3

    new-instance v3, LIb/g;

    invoke-direct {v3, v9, v6}, LIb/g;-><init>(Lxc/l;LMb/B;)V

    move-object/from16 v19, v0

    move-object/from16 v18, v8

    const/4 v8, 0x2

    new-array v0, v8, [LLb/c;

    const/4 v8, 0x0

    aput-object v10, v0, v8

    const/4 v8, 0x1

    aput-object v3, v0, v8

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Iterable;

    iget-object v0, v15, Ltc/a;->a:Lic/g;

    const/high16 v34, 0x40000

    move-object/from16 v20, v12

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v25, v1

    move-object/from16 v27, v7

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v30, v0

    move-object/from16 v31, v35

    move-object/from16 v32, v5

    move-object/from16 v33, v11

    invoke-direct/range {v20 .. v34}, Luc/k;-><init>(Lxc/o;LJb/C;LP7/c;LL8/a;LJb/L;Ljava/lang/Iterable;Lcom/google/firebase/messaging/q;LLb/b;LLb/d;Lic/g;Lzc/l;LR7/a;Luc/l;I)V

    iput-object v12, v1, LIb/s;->c:Luc/k;

    filled-new-array {v6}, [LMb/B;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, LI3/c;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, LI3/c;-><init>(ILjava/lang/Object;)V

    iput-object v2, v6, LMb/B;->h:LI3/c;

    new-instance v0, LMb/m;

    const/4 v2, 0x2

    new-array v2, v2, [LJb/L;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CompositeProvider@RuntimeModuleData for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, LMb/m;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, v6, LMb/B;->i:LJb/I;

    new-instance v0, LOb/e;

    new-instance v1, Lo3/t;

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    invoke-direct {v1, v3, v2}, Lo3/t;-><init>(Lac/f;Lo3/f;)V

    move-object/from16 v2, v16

    invoke-direct {v0, v2, v1}, LOb/e;-><init>(Luc/k;Lo3/t;)V

    :goto_5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    move-object/from16 v4, v36

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOb/e;

    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 p0, v2

    move-object/from16 v36, v4

    goto :goto_5

    :cond_7
    move-object v6, v13

    move-object/from16 v39, v14

    move-object v9, v15

    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Built-ins module is already set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v39

    iget-object v2, v2, LGb/i;->a:LMb/B;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (attempting to reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v15

    :goto_6
    :try_start_2
    iget-object v1, v9, Lxc/l;->b:Lxc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Lxc/n;->unlock()V

    throw v0
.end method
