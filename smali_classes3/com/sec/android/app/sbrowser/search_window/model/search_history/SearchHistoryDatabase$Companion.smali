.class public final Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000c8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u000c8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\t8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000bR\u0014\u0010\u0011\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000bR\u0014\u0010\u0013\u001a\u00020\t8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000bR\u0014\u0010\u0014\u001a\u00020\t8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000bR\u0014\u0010\u0015\u001a\u00020\u000c8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000eR\u0014\u0010\u0016\u001a\u00020\u000c8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000eR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u000bR\u0014\u0010\u001a\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u000bR\u0014\u0010\u001b\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u000bR\u0014\u0010\u001c\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u000bR\u0014\u0010\u001d\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u000bR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;",
        "getInstance",
        "(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;",
        "",
        "DATABASE_NAME",
        "Ljava/lang/String;",
        "",
        "OLD_VERSION",
        "I",
        "NEW_VERSION",
        "TABLE_NAME",
        "NEW_TABLE_NAME",
        "ID",
        "KEYWORD",
        "DATETIME",
        "MAX_SHOWN",
        "DURATION",
        "instance",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;",
        "CREATE_NEW_TABLE",
        "COPY_TABLE",
        "REMOVE_OLD_TABLE",
        "ALTER_TABLE",
        "ADD_INDEX",
        "LN2/a;",
        "migrationToRoom",
        "LN2/a;",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->access$getInstance$cp()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p0}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    const-string v1, "SearchHistory.db"

    invoke-static {p1, v0, v1}, LG5/y3;->f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)LJ2/N;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->access$getMigrationToRoom$cp()LN2/a;

    move-result-object v0

    filled-new-array {v0}, [LN2/a;

    move-result-object v0

    invoke-virtual {p1, v0}, LJ2/N;->a([LN2/a;)V

    invoke-virtual {p1}, LJ2/N;->b()LJ2/U;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->access$setInstance$cp(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;)V
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
    invoke-static {}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->access$getInstance$cp()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    move-result-object p0

    return-object p0
.end method
