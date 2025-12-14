.class public final LX4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB2/e;
.implements LF3/e;
.implements LJ4/b;
.implements LQ8/a;
.implements LT0/a;
.implements LQ3/d;
.implements Lt/j1;
.implements Ls6/e;


# static fields
.field public static c:LX4/i;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, LX4/i;->a:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LR5/p;

    invoke-direct {p1}, LR5/p;-><init>()V

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lo3/n;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv2/H;

    invoke-direct {v0}, Lv2/H;-><init>()V

    iput-object v0, p1, Lo3/n;->a:Ljava/lang/Object;

    new-instance v0, Lv2/H;

    invoke-direct {v0}, Lv2/H;-><init>()V

    iput-object v0, p1, Lo3/n;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p1, Lo3/n;->d:Ljava/lang/Object;

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ll4/l;->a:[C

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    return-void

    :sswitch_3
    new-instance p1, Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    return-void

    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0xf -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LX4/i;->a:I

    iput-object p2, p0, LX4/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LI3/d;)V
    .locals 4

    const/4 v0, 0x5

    iput v0, p0, LX4/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LO9/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, LO9/a;-><init>(ILjava/lang/Object;)V

    new-instance p1, LP7/c;

    const/4 v1, 0x6

    invoke-direct {p1, v1, v0}, LP7/c;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LQ6/b;->a(LQ6/c;)LQ6/c;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/auth/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, LQ6/b;->a(LQ6/c;)LQ6/c;

    move-result-object p1

    new-instance v1, LI3/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, LI3/c;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LQ6/b;->a(LQ6/c;)LQ6/c;

    move-result-object v1

    new-instance v2, Lo3/t;

    const/16 v3, 0x11

    invoke-direct {v2, p1, v3, v1, v0}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, LQ6/b;->a(LQ6/c;)LQ6/c;

    move-result-object p1

    new-instance v0, LJ7/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, LJ7/c;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LQ6/b;->a(LQ6/c;)LQ6/c;

    move-result-object p1

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LX4/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LX4/a;->a(Landroid/content/Context;)LX4/a;

    move-result-object p1

    iput-object p1, p0, LX4/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, LX4/a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p1}, LX4/a;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public constructor <init>(Lcc/Z;)V
    .locals 6

    const/16 v0, 0xe

    iput v0, p0, LX4/i;->a:I

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcc/Z;->c:Ljava/util/List;

    iget v1, p1, Lcc/Z;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget p1, p1, Lcc/Z;->d:I

    const-string v1, "getTypeList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Lcc/T;

    if-lt v3, p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v3

    iget v4, v3, Lcc/S;->d:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcc/S;->d:I

    iput-boolean v2, v3, Lcc/S;->f:Z

    invoke-virtual {v3}, Lcc/S;->e()Lcc/T;

    move-result-object v4

    invoke-virtual {v4}, Lcc/T;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    move-object v0, v1

    :cond_4
    const-string p1, "run(...)"

    invoke-static {v0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LX4/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lid/a;)V
    .locals 9

    const/16 v0, 0x11

    iput v0, p0, LX4/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    const/4 v2, 0x0

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, LX4/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final j(LL8/a;LW6/b;)LX4/i;
    .locals 3

    invoke-virtual {p0}, LL8/a;->t()[B

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object v0

    invoke-static {p0, v0}, Lc7/a0;->q([BLcom/google/crypto/tink/shaded/protobuf/o;)Lc7/a0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/a0;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result v0

    const-string v1, "empty keyset"

    if-eqz v0, :cond_1

    new-instance v0, LX4/i;

    :try_start_0
    invoke-virtual {p0}, Lc7/a0;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {p1, p0, v2}, LW6/b;->b([B[B)[B

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p1

    invoke-static {p0, p1}, Lc7/x0;->t([BLcom/google/crypto/tink/shaded/protobuf/o;)Lc7/x0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/x0;->p()I

    move-result p1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/16 p1, 0x9

    invoke-direct {v0, p1, p0}, LX4/i;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized n(Landroid/content/Context;)LX4/i;
    .locals 3

    const-class v0, LX4/i;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, LX4/i;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, LX4/i;->c:LX4/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_3
    new-instance v2, LX4/i;

    invoke-direct {v2, p0}, LX4/i;-><init>(Landroid/content/Context;)V

    sput-object v2, LX4/i;->c:LX4/i;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method


# virtual methods
.method public a(ILjava/io/Serializable;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 1

    const-string p0, "ProfileInstaller"

    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/io/File;LQ3/k;)Z
    .locals 4

    check-cast p1, Ljava/io/InputStream;

    const-string p3, "StreamEncoder"

    const/high16 v0, 0x10000

    const-class v1, [B

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, LT3/f;

    invoke-virtual {p0, v1, v0}, LT3/f;->e(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-virtual {v3, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-virtual {p0, v0}, LT3/f;->j(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    const/4 p2, 0x3

    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Failed to encode data onto the OutputStream"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    invoke-virtual {p0, v0}, LT3/f;->j(Ljava/lang/Object;)V

    :goto_2
    return v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    invoke-virtual {p0, v0}, LT3/f;->j(Ljava/lang/Object;)V

    throw p1
.end method

.method public f(I)Lcc/T;
    .locals 0

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcc/T;

    return-object p0
.end method

.method public f0()LC3/e;
    .locals 2

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM3/a;

    invoke-virtual {v0}, LM3/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LC3/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LC3/j;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, LC3/m;

    invoke-direct {v0, p0}, LC3/m;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x1

    sget-object v1, LV6/n;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV6/l;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LV6/l;->b()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string v2, "No wrapper found for "

    if-eqz v1, :cond_17

    sget v3, LV6/o;->a:I

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Lc7/x0;

    invoke-virtual {p0}, Lc7/x0;->r()I

    move-result v3

    invoke-virtual {p0}, Lc7/x0;->q()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v8, v0

    move v6, v5

    move v7, v6

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc7/w0;

    invoke-virtual {v9}, Lc7/w0;->t()Lc7/n0;

    move-result-object v10

    sget-object v11, Lc7/n0;->ENABLED:Lc7/n0;

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lc7/w0;->u()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Lc7/w0;->s()Lc7/N0;

    move-result-object v10

    sget-object v11, Lc7/N0;->UNKNOWN_PREFIX:Lc7/N0;

    if-eq v10, v11, :cond_6

    invoke-virtual {v9}, Lc7/w0;->t()Lc7/n0;

    move-result-object v10

    sget-object v11, Lc7/n0;->UNKNOWN_STATUS:Lc7/n0;

    if-eq v10, v11, :cond_5

    invoke-virtual {v9}, Lc7/w0;->r()I

    move-result v10

    if-ne v10, v3, :cond_3

    if-nez v7, :cond_2

    move v7, v0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset contains multiple primary keys"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {v9}, Lc7/w0;->q()Lc7/m0;

    move-result-object v9

    invoke-virtual {v9}, Lc7/m0;->q()Lc7/l0;

    move-result-object v9

    sget-object v10, Lc7/l0;->ASYMMETRIC_PUBLIC:Lc7/l0;

    if-eq v9, v10, :cond_4

    move v8, v5

    :cond_4
    add-int/2addr v6, v0

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lc7/w0;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key %d has unknown status"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lc7/w0;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key %d has unknown prefix"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lc7/w0;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key %d has no key data"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz v6, :cond_16

    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    new-instance v3, Lo3/t;

    invoke-direct {v3, v1}, Lo3/t;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0}, Lc7/x0;->q()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc7/w0;

    invoke-virtual {v6}, Lc7/w0;->t()Lc7/n0;

    move-result-object v7

    sget-object v8, Lc7/n0;->ENABLED:Lc7/n0;

    if-ne v7, v8, :cond_b

    invoke-virtual {v6}, Lc7/w0;->q()Lc7/m0;

    move-result-object v7

    invoke-virtual {v7}, Lc7/m0;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lc7/w0;->q()Lc7/m0;

    move-result-object v9

    invoke-virtual {v9}, Lc7/m0;->s()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v9

    invoke-static {v7, v9, v1}, LV6/n;->d(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/h;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6}, Lc7/w0;->t()Lc7/n0;

    move-result-object v9

    if-ne v9, v8, :cond_12

    new-instance v9, LV6/j;

    sget-object v10, LV6/b;->a:[I

    invoke-virtual {v6}, Lc7/w0;->s()Lc7/N0;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x5

    if-eq v10, v0, :cond_e

    const/4 v12, 0x2

    if-eq v10, v12, :cond_e

    const/4 v12, 0x3

    if-eq v10, v12, :cond_d

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    sget-object v10, LV6/c;->a:[B

    goto :goto_5

    :cond_c
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown output prefix type"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v6}, Lc7/w0;->r()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    goto :goto_5

    :cond_e
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v6}, Lc7/w0;->r()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    :goto_5
    invoke-virtual {v6}, Lc7/w0;->t()Lc7/n0;

    move-result-object v11

    invoke-virtual {v6}, Lc7/w0;->s()Lc7/N0;

    move-result-object v12

    invoke-direct {v9, v7, v10, v11, v12}, LV6/j;-><init>(Ljava/lang/Object;[BLc7/n0;Lc7/N0;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, LV6/k;

    invoke-virtual {v9}, LV6/j;->a()[B

    move-result-object v11

    invoke-direct {v10, v11}, LV6/k;-><init>([B)V

    iget-object v11, v3, Lo3/t;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v10, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_f

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v10, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v6}, Lc7/w0;->r()I

    move-result v6

    invoke-virtual {p0}, Lc7/x0;->r()I

    move-result v7

    if-ne v6, v7, :cond_b

    iget-object v6, v9, LV6/j;->c:Lc7/n0;

    if-ne v6, v8, :cond_11

    invoke-virtual {v9}, LV6/j;->a()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lo3/t;->j([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    iput-object v9, v3, Lo3/t;->c:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the primary entry has to be ENABLED"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "only ENABLED key is allowed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    sget-object p0, LV6/n;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV6/l;

    iget-object p1, v3, Lo3/t;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    if-eqz p0, :cond_15

    invoke-interface {p0}, LV6/l;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0, v3}, LV6/l;->a(Lo3/t;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong input primitive class, expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, LV6/l;->b()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, LO9/a;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    sget v0, LO4/j;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, LO4/j;

    const-string v2, "com.google.android.datatransport.events"

    invoke-direct {v1, p0, v2, v0}, LO4/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v1
.end method

.method public h(Lv2/P;)LQc/m0;
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/I;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Lo3/n;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lo3/n;->b:Ljava/lang/Object;

    check-cast p0, Lv2/H;

    iget-object p0, p0, Lv2/H;->b:LQc/m0;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid load type for hints"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, Lv2/H;

    iget-object p0, p0, Lv2/H;->b:LQc/m0;

    :goto_0
    return-object p0
.end method

.method public i(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, LH6/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LH6/m;->b(I)V

    return-void
.end method

.method public k(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, LQ8/c;

    iget-object v1, p0, LQ8/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] restore: complete: isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LQ8/c;->g:LP8/b;

    check-cast v0, LQ8/d;

    iget-object v1, v0, LQ8/d;->b:LQ8/e;

    const/4 v2, 0x1

    iput-boolean v2, v1, LQ8/e;->e:Z

    iput-boolean p1, v1, LQ8/e;->f:Z

    iget-object p1, p0, LQ8/c;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, v0, LQ8/d;->b:LQ8/e;

    iget-boolean v0, v0, LQ8/e;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "is_success"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, LQ8/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object p0, p0, LQ8/c;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized l(LP3/c;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p1, LP3/c;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p1, LP3/c;->c:LP3/b;

    iget-object v0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public m(LPb/n;)LJb/f;
    .locals 4

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LPb/n;->c()Lhc/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, LYb/f;->SOURCE:LYb/f;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p1, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, LPb/n;

    invoke-direct {v3, v2}, LPb/n;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, LX4/i;->m(LPb/n;)LJb/f;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, LJb/f;->Q()Lrc/o;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p1}, LPb/n;->e()Lhc/f;

    move-result-object p1

    sget-object v0, LRb/c;->FROM_JAVA_LOADER:LRb/c;

    invoke-interface {p0, p1, v0}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    instance-of p1, p0, LJb/f;

    if-eqz p1, :cond_4

    move-object v1, p0

    check-cast v1, LJb/f;

    :cond_4
    return-object v1

    :cond_5
    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v0

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, LVb/d;

    invoke-virtual {p0, v0}, LVb/d;->c(Lhc/c;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LWb/s;

    if-eqz p0, :cond_7

    iget-object p0, p0, LWb/s;->k:LWb/d;

    iget-object p0, p0, LWb/d;->d:LWb/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, LPb/n;->e()Lhc/f;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LWb/x;->v(Lhc/f;LPb/n;)LJb/f;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method public declared-synchronized o()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, LX4/a;

    iget-object v1, v0, LX4/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v0, LX4/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public onProgress(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, LQ8/c;

    iget-object v1, p0, LQ8/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] restore: onProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v0}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LQ8/c;->g:LP8/b;

    check-cast p0, LQ8/d;

    iget-object p0, p0, LQ8/d;->b:LQ8/e;

    iput-wide p1, p0, LQ8/e;->c:J

    iput-wide p3, p0, LQ8/e;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LX4/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Lc7/x0;

    invoke-static {p0}, LV6/o;->a(Lc7/x0;)Lc7/C0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/z;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public w0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public z0()Z
    .locals 3

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM3/a;

    invoke-virtual {p0}, LM3/a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
