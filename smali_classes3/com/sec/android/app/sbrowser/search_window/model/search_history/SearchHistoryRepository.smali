.class public final Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "LNc/x;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/content/Context;LNc/x;)V",
        "",
        "hoursAgo",
        "Ldb/j;",
        "",
        "getTimeRange",
        "(I)Ldb/j;",
        "Landroidx/lifecycle/S;",
        "",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
        "getHistory",
        "()Landroidx/lifecycle/S;",
        "item",
        "Ldb/r;",
        "insert",
        "(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lib/c;)Ljava/lang/Object;",
        "keyword",
        "delete",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "deleteAll",
        "(Lib/c;)Ljava/lang/Object;",
        "deleteOldHistory",
        "timeRange",
        "deleteHistoryBetween",
        "(I)V",
        "ioDispatcher",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;",
        "searchHistoryDatabase",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;",
        "searchHistoryDao",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchHistoryDao:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchHistoryDatabase:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;LNc/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->ioDispatcher:LNc/x;

    sget-object p2, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->searchHistoryDatabase:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDatabase;->searchHistoryDao()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->searchHistoryDao:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;LNc/x;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;-><init>(Landroid/content/Context;LNc/x;)V

    return-void
.end method

.method public static final synthetic access$getSearchHistoryDao$p(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->searchHistoryDao:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;

    return-object p0
.end method

.method public static final synthetic access$getTimeRange(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;I)Ldb/j;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->getTimeRange(I)Ldb/j;

    move-result-object p0

    return-object p0
.end method

.method private final getTimeRange(I)Ldb/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ldb/j;"
        }
    .end annotation

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    neg-int p1, p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ldb/j;

    invoke-direct {v0, p1, p0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final delete(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->ioDispatcher:LNc/x;

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$delete$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$delete$2;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final deleteAll(Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->ioDispatcher:LNc/x;

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$deleteAll$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$deleteAll$2;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final deleteHistoryBetween(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$deleteHistoryBetween$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$deleteHistoryBetween$1;-><init>(ILcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteOldHistory(Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->ioDispatcher:LNc/x;

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$deleteOldHistory$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$deleteOldHistory$2;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final getHistory()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->searchHistoryDao:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;->getHistory()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public final insert(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->ioDispatcher:LNc/x;

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$insert$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$insert$2;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
