.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J%\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ*\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;",
        "",
        "<init>",
        "()V",
        "Ldb/r;",
        "onMigrationSuccess",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
        "quickAccessModel",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "getItemsFromLegacyDB",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;)Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "dao",
        "migrate",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lib/c;)Ljava/lang/Object;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getItemsFromLegacyDB(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->getItemsFromLegacyDB(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onMigrationSuccess(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->onMigrationSuccess()V

    return-void
.end method

.method private final getItemsFromLegacyDB(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;->getItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p2, "getItems(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2Kt;->toEntity(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceId(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceName(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSamsungAccountType(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertAccountFieldsOnCreate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnUpdate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static synthetic migrate$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lib/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    invoke-direct {p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->migrate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final onMigrationSuccess()V
    .locals 1

    const-string p0, "QuickAccessDBMigrator"

    const-string v0, "migrate success"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setQuickAccessV2MigrationIsCompleted(Z)V

    return-void
.end method


# virtual methods
.method public final migrate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
            "Lib/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lib/c;)V

    sget-object p1, Lib/i;->a:Lib/i;

    invoke-static {p1, p0}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
