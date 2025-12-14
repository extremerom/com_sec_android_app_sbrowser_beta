.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "DATABASE_NAME",
        "",
        "INSTANCE",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;",
        "getDatabase",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDatabase(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;->access$getINSTANCE$cp()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;

    const-string v1, "quickaccess.db"

    invoke-static {p1, v0, v1}, LG5/y3;->f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)LJ2/N;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, LJ2/N;->i:Z

    invoke-virtual {p1}, LJ2/N;->b()LJ2/U;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;->access$setINSTANCE$cp(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method
