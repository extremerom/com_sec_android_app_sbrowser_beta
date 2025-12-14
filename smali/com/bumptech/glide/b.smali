.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile i:Lcom/bumptech/glide/b;

.field public static volatile j:Z


# instance fields
.field public final a:LS3/p;

.field public final b:LT3/a;

.field public final c:LU3/d;

.field public final d:Lcom/bumptech/glide/e;

.field public final e:LT3/f;

.field public final f:Lcom/bumptech/glide/manager/j;

.field public final g:Lz7/d;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS3/p;LU3/d;LT3/a;LT3/f;Lcom/bumptech/glide/manager/j;Lz7/d;LO7/a;LN/f;Ljava/util/List;Ljava/util/ArrayList;LG5/d3;LJ7/c;)V
    .locals 13

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    move-object v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/b;->a:LS3/p;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/bumptech/glide/b;->b:LT3/a;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/bumptech/glide/b;->e:LT3/f;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/bumptech/glide/b;->c:LU3/d;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/j;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/bumptech/glide/b;->g:Lz7/d;

    new-instance v5, LV9/a;

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    invoke-direct {v5, p0, v2, v3}, LV9/a;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;LG5/d3;)V

    new-instance v6, LE5/v;

    const/16 v2, 0x14

    invoke-direct {v6, v2}, LE5/v;-><init>(I)V

    new-instance v12, Lcom/bumptech/glide/e;

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object v10, p2

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;LT3/f;LV9/a;LE5/v;LO7/a;LN/f;Ljava/util/List;LS3/p;LJ7/c;)V

    iput-object v12, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    const-string v0, "Glide"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_4
    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/bumptech/glide/b;->j:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z

    goto :goto_5

    :catchall_0
    move-exception p0

    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_5
    monitor-exit v1

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_6
    sget-object p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 32

    new-instance v10, LN/f;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, LN/A;-><init>(I)V

    new-instance v1, LS3/z;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LS3/z;-><init>(I)V

    new-instance v9, LO7/a;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const-string v2, "Got app info metadata: "

    const-string v3, "ManifestParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Loading Glide modules"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    :goto_0
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "GlideModule"

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v11, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v7}, LG5/e3;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Finished loading Glide modules"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_1
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Got null app info metadata"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    if-eqz p1, :cond_8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_4
    const-string v2, "Glide"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v2}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    new-instance v2, LV3/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget v3, LV3/e;->c:I

    const/4 v4, 0x4

    if-nez v3, :cond_b

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, LV3/e;->c:I

    :cond_b
    sget v18, LV3/e;->c:I

    const-string v3, "source"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, LV3/c;

    invoke-direct {v8, v2, v3, v0}, LV3/c;-><init>(LV3/b;Ljava/lang/String;Z)V

    const-wide/16 v19, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v18

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, LV3/e;

    invoke-direct {v2, v5}, LV3/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v3, LV3/b;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v5, "disk-cache"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v25, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v11, LV3/c;

    const/4 v13, 0x1

    invoke-direct {v11, v3, v5, v13}, LV3/c;-><init>(LV3/b;Ljava/lang/String;Z)V

    const-wide/16 v22, 0x0

    move-object/from16 v19, v8

    move/from16 v20, v13

    move/from16 v21, v13

    move-object/from16 v24, v7

    move-object/from16 v26, v11

    invoke-direct/range {v19 .. v26}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, LV3/e;

    invoke-direct {v3, v8}, LV3/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v5, LV3/e;->c:I

    if-nez v5, :cond_c

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sput v5, LV3/e;->c:I

    :cond_c
    sget v5, LV3/e;->c:I

    const/4 v8, 0x1

    if-lt v5, v4, :cond_d

    move/from16 v21, v6

    goto :goto_6

    :cond_d
    move/from16 v21, v8

    :goto_6
    new-instance v4, LV3/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v5, "animation"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v25, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v11, LV3/c;

    invoke-direct {v11, v4, v5, v8}, LV3/c;-><init>(LV3/b;Ljava/lang/String;Z)V

    const-wide/16 v22, 0x0

    move-object/from16 v19, v6

    move/from16 v20, v21

    move-object/from16 v24, v7

    move-object/from16 v26, v11

    invoke-direct/range {v19 .. v26}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v4, LV3/e;

    invoke-direct {v4, v6}, LV3/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v5, LC3/c;

    invoke-direct {v5, v15}, LC3/c;-><init>(Landroid/content/Context;)V

    new-instance v6, LN3/e;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v8, v5, LC3/c;->b:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v11, v5, LC3/c;->c:Ljava/lang/Object;

    check-cast v11, Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x200000

    goto :goto_7

    :cond_e
    const/high16 v13, 0x400000

    :goto_7
    iput v13, v6, LN3/e;->c:I

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v14

    const/high16 v16, 0x100000

    mul-int v14, v14, v16

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v16

    int-to-float v14, v14

    if-eqz v16, :cond_f

    const v16, 0x3ea8f5c3    # 0.33f

    goto :goto_8

    :cond_f
    const v16, 0x3ecccccd    # 0.4f

    :goto_8
    mul-float v14, v14, v16

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget-object v0, v5, LC3/c;->d:Ljava/lang/Object;

    check-cast v0, LI3/d;

    iget-object v0, v0, LI3/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/DisplayMetrics;

    move-object/from16 p0, v12

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v12, v0

    mul-int/lit8 v12, v12, 0x4

    int-to-float v0, v12

    iget v5, v5, LC3/c;->a:F

    mul-float v12, v0, v5

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v0, v0, v17

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move-object/from16 v18, v10

    sub-int v10, v14, v13

    move-object/from16 v30, v9

    add-int v9, v0, v12

    if-gt v9, v10, :cond_10

    iput v0, v6, LN3/e;->b:I

    iput v12, v6, LN3/e;->a:I

    goto :goto_9

    :cond_10
    int-to-float v0, v10

    add-float v10, v5, v17

    div-float/2addr v0, v10

    mul-float v17, v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v6, LN3/e;->b:I

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v6, LN3/e;->a:I

    :goto_9
    const-string v0, "MemorySizeCalculator"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Calculation complete, Calculated memory cache size: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v6, LN3/e;->b:I

    move-object v12, v1

    move-object/from16 v17, v2

    int-to-long v1, v10

    invoke-static {v8, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pool size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, LN3/e;->a:I

    int-to-long v1, v1

    invoke-static {v8, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", byte array size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v13

    invoke-static {v8, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memory class limited? "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v9, v14, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", max size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v14

    invoke-static {v8, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memoryClass: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLowMemoryDevice: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_12
    move-object v12, v1

    move-object/from16 v17, v2

    :goto_b
    new-instance v8, Lz7/d;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget v0, v6, LN3/e;->a:I

    if-lez v0, :cond_13

    new-instance v1, LT3/g;

    int-to-long v9, v0

    invoke-direct {v1, v9, v10}, LT3/g;-><init>(J)V

    move-object v5, v1

    goto :goto_c

    :cond_13
    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    :goto_c
    new-instance v0, LT3/f;

    iget v1, v6, LN3/e;->c:I

    invoke-direct {v0, v1}, LT3/f;-><init>(I)V

    new-instance v9, LU3/d;

    iget v1, v6, LN3/e;->b:I

    int-to-long v1, v1

    invoke-direct {v9, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/h;-><init>(J)V

    new-instance v1, LI3/c;

    const/16 v2, 0x9

    invoke-direct {v1, v15, v2}, LI3/c;-><init>(Landroid/content/Context;I)V

    new-instance v6, LS3/p;

    new-instance v2, LV3/e;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v25, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v25 .. v25}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v11, LV3/c;

    new-instance v13, LV3/b;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    const-string v14, "source-unlimited"

    move-object/from16 v31, v8

    const/4 v8, 0x0

    invoke-direct {v11, v13, v14, v8}, LV3/c;-><init>(LV3/b;Ljava/lang/String;Z)V

    sget-wide v22, LV3/e;->b:J

    const/16 v20, 0x0

    const v21, 0x7fffffff

    move-object/from16 v19, v10

    move-object/from16 v24, v7

    move-object/from16 v26, v11

    invoke-direct/range {v19 .. v26}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v2, v10}, LV3/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object/from16 v23, v6

    move-object/from16 v24, v9

    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v17

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    invoke-direct/range {v23 .. v29}, LS3/p;-><init>(LU3/d;LI3/c;LV3/e;LV3/e;LV3/e;LV3/e;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v14, LJ7/c;

    invoke-direct {v14, v12}, LJ7/c;-><init>(LS3/z;)V

    new-instance v7, Lcom/bumptech/glide/manager/j;

    invoke-direct {v7}, Lcom/bumptech/glide/manager/j;-><init>()V

    new-instance v13, Lcom/bumptech/glide/b;

    move-object v1, v13

    move-object v2, v15

    move-object v3, v6

    move-object v4, v9

    move-object v6, v0

    move-object/from16 v8, v31

    move-object/from16 v9, v30

    move-object/from16 v10, v18

    move-object/from16 v12, p0

    move-object v0, v13

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v14}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;LS3/p;LU3/d;LT3/a;LT3/f;Lcom/bumptech/glide/manager/j;Lz7/d;LO7/a;LN/f;Ljava/util/List;Ljava/util/ArrayList;LG5/d3;LJ7/c;)V

    invoke-virtual {v15, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-static {v2}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :goto_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/l;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/j;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/View;)Lcom/bumptech/glide/l;
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v0, v1}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v1, v2}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/manager/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    goto/16 :goto_4

    :cond_1
    instance-of v2, v1, Landroidx/fragment/app/J;

    iget-object v3, v0, Lcom/bumptech/glide/manager/j;->u:LE5/v;

    const/4 v4, 0x0

    const v5, 0x1020002

    if-eqz v2, :cond_7

    check-cast v1, Landroidx/fragment/app/J;

    iget-object v2, v0, Lcom/bumptech/glide/manager/j;->s:LN/f;

    invoke-virtual {v2}, LN/A;->clear()V

    invoke-virtual {v1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v6

    iget-object v6, v6, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/o0;

    invoke-virtual {v6}, Landroidx/fragment/app/o0;->f()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6, v2}, Lcom/bumptech/glide/manager/j;->c(Ljava/util/List;LN/f;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, p0}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v2}, LN/A;->clear()V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {p0, v1}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ll4/l;->i()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v9

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v10

    iget-object v5, v0, Lcom/bumptech/glide/manager/j;->v:Lcom/bumptech/glide/manager/g;

    invoke-virtual/range {v5 .. v10}, Lcom/bumptech/glide/manager/g;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/D;Landroidx/fragment/app/f0;Z)Lcom/bumptech/glide/l;

    move-result-object p0

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/j;->g(Landroidx/fragment/app/J;)Lcom/bumptech/glide/l;

    move-result-object p0

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/bumptech/glide/manager/j;->t:LN/f;

    invoke-virtual {v2}, LN/A;->clear()V

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/bumptech/glide/manager/j;->b(Landroid/app/FragmentManager;LN/f;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2, p0}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v2}, LN/A;->clear()V

    if-nez v4, :cond_a

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/j;->e(Landroid/app/Activity;)Lcom/bumptech/glide/l;

    move-result-object p0

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {}, Ll4/l;->i()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    invoke-virtual {v4}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v1, p0, v4, v2}, Lcom/bumptech/glide/manager/j;->d(Landroid/app/Activity;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/l;

    move-result-object p0

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->f(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Ll4/l;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:LU3/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/h;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:LT3/a;

    invoke-interface {v0}, LT3/a;->j()V

    iget-object p0, p0, Lcom/bumptech/glide/b;->e:LT3/f;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, LT3/f;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->a()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 8

    invoke-static {}, Ll4/l;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->c:LU3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xf

    const/16 v2, 0x14

    const/16 v3, 0x28

    if-lt p1, v3, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/motionphoto/utils/ex/h;->e(J)V

    goto :goto_1

    :cond_1
    if-ge p1, v2, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    monitor-enter v1

    :try_start_1
    iget-wide v4, v1, Lcom/samsung/android/motionphoto/utils/ex/h;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v1

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/motionphoto/utils/ex/h;->e(J)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/b;->b:LT3/a;

    invoke-interface {v1, p1}, LT3/a;->i(I)V

    iget-object p0, p0, Lcom/bumptech/glide/b;->e:LT3/f;

    monitor-enter p0

    if-lt p1, v3, :cond_4

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 p1, 0x0

    :try_start_3
    invoke-virtual {p0, p1}, LT3/f;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_4
    if-ge p1, v2, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    iget p1, p0, LT3/f;->a:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, LT3/f;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method
