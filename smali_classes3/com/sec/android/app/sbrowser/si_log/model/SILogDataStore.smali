.class public final Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\'\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00138FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R!\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0015\u001a\u0004\u0008\u001c\u0010\u0017R!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0015\u001a\u0004\u0008\u001f\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "storagePeriodDays",
        "Ldb/r;",
        "setStoragePeriod",
        "(JLib/c;)Ljava/lang/Object;",
        "",
        "displayGroupType",
        "setHistoryListDisplayGroupType",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "Lm1/h;",
        "Lp1/b;",
        "dataStore",
        "Lm1/h;",
        "LQc/h;",
        "dataStoreDataFlow$delegate",
        "Ldb/f;",
        "getDataStoreDataFlow",
        "()LQc/h;",
        "getDataStoreDataFlow$annotations",
        "()V",
        "dataStoreDataFlow",
        "storagePeriodFlow$delegate",
        "getStoragePeriodFlow",
        "storagePeriodFlow",
        "historyListDisplayGroupTypeFlow$delegate",
        "getHistoryListDisplayGroupTypeFlow",
        "historyListDisplayGroupTypeFlow",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_HISTORY_LIST_DISPLAY_GROUP_TYPE:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_SI_LOG_STORAGE_PERIOD:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final dataStore:Lm1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm1/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dataStoreDataFlow$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final historyListDisplayGroupTypeFlow$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storagePeriodFlow$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->$stable:I

    new-instance v0, Lp1/f;

    const-string v1, "log_storage_period"

    invoke-direct {v0, v1}, Lp1/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->PREF_SI_LOG_STORAGE_PERIOD:Lp1/f;

    new-instance v0, Lp1/f;

    const-string v1, "history_list_display_group_type"

    invoke-direct {v0, v1}, Lp1/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->PREF_HISTORY_LIST_DISPLAY_GROUP_TYPE:Lp1/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStoreKt;->getSiLogPreferencesDataStore(Landroid/content/Context;)Lm1/h;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStore:Lm1/h;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/model/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStoreDataFlow$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/model/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->storagePeriodFlow$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/a;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/model/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->historyListDisplayGroupTypeFlow$delegate:Ldb/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStoreDataFlow_delegate$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPREF_HISTORY_LIST_DISPLAY_GROUP_TYPE$cp()Lp1/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->PREF_HISTORY_LIST_DISPLAY_GROUP_TYPE:Lp1/f;

    return-object v0
.end method

.method public static final synthetic access$getPREF_SI_LOG_STORAGE_PERIOD$cp()Lp1/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->PREF_SI_LOG_STORAGE_PERIOD:Lp1/f;

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->storagePeriodFlow_delegate$lambda$2(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->historyListDisplayGroupTypeFlow_delegate$lambda$4(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final dataStoreDataFlow_delegate$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStore:Lm1/h;

    invoke-interface {p0}, Lm1/h;->getData()LQc/h;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$dataStoreDataFlow$2$1;-><init>(Lib/c;)V

    new-instance v1, LQc/y;

    invoke-direct {v1, p0, v0}, LQc/y;-><init>(LQc/h;Lsb/o;)V

    return-object v1
.end method

.method public static synthetic getDataStoreDataFlow$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static final historyListDisplayGroupTypeFlow_delegate$lambda$4(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->getDataStoreDataFlow()LQc/h;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$historyListDisplayGroupTypeFlow_delegate$lambda$4$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$historyListDisplayGroupTypeFlow_delegate$lambda$4$$inlined$map$1;-><init>(LQc/h;)V

    return-object v0
.end method

.method private static final storagePeriodFlow_delegate$lambda$2(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;)LQc/h;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->getDataStoreDataFlow()LQc/h;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$storagePeriodFlow_delegate$lambda$2$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$storagePeriodFlow_delegate$lambda$2$$inlined$map$1;-><init>(LQc/h;)V

    return-object v0
.end method


# virtual methods
.method public final getDataStoreDataFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStoreDataFlow$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getHistoryListDisplayGroupTypeFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->historyListDisplayGroupTypeFlow$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getStoragePeriodFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->storagePeriodFlow$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final setHistoryListDisplayGroupType(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStore:Lm1/h;

    new-instance p2, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$2;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$2;-><init>(Ljava/lang/String;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setHistoryListDisplayGroupType$1;->label:I

    new-instance v3, Lp1/h;

    invoke-direct {v3, p2, v2}, Lp1/h;-><init>(Lsb/n;Lib/c;)V

    invoke-interface {p0, v3, v0}, Lm1/h;->a(Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "HistoryListDisplayGroupType: "

    const-string p2, "SILogDataStore"

    invoke-static {p0, p1, p2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final setStoragePeriod(JLib/c;)Ljava/lang/Object;
    .locals 4
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;Lib/c;)V

    :goto_0
    iget-object p3, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->J$0:J

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->dataStore:Lm1/h;

    new-instance p3, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$2;

    const/4 v2, 0x0

    invoke-direct {p3, p1, p2, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$2;-><init>(JLib/c;)V

    iput-wide p1, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->J$0:J

    iput v3, v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$setStoragePeriod$1;->label:I

    new-instance v3, Lp1/h;

    invoke-direct {v3, p3, v2}, Lp1/h;-><init>(Lsb/n;Lib/c;)V

    invoke-interface {p0, v3, v0}, Lm1/h;->a(Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "StoragePeriodDays: "

    const-string p3, "SILogDataStore"

    invoke-static {p1, p2, p0, p3}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
