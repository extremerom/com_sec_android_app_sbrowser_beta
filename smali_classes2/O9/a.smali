.class public final LO9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/u;
.implements Lc5/n;
.implements LJ4/b;
.implements LQ6/c;
.implements LR5/e;
.implements LZ3/l;
.implements Lac/n;
.implements Lcom/bumptech/glide/manager/k;
.implements Lg1/q;
.implements LJb/n;
.implements Ls/s;
.implements Ls4/c;


# static fields
.field public static c:LO9/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, LO9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, LO9/a;->U(I)V

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, LO9/a;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LO9/a;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LO9/a;->a:I

    iput-object p2, p0, LO9/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LG6/f;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LO9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LO9/a;->b:Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p0, "context cannot be null"

    invoke-static {p0}, LG5/H3;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "Configuration cannot be null"

    invoke-static {p0}, LG5/H3;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "705-399-1025610"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "TrackingId is empty, set TrackingId"

    invoke-static {p0}, LG5/H3;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p2, LG6/f;->b:Z

    if-nez v1, :cond_3

    const-string p0, "Device Id is empty, set Device Id or enable auto device id"

    invoke-static {p0}, LG5/H3;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "This mode is not allowed to set device Id"

    invoke-static {p0}, LG5/H3;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, LG6/f;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "you should set the UI version"

    invoke-static {p0}, LG5/H3;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, LP9/a;

    invoke-direct {v0, p1, p2}, LP9/a;-><init>(Landroid/app/Application;LG6/f;)V

    iput-object v0, p0, LO9/a;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0xc

    iput v0, p0, LO9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, LO9/a;->b:Ljava/lang/Object;

    const-string v1, "com.google.android.gms.appid-no-backup"

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_1

    const-string p1, "FirebaseMessaging"

    const-string v1, "App restored, clearing state"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_0
    const-string p1, "FirebaseMessaging"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FirebaseMessaging"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error creating file in no backup dir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, LO9/a;->a:I

    const-string v0, "workDatabase"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO9/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static S()LO9/a;
    .locals 3

    sget-object v0, LO9/a;->c:LO9/a;

    if-nez v0, :cond_1

    const-string v0, "call after setConfiguration() method"

    invoke-static {v0}, LG5/H3;->p(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, LO9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LO9/a;->c:LO9/a;

    if-nez v1, :cond_0

    new-instance v1, LO9/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, LO9/a;-><init>(Landroid/app/Application;LG6/f;)V

    sput-object v1, LO9/a;->c:LO9/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LO9/a;->c:LO9/a;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 3

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->t(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:I

    if-nez v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne v0, v2, :cond_3

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LX4/i;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, LX4/i;->i(Landroid/view/View;)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public bridge synthetic B(LJb/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, LO9/a;->V(LJb/v;Ljava/lang/StringBuilder;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public C(LMb/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    iget-object v2, v2, LO9/a;->b:Ljava/lang/Object;

    check-cast v2, Ljc/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    iget-object v3, v2, Ljc/j;->a:Ljc/o;

    sget-object v4, Ljc/o;->Y:[LAb/u;

    const/16 v5, 0xd

    aget-object v5, v4, v5

    iget-object v6, v3, Ljc/o;->o:Ljc/n;

    invoke-virtual {v6, v3, v5}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, LMb/j;->b0()LJb/f;

    move-result-object v5

    invoke-interface {v5}, LJb/f;->r()LJb/B;

    move-result-object v5

    sget-object v8, LJb/B;->SEALED:LJb/B;

    if-eq v5, v8, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, LMb/v;->getVisibility()LJb/p;

    move-result-object v5

    const-string v8, "getVisibility(...)"

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v1}, Ljc/j;->f0(LJb/p;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljc/j;->I(LJb/d;Ljava/lang/StringBuilder;)V

    const/16 v8, 0x28

    aget-object v8, v4, v8

    iget-object v9, v3, Ljc/o;->P:Ljc/n;

    invoke-virtual {v9, v3, v8}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-boolean v9, v0, LMb/j;->E:Z

    if-nez v8, :cond_3

    if-eqz v9, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    if-eqz v5, :cond_4

    const-string v8, "constructor"

    invoke-virtual {v2, v8}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual/range {p1 .. p1}, LMb/j;->g1()LJb/f;

    move-result-object v8

    const-string v10, "getContainingDeclaration(...)"

    invoke-static {v8, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x19

    aget-object v11, v4, v10

    iget-object v12, v3, Ljc/o;->A:Ljc/n;

    invoke-virtual {v12, v3, v11}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v5, :cond_5

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2, v8, v1, v7}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    invoke-virtual/range {p1 .. p1}, LMb/v;->m()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5, v1, v6}, Ljc/j;->b0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, LMb/v;->H()Ljava/util/List;

    move-result-object v5

    const-string v6, "getValueParameters(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Collection;

    invoke-interface/range {p1 .. p1}, LJb/b;->e0()Z

    move-result v7

    invoke-virtual {v2, v5, v7, v1}, Ljc/j;->e0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    const/16 v5, 0xf

    aget-object v4, v4, v5

    iget-object v5, v3, Ljc/o;->q:Ljc/n;

    invoke-virtual {v5, v3, v4}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v9, :cond_9

    invoke-interface {v8}, LJb/f;->E()LMb/j;

    move-result-object v4

    if-eqz v4, :cond_9

    check-cast v4, LMb/v;

    invoke-virtual {v4}, LMb/v;->H()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LMb/T;

    invoke-virtual {v6}, LMb/T;->V0()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v6, v6, LMb/T;->k:Lyc/w;

    if-nez v6, :cond_7

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "this"

    invoke-virtual {v2, v4}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljc/d;->n:Ljc/d;

    const-string v14, ")"

    const/16 v16, 0x18

    const-string v12, ", "

    const-string v13, "("

    invoke-static/range {v11 .. v16}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    sget-object v4, Ljc/o;->Y:[LAb/u;

    aget-object v4, v4, v10

    iget-object v5, v3, Ljc/o;->A:Ljc/n;

    invoke-virtual {v5, v3, v4}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, LMb/v;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljc/j;->g0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_a
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method public D(LJb/p;)LJb/u;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public E(Lhc/f;Lmc/f;)V
    .locals 0

    return-void
.end method

.method public F()LJb/u;
    .locals 0

    return-object p0
.end method

.method public G()LJb/u;
    .locals 0

    return-object p0
.end method

.method public H(Lhc/b;Lhc/f;)Lac/n;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public I(LMb/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljc/j;->Z(LJb/W;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public J(J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    iget-object v4, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    sub-long/2addr v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_3
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1
.end method

.method public K(Ls/i;)Z
    .locals 1

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Lm/w;

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public L()S
    .locals 1

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, LZ3/k;

    invoke-direct {p0}, LZ3/k;-><init>()V

    throw p0
.end method

.method public M(Lhc/f;)LJb/u;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public N(LMb/w;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public O(LKb/h;)LJb/u;
    .locals 1

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public P(LMb/A;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LJb/f;->d()LJb/g;

    move-result-object v0

    sget-object v1, LJb/g;->ENUM_ENTRY:LJb/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v1

    const/4 v4, 0x0

    const-string v5, "companion object"

    const-string v6, "getVisibility(...)"

    if-nez v1, :cond_c

    invoke-interface {p1}, LJb/f;->V()Ljava/util/List;

    move-result-object v1

    const-string v7, "getContextReceivers(...)"

    invoke-static {v1, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Ljc/j;->B(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {p0, p2, p1, v4}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    if-nez v0, :cond_1

    invoke-interface {p1}, LJb/f;->getVisibility()LJb/p;

    move-result-object v1

    invoke-static {v1, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Ljc/j;->f0(LJb/p;Ljava/lang/StringBuilder;)Z

    :cond_1
    invoke-interface {p1}, LJb/f;->d()LJb/g;

    move-result-object v1

    sget-object v7, LJb/g;->INTERFACE:LJb/g;

    if-ne v1, v7, :cond_2

    invoke-interface {p1}, LJb/f;->r()LJb/B;

    move-result-object v1

    sget-object v7, LJb/B;->ABSTRACT:LJb/B;

    if-eq v1, v7, :cond_4

    :cond_2
    invoke-interface {p1}, LJb/f;->d()LJb/g;

    move-result-object v1

    invoke-virtual {v1}, LJb/g;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, LJb/f;->r()LJb/B;

    move-result-object v1

    sget-object v7, LJb/B;->FINAL:LJb/B;

    if-eq v1, v7, :cond_4

    :cond_3
    invoke-interface {p1}, LJb/f;->r()LJb/B;

    move-result-object v1

    const-string v7, "getModality(...)"

    invoke-static {v1, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljc/j;->v(LJb/z;)LJb/B;

    move-result-object v7

    invoke-virtual {p0, v1, p2, v7}, Ljc/j;->K(LJb/B;Ljava/lang/StringBuilder;LJb/B;)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Ljc/j;->J(LJb/z;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ljc/l;->INNER:Ljc/l;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, LJb/j;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    const-string v7, "inner"

    invoke-virtual {p0, v7, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ljc/l;->DATA:Ljc/l;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, LJb/f;->B0()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    const-string v7, "data"

    invoke-virtual {p0, v7, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ljc/l;->INLINE:Ljc/l;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, LJb/f;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    const-string v7, "inline"

    invoke-virtual {p0, v7, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ljc/l;->VALUE:Ljc/l;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, LJb/f;->s()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    const-string v7, "value"

    invoke-virtual {p0, v7, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0}, Ljc/j;->q()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ljc/l;->FUN:Ljc/l;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, LJb/f;->c0()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    const-string v7, "fun"

    invoke-virtual {p0, v7, p2, v1}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    instance-of v1, p1, LJb/V;

    if-eqz v1, :cond_a

    const-string v1, "typealias"

    goto :goto_6

    :cond_a
    invoke-interface {p1}, LJb/f;->X()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, v5

    goto :goto_6

    :cond_b
    invoke-interface {p1}, LJb/f;->d()LJb/g;

    move-result-object v1

    sget-object v7, Ljc/e;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    packed-switch v1, :pswitch_data_0

    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    const-string v1, "enum entry"

    goto :goto_6

    :pswitch_1
    const-string v1, "annotation class"

    goto :goto_6

    :pswitch_2
    const-string v1, "object"

    goto :goto_6

    :pswitch_3
    const-string v1, "enum class"

    goto :goto_6

    :pswitch_4
    const-string v1, "interface"

    goto :goto_6

    :pswitch_5
    const-string v1, "class"

    :goto_6
    invoke-virtual {p0, v1}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-static {p1}, Lkc/e;->l(LJb/l;)Z

    move-result v1

    iget-object v7, p0, Ljc/j;->a:Ljc/o;

    if-nez v1, :cond_e

    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p2}, Ljc/j;->V(Ljava/lang/StringBuilder;)V

    :cond_d
    invoke-virtual {p0, p1, p2, v3}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    goto :goto_7

    :cond_e
    sget-object v1, Ljc/o;->Y:[LAb/u;

    const/16 v8, 0x1f

    aget-object v1, v1, v8

    iget-object v8, v7, Ljc/o;->G:Ljc/n;

    invoke-virtual {v8, v7, v1}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v8, "getName(...)"

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-static {p2}, Ljc/j;->V(Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v5, "of "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    sget-object v5, Lhc/h;->b:Lhc/f;

    invoke-static {v1, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p2}, Ljc/j;->V(Ljava/lang/StringBuilder;)V

    :cond_12
    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Ljc/j;->N(Lhc/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_7
    if-eqz v0, :cond_14

    goto/16 :goto_9

    :cond_14
    invoke-interface {p1}, LJb/f;->q()Ljava/util/List;

    move-result-object v8

    const-string v0, "getDeclaredTypeParameters(...)"

    invoke-static {v8, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p2, v2}, Ljc/j;->b0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->z(LJb/j;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LJb/f;->d()LJb/g;

    move-result-object v0

    invoke-virtual {v0}, LJb/g;->a()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, v7, Ljc/o;->i:Ljc/n;

    invoke-virtual {v1, v7, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, LJb/f;->E()LMb/j;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, v0, v4}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    move-object v1, v0

    check-cast v1, LMb/v;

    invoke-virtual {v1}, LMb/v;->getVisibility()LJb/p;

    move-result-object v2

    invoke-static {v2, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Ljc/j;->f0(LJb/p;Ljava/lang/StringBuilder;)Z

    const-string v2, "constructor"

    invoke-virtual {p0, v2}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LMb/v;->H()Ljava/util/List;

    move-result-object v1

    const-string v2, "getValueParameters(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, LJb/b;->e0()Z

    move-result v0

    invoke-virtual {p0, v1, v0, p2}, Ljc/j;->e0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    :cond_15
    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    iget-object v1, v7, Ljc/o;->x:Ljc/n;

    invoke-virtual {v1, v7, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    invoke-interface {p1}, LJb/f;->n()Lyc/A;

    move-result-object v0

    invoke-static {v0}, LGb/i;->F(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_8

    :cond_17
    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object p1

    invoke-interface {p1}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "getSupertypes(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v3, :cond_18

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/w;

    invoke-static {v0}, LGb/i;->y(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_8

    :cond_18
    invoke-static {p2}, Ljc/j;->V(Ljava/lang/StringBuilder;)V

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljc/g;

    const/4 p1, 0x1

    invoke-direct {v5, p0, p1}, Ljc/g;-><init>(Ljc/j;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, ", "

    const/16 v6, 0x3c

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    :cond_19
    :goto_8
    invoke-virtual {p0, p2, v8}, Ljc/j;->g0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :goto_9
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Q(LMb/K;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "getter"

    invoke-virtual {p0, p1, p2, v0}, LO9/a;->W(LJb/O;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public R()LJb/u;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized T(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le4/b;

    iget-object v3, v2, Le4/b;->a:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Le4/b;->b:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, v2, Le4/b;->b:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Le4/b;->b:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public U(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    if-nez v1, :cond_0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "###,###,###,##0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LO9/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public V(LJb/v;Ljava/lang/StringBuilder;)V
    .locals 9

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    invoke-virtual {p0}, Ljc/j;->r()Z

    move-result v0

    iget-object v1, p0, Ljc/j;->a:Ljc/o;

    const-string v2, "getTypeParameters(...)"

    const/4 v3, 0x1

    if-nez v0, :cond_c

    sget-object v0, Ljc/o;->Y:[LAb/u;

    const/4 v4, 0x5

    aget-object v4, v0, v4

    iget-object v5, v1, Ljc/o;->g:Ljc/n;

    invoke-virtual {v5, v1, v4}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p1}, LJb/b;->r0()Ljava/util/List;

    move-result-object v4

    const-string v5, "getContextReceiverParameters(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Ljc/j;->B(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {p0, p2, p1, v4}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    invoke-interface {p1}, LJb/z;->getVisibility()LJb/p;

    move-result-object v4

    const-string v5, "getVisibility(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p2}, Ljc/j;->f0(LJb/p;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Ljc/j;->L(LJb/d;Ljava/lang/StringBuilder;)V

    const/16 v4, 0x2c

    aget-object v5, v0, v4

    iget-object v6, v1, Ljc/o;->T:Ljc/n;

    invoke-virtual {v6, v1, v5}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, p2}, Ljc/j;->J(LJb/z;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljc/j;->R(LJb/d;Ljava/lang/StringBuilder;)V

    aget-object v0, v0, v4

    iget-object v4, v1, Ljc/o;->T:Ljc/n;

    invoke-virtual {v4, v1, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "suspend"

    if-eqz v0, :cond_9

    invoke-interface {p1}, LJb/v;->i0()Z

    move-result v0

    const/16 v5, 0x27

    const/4 v6, 0x0

    const-string v7, "getOverriddenDescriptors(...)"

    if-eqz v0, :cond_4

    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJb/v;

    invoke-interface {v8}, LJb/v;->i0()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v0, Ljc/o;->Y:[LAb/u;

    aget-object v0, v0, v5

    iget-object v8, v1, Ljc/o;->O:Ljc/n;

    invoke-virtual {v8, v1, v0}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    invoke-interface {p1}, LJb/v;->A0()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Iterable;

    move-object v7, v8

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJb/v;

    invoke-interface {v8}, LJb/v;->A0()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v7, Ljc/o;->Y:[LAb/u;

    aget-object v5, v7, v5

    iget-object v7, v1, Ljc/o;->O:Ljc/n;

    invoke-virtual {v7, v1, v5}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    :goto_2
    move v6, v3

    :cond_8
    invoke-interface {p1}, LJb/v;->D()Z

    move-result v5

    const-string v7, "tailrec"

    invoke-virtual {p0, v7, p2, v5}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LJb/v;->o()Z

    move-result v5

    invoke-virtual {p0, v4, p2, v5}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LJb/v;->g()Z

    move-result v4

    const-string v5, "inline"

    invoke-virtual {p0, v5, p2, v4}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v4, "infix"

    invoke-virtual {p0, v4, p2, v6}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v4, "operator"

    invoke-virtual {p0, v4, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_3

    :cond_9
    invoke-interface {p1}, LJb/v;->o()Z

    move-result v0

    invoke-virtual {p0, v4, p2, v0}, Ljc/j;->M(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :goto_3
    invoke-virtual {p0, p1, p2}, Ljc/j;->I(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljc/j;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, LJb/v;->u0()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "/*isHiddenToOvercomeSignatureClash*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-interface {p1}, LJb/v;->x0()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "fun"

    invoke-virtual {p0, v0}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LJb/b;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v3}, Ljc/j;->b0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->T(LJb/d;Ljava/lang/StringBuilder;)V

    :cond_c
    invoke-virtual {p0, p1, p2, v3}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    const-string v3, "getValueParameters(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, LJb/b;->e0()Z

    move-result v3

    invoke-virtual {p0, v0, v3, p2}, Ljc/j;->e0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->U(LJb/d;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LJb/b;->p()Lyc/w;

    move-result-object v0

    sget-object v3, Ljc/o;->Y:[LAb/u;

    const/16 v4, 0xa

    aget-object v4, v3, v4

    iget-object v5, v1, Ljc/o;->l:Ljc/n;

    invoke-virtual {v5, v1, v4}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget-object v4, v1, Ljc/o;->k:Ljc/n;

    invoke-virtual {v4, v1, v3}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v0, :cond_d

    sget-object v1, LGb/i;->e:Lhc/f;

    sget-object v1, LGb/p;->d:Lhc/d;

    invoke-static {v0, v1}, LGb/i;->E(Lyc/w;Lhc/d;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_e

    const-string v0, "[NULL]"

    goto :goto_4

    :cond_e
    invoke-virtual {p0, v0}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-interface {p1}, LJb/b;->m()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Ljc/j;->g0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public W(LJb/O;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast v0, Ljc/j;

    iget-object v1, v0, Ljc/j;->a:Ljc/o;

    sget-object v2, Ljc/o;->Y:[LAb/u;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    iget-object v3, v1, Ljc/o;->H:Ljc/n;

    invoke-virtual {v3, v1, v2}, Ljc/n;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljc/t;

    sget-object v2, Ljc/h;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p3, 0x2

    if-eq v1, p3, :cond_1

    const/4 p0, 0x3

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2}, LO9/a;->V(LJb/v;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Ljc/j;->J(LJb/z;Ljava/lang/StringBuilder;)V

    const-string p0, " for "

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, LMb/H;

    invoke-virtual {p1}, LMb/H;->U0()LJb/P;

    move-result-object p0

    const-string p1, "getCorrespondingProperty(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Ljc/j;->n(Ljc/j;LJb/P;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public a(Ls/i;Z)V
    .locals 0

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Lm/w;

    invoke-virtual {p0, p1}, Lm/w;->u(Ls/i;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public build()LJb/v;
    .locals 0

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, LAc/c;

    return-object p0
.end method

.method public c(LMb/y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LMb/y;->e:Lhc/c;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    const-string v1, "fqName"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lhc/d;->e(Lhc/d;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LG5/W3;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {v0}, Ljc/o;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " in context of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object p1, p1, LMb/y;->d:LMb/B;

    invoke-virtual {p0, p1, p2, v0}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, LI3/d;

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public e(LMb/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Ljc/j;->y(Ljava/lang/StringBuilder;LKb/a;LKb/d;)V

    const-string v0, "getVisibility(...)"

    iget-object v1, p1, LMb/g;->g:LJb/p;

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Ljc/j;->f0(LJb/p;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Ljc/j;->J(LJb/z;Ljava/lang/StringBuilder;)V

    const-string v0, "typealias"

    invoke-virtual {p0, v0}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p1}, LMb/g;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Ljc/j;->b0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, p1, p2}, Ljc/j;->z(LJb/j;Ljava/lang/StringBuilder;)V

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lwc/t;

    invoke-virtual {p1}, Lwc/t;->W0()Lyc/A;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljc/j;->W(Lyc/w;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public f(Lyc/w;)LJb/u;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public g(LMb/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, v0}, Ljc/j;->d0(LMb/T;ZLjava/lang/StringBuilder;Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public h(Ljava/util/List;)LJb/u;
    .locals 0

    return-object p0
.end method

.method public i(Lhc/f;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, LO9/a;->L()S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LO9/a;->L()S

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public k(LL5/b;)V
    .locals 1

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, LD5/j;

    iget-object p0, p0, LD5/j;->b:Lcom/bumptech/glide/manager/o;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    iget-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/d;

    iget-object p1, p1, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast p1, Lc5/m;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast p0, LD5/d;

    const/16 v0, 0x989

    invoke-virtual {p0, p1, v0}, Lb5/j;->doUnregisterEventListener(Lc5/m;I)LR5/h;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public l(LJb/f;)LJb/u;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(LJb/B;)LJb/u;
    .locals 0

    return-object p0
.end method

.method public n()LJb/u;
    .locals 0

    return-object p0
.end method

.method public o()LJb/u;
    .locals 0

    return-object p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, LB3/c;

    iget-object p0, p0, LB3/c;->a:Ljava/lang/Object;

    check-cast p0, LR5/i;

    iget-object p0, p0, LR5/i;->a:LR5/p;

    invoke-virtual {p0}, LR5/p;->q()V

    return-void
.end method

.method public p(LMb/w;)LJb/u;
    .locals 0

    return-object p0
.end method

.method public q(Lhc/f;)Lac/o;
    .locals 1

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lbc/e;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lbc/e;-><init>(Lac/n;I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public r(LJb/c;)LJb/u;
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public s()LJb/u;
    .locals 0

    return-object p0
.end method

.method public t()LJb/u;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LO9/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/manager/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public u(LMb/J;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    invoke-static {p0, p1, p2}, Ljc/j;->n(Ljc/j;LJb/P;Ljava/lang/StringBuilder;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public v(LMb/B;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public w(I[B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    if-ge v0, p1, :cond_0

    iget-object v1, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v1, p2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, LZ3/k;

    invoke-direct {p0}, LZ3/k;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return v0
.end method

.method public x(Lhc/f;Lhc/b;Lhc/f;)V
    .locals 0

    return-void
.end method

.method public y(LMb/D;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljc/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package-fragment"

    invoke-virtual {p0, v0}, Ljc/j;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LMb/D;->f:Lhc/c;

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    const-string v1, "fqName"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lhc/d;->e(Lhc/d;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LG5/W3;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljc/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Ljc/j;->a:Ljc/o;

    invoke-virtual {v0}, Ljc/o;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LMb/D;->U0()LJb/C;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljc/j;->O(LJb/l;Ljava/lang/StringBuilder;Z)V

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public z(LMb/L;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "setter"

    invoke-virtual {p0, p1, p2, v0}, LO9/a;->W(LJb/O;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
