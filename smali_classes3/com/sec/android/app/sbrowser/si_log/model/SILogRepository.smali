.class public final Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;,
        Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 [2\u00020\u0001:\u0002[\\B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JQ\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014JG\u0010\u0016\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000eH\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0004\u0008\"\u0010#J\u0018\u0010%\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0004\u0008%\u0010&J\u0018\u0010\'\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0004\u0008\'\u0010!J\u001e\u0010*\u001a\u00020\u00122\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001d0(H\u0086@\u00a2\u0006\u0004\u0008*\u0010+J\u0018\u0010.\u001a\u00020\u00122\u0006\u0010-\u001a\u00020,H\u0086@\u00a2\u0006\u0004\u0008.\u0010/J\u0018\u00101\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0004\u00081\u0010&J\u0013\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001a\u00a2\u0006\u0004\u00082\u0010\u001cJ\u0018\u00104\u001a\u00020\u00122\u0006\u00103\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u00084\u00105J\u0013\u00106\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001a\u00a2\u0006\u0004\u00086\u0010\u001cR\u0014\u00107\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010=\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010@\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR#\u0010B\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0(0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010\u001cR/\u0010E\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0(0\u000e0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010C\u001a\u0004\u0008F\u0010\u001cR/\u0010G\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0(0\u000e0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010C\u001a\u0004\u0008H\u0010\u001cR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR#\u0010T\u001a\n P*\u0004\u0018\u00010O0O8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010K\u001a\u0004\u0008R\u0010SR \u0010Z\u001a\u00070U\u00a2\u0006\u0002\u0008V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010K\u001a\u0004\u0008X\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
        "",
        "Landroid/app/Application;",
        "application",
        "LNc/x;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/app/Application;LNc/x;)V",
        "",
        "serviceId",
        "",
        "iuid",
        "eventId",
        "value",
        "",
        "extraParams",
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;",
        "resultListener",
        "Ldb/r;",
        "sendSILog",
        "(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;)V",
        "requestParametersString",
        "insertSILogHistory",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
        "sendSIStatusLogs",
        "()V",
        "LQc/h;",
        "getSILogCount",
        "()LQc/h;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "siLogEntity",
        "",
        "insertSILog",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;",
        "deleteAllSILogs",
        "(Lib/c;)Ljava/lang/Object;",
        "maxStoragePeriodDays",
        "deleteSILogsByDaysBefore",
        "(JLib/c;)Ljava/lang/Object;",
        "deleteSILog",
        "",
        "siLogEntities",
        "deleteMultipleSILogs",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
        "statusLogDto",
        "updateSIStatusLog",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;",
        "storagePeriodDays",
        "setSILogStoragePeriodDays",
        "getSILogStoragePeriodDays",
        "displayGroupType",
        "setSILogHistoryListDisplayGroupType",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "getSILogHistoryListDisplayGroupType",
        "ioDispatcher",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "siLogDatabase",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "siLogDao",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "siStatusLogDao",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "allSILogs",
        "LQc/h;",
        "getAllSILogs",
        "allSILogsGroupByServiceId",
        "getAllSILogsGroupByServiceId",
        "allSILogsGroupByEventId",
        "getAllSILogsGroupByEventId",
        "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;",
        "siLogClient$delegate",
        "Ldb/f;",
        "getSiLogClient",
        "()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;",
        "siLogClient",
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;",
        "kotlin.jvm.PlatformType",
        "siLogPreference$delegate",
        "getSiLogPreference",
        "()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;",
        "siLogPreference",
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;",
        "Landroidx/annotation/NonNull;",
        "siLogDataStore$delegate",
        "getSiLogDataStore",
        "()Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;",
        "siLogDataStore",
        "Companion",
        "ResultListener",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allSILogs:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final allSILogsGroupByEventId:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final allSILogsGroupByServiceId:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogClient$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogDataStore$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogDatabase:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogPreference$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siStatusLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->$stable:I

    const-string v0, "SILogRepository"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;LNc/x;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogClient$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogPreference$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/si_log/model/d;-><init>(Landroid/app/Application;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDataStore$delegate:Ldb/f;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    sget-object v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;

    new-instance v4, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$1;

    invoke-direct {v4, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$1;-><init>(Landroid/app/Application;)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion;Landroid/content/Context;LNc/B;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase$Companion$Delegate;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDatabase:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->siLogDao()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;->siStatusLogDao()Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siStatusLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;->getAll()LQc/h;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->allSILogs:LQc/h;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;->getAllGroupByServiceId()LQc/h;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->allSILogsGroupByServiceId:LQc/h;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;->getAllGroupByEventId()LQc/h;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->allSILogsGroupByEventId:LQc/h;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Application;LNc/x;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;-><init>(Landroid/app/Application;LNc/x;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogPreference_delegate$lambda$1()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSiLogClient(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSiLogClient()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSiLogDao$p(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;

    return-object p0
.end method

.method public static final synthetic access$getSiLogDataStore(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSiLogDataStore()Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSiLogPreference(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSiLogPreference()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSiStatusLogDao$p(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siStatusLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;

    return-object p0
.end method

.method public static synthetic b(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDataStore_delegate$lambda$2(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogClient_delegate$lambda$0()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;->getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method private final getSiLogClient()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogClient$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;

    return-object p0
.end method

.method private final getSiLogDataStore()Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDataStore$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    return-object p0
.end method

.method private final getSiLogPreference()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogPreference$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    return-object p0
.end method

.method private static final siLogClient_delegate$lambda$0()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;

    move-result-object v0

    return-object v0
.end method

.method private static final siLogDataStore_delegate$lambda$2(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    return-object p0
.end method

.method private static final siLogPreference_delegate$lambda$1()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final deleteAllSILogs(Lib/c;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteAllSILogs$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteAllSILogs$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lib/c;)V

    invoke-static {v0, v1, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final deleteMultipleSILogs(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteMultipleSILogs$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteMultipleSILogs$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Ljava/util/List;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final deleteSILog(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteSILog$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteSILog$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final deleteSILogsByDaysBefore(JLib/c;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteSILogsByDaysBefore$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$deleteSILogsByDaysBefore$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;JLib/c;)V

    invoke-static {v0, v1, p3}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final getAllSILogs()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->allSILogs:LQc/h;

    return-object p0
.end method

.method public final getAllSILogsGroupByEventId()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->allSILogsGroupByEventId:LQc/h;

    return-object p0
.end method

.method public final getAllSILogsGroupByServiceId()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->allSILogsGroupByServiceId:LQc/h;

    return-object p0
.end method

.method public final getSILogCount()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->siLogDao:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;->getCount()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getSILogHistoryListDisplayGroupType()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSiLogDataStore()Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->getHistoryListDisplayGroupTypeFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getSILogStoragePeriodDays()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSiLogDataStore()Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogDataStore;->getStoragePeriodFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final insertSILog(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            "Lib/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILog$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILog$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final insertSILogHistory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestParametersString"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSILogHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v9, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$insertSILogHistory$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v9, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final sendSILog(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;)V
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1;

    const/4 v8, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSILog$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;Lib/c;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v9, v1, v1, v10, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final sendSIStatusLogs()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$sendSIStatusLogs$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final setSILogHistoryListDisplayGroupType(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$setSILogHistoryListDisplayGroupType$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$setSILogHistoryListDisplayGroupType$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Ljava/lang/String;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final setSILogStoragePeriodDays(JLib/c;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$setSILogStoragePeriodDays$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$setSILogStoragePeriodDays$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;JLib/c;)V

    invoke-static {v0, v1, p3}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final updateSIStatusLog(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$updateSIStatusLog$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$updateSIStatusLog$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
