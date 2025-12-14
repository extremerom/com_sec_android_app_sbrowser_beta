.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
.super Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010#\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 C2\u00020\u0001:\u0001CB=\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J+\u0010\u0019\u001a \u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00100\u00160\u00100\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\'\u0010\u001d\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0010\u0018\u00010\u00160\u0015\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u0019\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00100\u0015\u00a2\u0006\u0004\u0008\u001f\u0010\u001aJ\u0015\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u0015\u00a2\u0006\u0004\u0008 \u0010\u001aJ\u001b\u0010#\u001a\u00020\"2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0010\u00a2\u0006\u0004\u0008#\u0010$J\u001b\u0010&\u001a\u00020\"2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0010\u00a2\u0006\u0004\u0008&\u0010$J\u001d\u0010*\u001a\u00020\"2\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u001b\u00a2\u0006\u0004\u0008*\u0010+J\u0015\u0010,\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008,\u0010-J\u001b\u00100\u001a\u00020\"2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\'0.\u00a2\u0006\u0004\u00080\u00101R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u00102R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00103R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u00104R#\u0010;\u001a\n 6*\u0004\u0018\u000105058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:RK\u0010B\u001a,\u0012(\u0012&\u0012\u000c\u0012\n 6*\u0004\u0018\u00010=0= 6*\u0012\u0012\u000c\u0012\n 6*\u0004\u0018\u00010=0=\u0018\u00010\u00100<0\u00158FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008>\u00108\u0012\u0004\u0008@\u0010A\u001a\u0004\u0008?\u0010\u001a\u00a8\u0006D"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
        "model",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "modelV2",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;",
        "urlMigrator",
        "LNc/x;",
        "coroutineDispatcher",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;",
        "siteItemUpdater",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)V",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "quickAccessItemEntities",
        "getLatestItemInCollection",
        "(Ljava/util/List;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "LQc/h;",
        "Ldb/j;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
        "getItemsGroupByDeviceIdNotOwn",
        "()LQc/h;",
        "",
        "getItemCountByDeviceIdOwn",
        "getOldDbItemsByDeviceOwn",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
        "getItemDeviceNamesAndDeviceIdsNotOwn",
        "getOldDbItemDeviceNameAndDeviceIdOwn",
        "quickAccessItems",
        "Ldb/r;",
        "addQuickAccessItemsFromSync",
        "(Ljava/util/List;)V",
        "targetItems",
        "replaceQuickAccessItems",
        "",
        "deviceId",
        "visibility",
        "setSyncGroupItemListVisibility",
        "(Ljava/lang/String;I)V",
        "getSyncGroupItemListVisibility",
        "(Ljava/lang/String;)I",
        "",
        "deviceIds",
        "deleteDevicesFromSync",
        "(Ljava/util/Set;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;",
        "kotlin.jvm.PlatformType",
        "quickAccessSettings$delegate",
        "Ldb/f;",
        "getQuickAccessSettings",
        "()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;",
        "quickAccessSettings",
        "",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
        "oldDbItemsInDevice$delegate",
        "getOldDbItemsInDevice",
        "getOldDbItemsInDevice$annotations",
        "()V",
        "oldDbItemsInDevice",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final coroutineDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldDbItemsInDevice$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessSettings$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelV2"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlMigrator"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4, p6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/u;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/u;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->quickAccessSettings$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/j;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/j;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->oldDbItemsInDevice$delegate:Ldb/f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;ILtb/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)V

    return-void
.end method

.method public static final synthetic access$getLatestItemInCollection(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;Ljava/util/List;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getLatestItemInCollection(Ljava/util/List;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getModel$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    return-object p0
.end method

.method private final getLatestItemInCollection(Ljava/util/List;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getLastModifiedTime()J

    move-result-wide v0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getLastModifiedTime()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    move-object p1, v2

    move-wide v0, v3

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :goto_1
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    return-object p0
.end method

.method public static synthetic getOldDbItemsInDevice$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getQuickAccessSettings()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->quickAccessSettings$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    return-object p0
.end method

.method private static final oldDbItemsInDevice_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)LQc/h;
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v0

    const-string v1, "getItems(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->oldDbItemsInDevice_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->quickAccessSettings_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    return-object v0
.end method

.method private static final quickAccessSettings_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addQuickAccessItemsFromSync(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "quickAccessItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->addQuickAccessItemsFromSync(Ljava/util/List;)V

    return-void
.end method

.method public final deleteDevicesFromSync(Ljava/util/Set;)V
    .locals 5
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "no_device_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$deleteDevicesFromSync$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$deleteDevicesFromSync$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;Lib/c;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteDevicesFromSync(Ljava/util/List;)V

    return-void
.end method

.method public final getItemCountByDeviceIdOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemsByDeviceIdOwn()LQc/h;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemCountByDeviceIdOwn$$inlined$map$1;-><init>(LQc/h;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v1, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getItemDeviceNamesAndDeviceIdsNotOwn()LQc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemDeviceNamesAndDeviceIdsNotOwn()LQc/h;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v0, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getItemsGroupByDeviceIdNotOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemsGroupByDeviceIdNotOwn()LQc/h;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getItemsGroupByDeviceIdNotOwn$$inlined$map$1;-><init>(LQc/h;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v1, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getOldDbItemDeviceNameAndDeviceIdOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getOldDbItemsInDevice()LQc/h;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getOldDbItemDeviceNameAndDeviceIdOwn$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getOldDbItemDeviceNameAndDeviceIdOwn$$inlined$map$1;-><init>(LQc/h;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v1, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getOldDbItemsByDeviceOwn()LQc/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getOldDbItemsInDevice()LQc/h;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getOldDbItemsByDeviceOwn$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$getOldDbItemsByDeviceOwn$$inlined$map$1;-><init>(LQc/h;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->coroutineDispatcher:LNc/x;

    invoke-static {v1, p0}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public final getOldDbItemsInDevice()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->oldDbItemsInDevice$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method public final getSyncGroupItemListVisibility(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getQuickAccessSettings()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getSyncGroupItemListVisibility(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final replaceQuickAccessItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "targetItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->modelV2:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->replaceQuickAccessItems(Ljava/util/List;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDefaultItemsEdited(Z)V

    return-void
.end method

.method public final setSyncGroupItemListVisibility(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getQuickAccessSettings()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setSyncGroupItemListVisibility(Ljava/lang/String;I)V

    return-void
.end method
