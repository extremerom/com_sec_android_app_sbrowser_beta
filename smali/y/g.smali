.class public final Ly/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/p;


# instance fields
.field public final a:Landroid/app/appsearch/AppSearchSession;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Landroid/content/Context;

.field public final d:LH4/l;


# direct methods
.method public constructor <init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lorg/chromium/ui/base/b;->f(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchSession;

    move-result-object p1

    iput-object p1, p0, Ly/g;->a:Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ly/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ly/g;->c:Landroid/content/Context;

    new-instance p1, LH4/l;

    invoke-direct {p1, p3}, LH4/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ly/g;->d:LH4/l;

    return-void
.end method


# virtual methods
.method public final a(Lv/z;)LK0/m;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LK0/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ly/g;->a:Landroid/app/appsearch/AppSearchSession;

    invoke-static {}, Lz/a;->l()Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object v2

    iget-object v3, p1, Lv/z;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/u;

    new-array v6, v6, [Landroid/app/appsearch/GenericDocument;

    invoke-static {v4}, LA4/g;->d(Lv/u;)Landroid/app/appsearch/GenericDocument;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v2, v6}, Lz/a;->x(Landroid/app/appsearch/PutDocumentsRequest$Builder;[Landroid/app/appsearch/GenericDocument;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lv/z;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/u;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x23

    if-lt v4, v7, :cond_1

    invoke-static {v3}, LA4/g;->d(Lv/u;)Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    invoke-static {v2, v3}, Lz/b;->a(Landroid/app/appsearch/PutDocumentsRequest$Builder;Landroid/app/appsearch/GenericDocument;)V

    goto :goto_1

    :cond_1
    new-array v4, v6, [Landroid/app/appsearch/GenericDocument;

    invoke-static {v3}, LA4/g;->d(Lv/u;)Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lz/a;->x(Landroid/app/appsearch/PutDocumentsRequest$Builder;[Landroid/app/appsearch/GenericDocument;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lz/a;->m(Landroid/app/appsearch/PutDocumentsRequest$Builder;)Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p1

    new-instance v2, LA/c;

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    invoke-direct {v2, v0, v3}, LA/c;-><init>(LK0/m;Ljava/util/function/Function;)V

    iget-object p0, p0, Ly/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, p1, p0, v2}, Lorg/chromium/ui/base/b;->u(Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/ExecutorService;LA/c;)V

    return-object v0
.end method

.method public final b(Lv/C;)LK0/m;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LK0/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v0, Ly/g;->c:Landroid/content/Context;

    invoke-static {v3}, LA/b;->d(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/32 v5, 0x14503200

    cmp-long v7, v3, v5

    const/16 v8, 0x21

    const/16 v9, 0x22

    iget-object v10, v1, Lv/C;->a:Ljava/util/Set;

    if-ltz v7, :cond_2

    const-wide/32 v11, 0x1454f8a8

    cmp-long v3, v3, v11

    if-gez v3, :cond_2

    :try_start_0
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Ly/g;->d:LH4/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x40

    if-lt v7, v9, :cond_0

    goto :goto_0

    :cond_0
    const/16 v12, 0x10

    if-ne v7, v8, :cond_1

    iget-object v4, v4, LH4/l;->b:Landroid/content/Context;

    invoke-static {v4}, LA/b;->d(Landroid/content/Context;)J

    move-result-wide v13

    cmp-long v4, v13, v5

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    move v11, v12

    :goto_0
    invoke-static {v3, v11}, LA/b;->a(Ljava/util/Set;I)V
    :try_end_0
    .catch Lx/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lx/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lx/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v2, v1}, LK0/h;->n(Ljava/lang/Throwable;)Z

    return-object v2

    :cond_2
    :goto_1
    iget-object v3, v0, Ly/g;->a:Landroid/app/appsearch/AppSearchSession;

    invoke-static {}, Lz/c;->r()Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v4

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x23

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/o;

    const/4 v10, 0x1

    new-array v11, v10, [Landroid/app/appsearch/AppSearchSchema;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lz/a;->C()V

    iget-object v12, v6, Lv/o;->a:Ljava/lang/String;

    invoke-static {v12}, Lz/a;->a(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v12

    iget-object v13, v6, Lv/o;->c:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_4

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v7, :cond_3

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    move v14, v15

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_4

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v12, v7}, Lz/f;->b(Landroid/app/appsearch/AppSearchSchema$Builder;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SCHEMA_ADD_PARENT_TYPE is not available on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v6}, Lv/o;->e()Ljava/util/List;

    move-result-object v6

    move v7, v15

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_1d

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv/l;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Lv/l;->a:LB/i;

    iget-object v9, v14, LB/i;->i:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1c

    instance-of v9, v13, Lv/n;

    if-eqz v9, :cond_d

    check-cast v13, Lv/n;

    invoke-static {}, Lz/c;->y()V

    iget-object v9, v13, Lv/l;->a:LB/i;

    iget-object v13, v9, LB/i;->a:Ljava/lang/String;

    invoke-static {v13}, Lz/a;->i(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v13

    iget v14, v9, LB/i;->c:I

    invoke-static {v13, v14}, Lz/a;->h(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v13

    iget-object v14, v9, LB/i;->e:LB/h;

    if-nez v14, :cond_5

    move v14, v15

    goto :goto_5

    :cond_5
    iget v14, v14, LB/h;->a:I

    :goto_5
    invoke-static {v13, v14}, Lz/a;->y(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v13

    iget-object v14, v9, LB/i;->e:LB/h;

    if-nez v14, :cond_6

    move v14, v15

    goto :goto_6

    :cond_6
    iget v14, v14, LB/h;->b:I

    :goto_6
    invoke-static {v13, v14}, Lz/a;->A(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v13

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v14, v8, :cond_8

    iget-object v8, v9, LB/i;->e:LB/h;

    if-nez v8, :cond_7

    move-object/from16 v16, v5

    move v8, v15

    goto :goto_7

    :cond_7
    iget v8, v8, LB/h;->b:I

    move-object/from16 v16, v5

    :goto_7
    const-string v5, "tokenizerType"

    invoke-static {v8, v15, v10, v5}, LG6/a;->b(IIILjava/lang/String;)V

    goto :goto_8

    :cond_8
    move-object/from16 v16, v5

    :goto_8
    iget-object v5, v9, LB/i;->h:LB/g;

    if-nez v5, :cond_9

    move v8, v15

    goto :goto_9

    :cond_9
    iget v8, v5, LB/g;->a:I

    :goto_9
    if-ne v8, v10, :cond_c

    const/16 v8, 0x22

    if-lt v14, v8, :cond_b

    if-nez v5, :cond_a

    move v5, v15

    goto :goto_a

    :cond_a
    iget v5, v5, LB/g;->a:I

    :goto_a
    invoke-static {v13, v5}, Lz/d;->d(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)V

    goto :goto_b

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StringPropertyConfig.JOINABLE_VALUE_TYPE_QUALIFIED_ID is not supported on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_b
    invoke-static {v13}, Lz/a;->j(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v5

    goto/16 :goto_11

    :cond_d
    move-object/from16 v16, v5

    instance-of v5, v13, Lv/k;

    iget v8, v14, LB/i;->c:I

    iget-object v9, v14, LB/i;->a:Ljava/lang/String;

    if-eqz v5, :cond_12

    check-cast v13, Lv/k;

    invoke-static {}, Lz/c;->C()V

    invoke-static {v9}, Lz/c;->k(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5, v8}, Lz/a;->g(Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v5

    iget-object v8, v13, Lv/l;->a:LB/i;

    iget-object v8, v8, LB/i;->g:LB/f;

    if-nez v8, :cond_e

    move v9, v15

    goto :goto_c

    :cond_e
    iget v9, v8, LB/f;->a:I

    :goto_c
    if-ne v9, v10, :cond_11

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x22

    if-lt v9, v13, :cond_10

    if-nez v8, :cond_f

    move v8, v15

    goto :goto_d

    :cond_f
    iget v8, v8, LB/f;->a:I

    :goto_d
    invoke-static {v5, v8}, Lz/d;->c(Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;I)V

    goto :goto_e

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongProperty.INDEXING_TYPE_RANGE is not supported on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/16 v13, 0x22

    :goto_e
    invoke-static {v5}, Lz/c;->l(Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    move-result-object v5

    goto/16 :goto_11

    :cond_12
    instance-of v5, v13, Lv/i;

    if-eqz v5, :cond_13

    check-cast v13, Lv/i;

    invoke-static {}, Lz/a;->z()V

    invoke-static {v9}, Lz/c;->i(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5, v8}, Lz/c;->h(Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5}, Lz/c;->j(Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;

    move-result-object v5

    goto/16 :goto_11

    :cond_13
    instance-of v5, v13, Lv/f;

    if-eqz v5, :cond_14

    check-cast v13, Lv/f;

    invoke-static {}, Lz/a;->B()V

    invoke-static {v9}, Lz/c;->d(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5, v8}, Lz/c;->c(Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5}, Lz/c;->e(Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;

    move-result-object v5

    goto :goto_11

    :cond_14
    instance-of v5, v13, Lv/g;

    if-eqz v5, :cond_15

    invoke-static {}, Lz/a;->D()V

    invoke-static {v9}, Lz/c;->f(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5, v8}, Lz/a;->b(Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v5

    invoke-static {v5}, Lz/a;->c(Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v5

    goto :goto_11

    :cond_15
    instance-of v5, v13, Lv/h;

    if-eqz v5, :cond_19

    check-cast v13, Lv/h;

    invoke-static {}, Lz/c;->s()V

    iget-object v5, v13, Lv/l;->a:LB/i;

    iget-object v8, v5, LB/i;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v5, LB/i;->a:Ljava/lang/String;

    invoke-static {v9, v8}, Lz/c;->g(Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object v8

    iget v9, v5, LB/i;->c:I

    invoke-static {v8, v9}, Lz/a;->d(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object v8

    iget-object v5, v5, LB/i;->f:LB/d;

    if-nez v5, :cond_16

    move v5, v15

    goto :goto_f

    :cond_16
    iget-boolean v5, v5, LB/d;->a:Z

    :goto_f
    invoke-static {v8, v5}, Lz/a;->e(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;Z)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object v5

    invoke-virtual {v13}, Lv/h;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_18

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x23

    if-lt v8, v9, :cond_17

    invoke-virtual {v13}, Lv/h;->b()Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lz/f;->a(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;Ljava/util/Collection;)V

    goto :goto_10

    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DocumentPropertyConfig.addIndexableNestedProperties is not supported on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_10
    invoke-static {v5}, Lz/a;->f(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    move-result-object v5

    :goto_11
    invoke-static {v12, v5}, Lz/a;->r(Landroid/app/appsearch/AppSearchSchema$Builder;Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    const/16 v8, 0x21

    const/16 v9, 0x22

    goto/16 :goto_4

    :cond_19
    instance-of v0, v13, Lv/j;

    if-nez v0, :cond_1b

    instance-of v0, v13, Lv/e;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BLOB_STORAGE is not available on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dataType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v14, LB/i;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SCHEMA_EMBEDDING_PROPERTY_CONFIG is not available on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SCHEMA_SET_DESCRIPTION is not available on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object/from16 v16, v5

    invoke-static {v12}, Lz/a;->k(Landroid/app/appsearch/AppSearchSchema$Builder;)Landroid/app/appsearch/AppSearchSchema;

    move-result-object v5

    aput-object v5, v11, v15

    invoke-static {v4, v11}, Lz/i;->i(Landroid/app/appsearch/SetSchemaRequest$Builder;[Landroid/app/appsearch/AppSearchSchema;)V

    move-object/from16 v5, v16

    const/16 v8, 0x21

    const/16 v9, 0x22

    goto/16 :goto_2

    :cond_1e
    iget-object v5, v1, Lv/C;->b:Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lz/i;->f(Landroid/app/appsearch/SetSchemaRequest$Builder;Ljava/lang/String;)V

    goto :goto_12

    :cond_1f
    iget-object v5, v1, Lv/C;->c:LN/f;

    invoke-virtual {v5}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, LN/a;

    invoke-virtual {v5}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv/w;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {}, Lz/i;->e()V

    iget-object v8, v8, Lv/w;->a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    iget-object v10, v8, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;->a:Ljava/lang/String;

    iget-object v8, v8, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;->b:[B

    invoke-static {v10, v8}, Lz/i;->a(Ljava/lang/String;[B)Landroid/app/appsearch/PackageIdentifier;

    move-result-object v8

    invoke-static {v4, v9, v8}, Lz/i;->g(Landroid/app/appsearch/SetSchemaRequest$Builder;Ljava/lang/String;Landroid/app/appsearch/PackageIdentifier;)V

    goto :goto_13

    :cond_21
    iget-object v5, v1, Lv/C;->d:LN/f;

    invoke-static {v5}, Lv/C;->a(LN/f;)LN/f;

    move-result-object v6

    invoke-virtual {v6}, LN/A;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_24

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-lt v6, v7, :cond_23

    invoke-static {v5}, Lv/C;->a(LN/f;)LN/f;

    move-result-object v5

    invoke-virtual {v5}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, LN/a;

    invoke-virtual {v5}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    move-object v6, v5

    check-cast v6, LN/d;

    invoke-virtual {v6}, LN/d;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v6}, LN/d;->next()Ljava/lang/Object;

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v4, v9, v8}, Lz/k;->a(Landroid/app/appsearch/SetSchemaRequest$Builder;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_14

    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Set required permissions for schema type visibility are not supported with this backend/Android API level combination."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v5, v1, Lv/C;->e:LN/f;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_26

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x23

    if-lt v6, v7, :cond_25

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv/w;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lz/i;->e()V

    iget-object v7, v7, Lv/w;->a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    iget-object v8, v7, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;->a:Ljava/lang/String;

    iget-object v7, v7, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;->b:[B

    invoke-static {v8, v7}, Lz/i;->a(Ljava/lang/String;[B)Landroid/app/appsearch/PackageIdentifier;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lz/l;->b(Landroid/app/appsearch/SetSchemaRequest$Builder;Ljava/lang/String;Landroid/app/appsearch/PackageIdentifier;)V

    goto :goto_15

    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Publicly visible schema are not supported on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual/range {p1 .. p1}, Lv/C;->b()LN/f;

    move-result-object v5

    invoke-virtual {v5}, LN/A;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v5, v6, :cond_27

    invoke-virtual/range {p1 .. p1}, Lv/C;->b()LN/f;

    move-result-object v5

    invoke-virtual {v5}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, LN/a;

    invoke-virtual {v5}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    move-object v6, v5

    check-cast v6, LN/d;

    invoke-virtual {v6}, LN/d;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-virtual {v6}, LN/d;->next()Ljava/lang/Object;

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v4, v7, v6}, Lz/l;->a(Landroid/app/appsearch/SetSchemaRequest$Builder;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_16

    :cond_27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Schema visible to config are not supported on this AppSearch implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v5, v1, Lv/C;->g:LN/f;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_29

    new-instance v7, Lz/j;

    invoke-direct {v7}, Lz/j;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lz/i;->h(Landroid/app/appsearch/SetSchemaRequest$Builder;Ljava/lang/String;Lz/j;)V

    goto :goto_17

    :cond_29
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_2a
    iget-boolean v5, v1, Lv/C;->h:Z

    invoke-static {v4, v5}, Lz/i;->c(Landroid/app/appsearch/SetSchemaRequest$Builder;Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v4

    iget v1, v1, Lv/C;->i:I

    invoke-static {v4, v1}, Lz/i;->b(Landroid/app/appsearch/SetSchemaRequest$Builder;I)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v1

    invoke-static {v1}, Lz/i;->d(Landroid/app/appsearch/SetSchemaRequest$Builder;)Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v1

    new-instance v4, Ly/e;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Ly/e;-><init>(LK0/m;I)V

    iget-object v0, v0, Ly/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v1, v0, v0, v4}, Lorg/chromium/ui/base/b;->x(Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ly/e;)V

    return-object v2
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Ly/g;->a:Landroid/app/appsearch/AppSearchSession;

    invoke-static {p0}, Lorg/chromium/ui/base/b;->t(Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method
