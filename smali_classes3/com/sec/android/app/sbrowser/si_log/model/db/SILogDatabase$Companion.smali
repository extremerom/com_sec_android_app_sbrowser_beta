.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007*\u0001\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "LNc/B;",
        "scope",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;",
        "delegate",
        "com/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$roomDatabaseCallback$1",
        "roomDatabaseCallback",
        "(Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$roomDatabaseCallback$1;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "getInstance",
        "(Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "",
        "LOG_TAG",
        "Ljava/lang/String;",
        "DATABASE_NAME",
        "INSTANCE",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "Delegate",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$default(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object p2

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;->getInstance(Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    move-result-object p0

    return-object p0
.end method

.method private final roomDatabaseCallback(Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$roomDatabaseCallback$1;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$roomDatabaseCallback$1;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$roomDatabaseCallback$1;-><init>(LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)V

    return-object p0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->access$getINSTANCE$cp()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->access$getINSTANCE$cp()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    const-string v2, "si_log_database.db"

    invoke-static {v0, v1, v2}, LG5/y3;->f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)LJ2/N;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, LJ2/N;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, LJ2/N;->q:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;->roomDatabaseCallback(Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$roomDatabaseCallback$1;

    move-result-object p1

    const-string p2, "callback"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v0, LJ2/N;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LJ2/N;->b()LJ2/U;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->access$setINSTANCE$cp(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
