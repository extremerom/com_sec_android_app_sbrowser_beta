.class public final Lcom/google/android/gms/internal/auth/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;

.field public static volatile h:Lcom/google/android/gms/internal/auth/g;

.field public static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/U;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;

.field public final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/n;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/U;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/gms/internal/auth/n;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/auth/n;->d:I

    iget-object p4, p1, Lcom/google/android/gms/internal/auth/U;->b:Ljava/lang/Object;

    check-cast p4, Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/n;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/auth/n;->h:Lcom/google/android/gms/internal/auth/g;

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/auth/n;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/n;->h:Lcom/google/android/gms/internal/auth/g;

    if-nez v1, :cond_4

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/auth/n;->h:Lcom/google/android/gms/internal/auth/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/auth/g;->a:Landroid/content/Context;

    if-eq v1, p0, :cond_3

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/auth/i;->b()V

    invoke-static {}, Lcom/google/android/gms/internal/auth/p;->a()V

    const-class v1, Lcom/google/android/gms/internal/auth/j;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/auth/j;->c:Lcom/google/android/gms/internal/auth/j;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/auth/e;

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/auth/j;->c:Lcom/google/android/gms/internal/auth/j;

    iget-object v3, v3, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/auth/e;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/gms/internal/auth/j;->c:Lcom/google/android/gms/internal/auth/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    new-instance v1, Lcom/google/android/gms/internal/auth/U;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/auth/U;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/Z;->b(Lcom/google/android/gms/internal/auth/t;)Lcom/google/android/gms/internal/auth/t;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/auth/g;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/auth/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auth/t;)V

    sput-object v2, Lcom/google/android/gms/internal/auth/n;->h:Lcom/google/android/gms/internal/auth/g;

    sget-object p0, Lcom/google/android/gms/internal/auth/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/auth/n;->f:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/w0;->f([B)Lcom/google/android/gms/internal/auth/w0;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1b

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid byte[] value for "

    const-string v1, ": "

    const-string v3, "PhenotypeFlag"

    invoke-static {v2, v0, p0, v1, p1}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1b

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid double value for "

    const-string v1, ": "

    const-string v3, "PhenotypeFlag"

    invoke-static {v2, v0, p0, v1, p1}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/auth/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/f;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid boolean value for "

    const-string v1, ": "

    const-string v3, "PhenotypeFlag"

    invoke-static {v2, v0, p0, v1, p1}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x19

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid long value for "

    const-string v1, ": "

    const-string v3, "PhenotypeFlag"

    invoke-static {v2, v0, p0, v1, p1}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/auth/n;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/auth/n;->d:I

    if-ge v1, v0, :cond_e

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/auth/n;->d:I

    if-ge v1, v0, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/auth/n;->h:Lcom/google/android/gms/internal/auth/g;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/auth/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/j;->u(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/j;->v()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/auth/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/n;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v3

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/U;->b:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_b

    iget-object v4, v1, Lcom/google/android/gms/internal/auth/g;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/auth/l;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/auth/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    iget-object v4, v4, Lcom/google/android/gms/internal/auth/U;->b:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gms/internal/auth/i;->g:LN/f;

    const-class v5, Lcom/google/android/gms/internal/auth/i;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v6, Lcom/google/android/gms/internal/auth/i;->g:LN/f;

    invoke-virtual {v6, v4}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/auth/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_3

    :try_start_2
    new-instance v8, Lcom/google/android/gms/internal/auth/i;

    invoke-direct {v8, v2, v4}, Lcom/google/android/gms/internal/auth/i;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6, v4, v8}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-object v7, v8

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v5

    goto :goto_3

    :goto_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_4
    move-object v7, v3

    :goto_3
    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/auth/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->c:Ljava/lang/Object;

    :goto_5
    iget-object v1, v1, Lcom/google/android/gms/internal/auth/g;->b:Lcom/google/android/gms/internal/auth/t;

    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/t;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/r;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/r;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/k;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/U;->b:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/n;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/auth/k;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :cond_8
    :goto_7
    if-nez v3, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/n;->c:Ljava/lang/Object;

    goto :goto_8

    :cond_9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_a
    :goto_8
    iput-object v2, p0, Lcom/google/android/gms/internal/auth/n;->e:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/auth/n;->d:I

    goto :goto_9

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/auth/p;->a:LN/f;

    throw v3

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_9
    monitor-exit p0

    goto :goto_b

    :goto_a
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_e
    :goto_b
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/n;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/n;->a:Lcom/google/android/gms/internal/auth/U;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/n;->b:Ljava/lang/String;

    return-object p0
.end method
