.class public final Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Companion;,
        Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 <2\u00020\u0001:\u0002<=B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\n2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\'\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00150%8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010!\u001a\u0004\u0008\'\u0010(R3\u0010-\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00150*0%8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010!\u001a\u0004\u0008,\u0010(R3\u00100\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00150*0%8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010!\u001a\u0004\u0008/\u0010(R!\u00103\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010!\u001a\u0004\u00082\u0010\tR!\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u001b0%8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010!\u001a\u0004\u00085\u0010(RK\u0010;\u001a,\u0012(\u0012&\u0012\u0004\u0012\u00020\u001b\u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0015070\u0015070\u00068FX\u0086\u0084\u0002\u00a2\u0006\u0012\n\u0004\u00088\u0010!\u0012\u0004\u0008:\u0010\u000c\u001a\u0004\u00089\u0010\t\u00a8\u0006>"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;",
        "Landroidx/lifecycle/a;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Landroidx/lifecycle/S;",
        "",
        "getSILogCount",
        "()Landroidx/lifecycle/S;",
        "Ldb/r;",
        "deleteAllSILogs",
        "()V",
        "",
        "maxStoragePeriodDays",
        "deleteSILogsByDaysBefore",
        "(J)V",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "siLogEntity",
        "deleteSILog",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V",
        "",
        "siLogEntities",
        "deleteMultipleSILogs",
        "(Ljava/util/List;)V",
        "storagePeriodDays",
        "setSILogStoragePeriodDays",
        "",
        "displayGroupType",
        "setSILogHistoryListDisplayGroupType",
        "(Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
        "siLogRepository$delegate",
        "Ldb/f;",
        "getSiLogRepository",
        "()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
        "siLogRepository",
        "LQc/h;",
        "allSILogs$delegate",
        "getAllSILogs",
        "()LQc/h;",
        "allSILogs",
        "",
        "allSILogsGroupByServiceId$delegate",
        "getAllSILogsGroupByServiceId",
        "allSILogsGroupByServiceId",
        "allSILogsGroupByEventId$delegate",
        "getAllSILogsGroupByEventId",
        "allSILogsGroupByEventId",
        "siLogStoragePeriodDays$delegate",
        "getSiLogStoragePeriodDays",
        "siLogStoragePeriodDays",
        "siLogHistoryListDisplayGroupType$delegate",
        "getSiLogHistoryListDisplayGroupType",
        "siLogHistoryListDisplayGroupType",
        "Ldb/j;",
        "siLogHistoryListDisplayItemGroups$delegate",
        "getSiLogHistoryListDisplayItemGroups",
        "getSiLogHistoryListDisplayItemGroups$annotations",
        "siLogHistoryListDisplayItemGroups",
        "Companion",
        "Factory",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allSILogs$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final allSILogsGroupByEventId$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final allSILogsGroupByServiceId$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogHistoryListDisplayGroupType$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogHistoryListDisplayItemGroups$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogRepository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogStoragePeriodDays$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->$stable:I

    const-string v0, "SILogViewModel"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/si_log/model/d;-><init>(Landroid/app/Application;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogRepository$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogs$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogsGroupByServiceId$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogsGroupByEventId$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogStoragePeriodDays$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogHistoryListDisplayGroupType$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogHistoryListDisplayItemGroups$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$getSiLogRepository(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method private static final allSILogsGroupByEventId_delegate$lambda$3(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getAllSILogsGroupByEventId()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final allSILogsGroupByServiceId_delegate$lambda$2(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getAllSILogsGroupByServiceId()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final allSILogs_delegate$lambda$1(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getAllSILogs()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogsGroupByServiceId_delegate$lambda$2(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogs_delegate$lambda$1(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogHistoryListDisplayItemGroups_delegate$lambda$8(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogStoragePeriodDays_delegate$lambda$4(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogRepository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogHistoryListDisplayGroupType_delegate$lambda$5(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private final getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogRepository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogsGroupByEventId_delegate$lambda$3(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final siLogHistoryListDisplayGroupType_delegate$lambda$5(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSILogHistoryListDisplayGroupType()LQc/h;

    move-result-object p0

    invoke-static {p0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final siLogHistoryListDisplayItemGroups_delegate$lambda$8(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogHistoryListDisplayGroupType()LQc/h;

    move-result-object v2

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;-><init>(Lib/c;Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)V

    sget v0, LQc/J;->a:I

    new-instance v6, LRc/n;

    sget-object v3, Lib/i;->a:Lib/i;

    sget-object v5, LPc/a;->SUSPEND:LPc/a;

    const/4 v4, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LRc/n;-><init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v6, p0, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method

.method private static final siLogRepository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;Landroid/app/Application;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method private static final siLogStoragePeriodDays_delegate$lambda$4(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)Landroidx/lifecycle/S;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSILogStoragePeriodDays()LQc/h;

    move-result-object v0

    invoke-static {v0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object v0

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deleteAllSILogs()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteAllSILogs$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteAllSILogs$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteMultipleSILogs(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "siLogEntities"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteMultipleSILogs$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteMultipleSILogs$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteSILog(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "siLogEntity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteSILog$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteSILog$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteSILogsByDaysBefore(J)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteSILogsByDaysBefore$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$deleteSILogsByDaysBefore$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;JLib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogsGroupByEventId$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->allSILogsGroupByServiceId$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getSILogCount()Landroidx/lifecycle/S;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogRepository()Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->getSILogCount()LQc/h;

    move-result-object v0

    invoke-static {v0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object v0

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method

.method public final getSiLogHistoryListDisplayGroupType()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogHistoryListDisplayGroupType$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getSiLogHistoryListDisplayItemGroups()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogHistoryListDisplayItemGroups$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getSiLogStoragePeriodDays()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->siLogStoragePeriodDays$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final setSILogHistoryListDisplayGroupType(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayGroupType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$setSILogHistoryListDisplayGroupType$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$setSILogHistoryListDisplayGroupType$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final setSILogStoragePeriodDays(J)V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$setSILogStoragePeriodDays$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$setSILogStoragePeriodDays$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;JLib/c;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->deleteSILogsByDaysBefore(J)V

    return-void
.end method
