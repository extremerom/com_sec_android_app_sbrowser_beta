.class public final Lcom/google/firebase/messaging/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Lcom/google/firebase/messaging/C;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->a:Ljava/lang/Object;

    new-instance p1, LA2/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LA2/f;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/messaging/g;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)LR5/p;
    .locals 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v1, "Binding to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/q;->e()Lcom/google/firebase/messaging/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/q;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/firebase/messaging/g;->b(Landroid/content/Context;)Lcom/google/firebase/messaging/C;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/y;->a(Landroid/content/Context;)V

    const-string p0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/firebase/messaging/y;->c:LQ5/a;

    sget-wide v2, Lcom/google/firebase/messaging/y;->a:J

    invoke-virtual {p0, v2, v3}, LQ5/a;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/C;->b(Landroid/content/Intent;)LR5/p;

    move-result-object p0

    new-instance v0, LAa/a;

    const/16 v2, 0x1d

    invoke-direct {v0, v2, p1}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, LR5/p;->a(LR5/c;)LR5/p;

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    invoke-static {p0}, Lcom/google/firebase/messaging/g;->b(Landroid/content/Context;)Lcom/google/firebase/messaging/C;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/C;->b(Landroid/content/Intent;)LR5/p;

    :goto_2
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/google/firebase/messaging/C;
    .locals 2

    sget-object v0, Lcom/google/firebase/messaging/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/g;->d:Lcom/google/firebase/messaging/C;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/messaging/C;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/C;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/g;->d:Lcom/google/firebase/messaging/C;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/g;->d:Lcom/google/firebase/messaging/C;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public c(Landroid/content/Intent;)LR5/p;
    .locals 6

    const-string v0, "gcm.rawData64"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "rawData"

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-lt v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;Landroid/content/Intent;)LR5/p;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/firebase/messaging/g;->b:Ljava/lang/Object;

    check-cast p0, LA2/f;

    new-instance v1, Lc9/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p1}, Lc9/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, LG5/G;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LR5/p;

    move-result-object v1

    new-instance v2, LHa/a;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3, p1}, LHa/a;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, LR5/p;->m(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    move-result-object p0

    :goto_1
    return-object p0
.end method
