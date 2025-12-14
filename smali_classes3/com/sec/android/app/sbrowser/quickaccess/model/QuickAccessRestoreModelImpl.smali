.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001e\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0082@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001e\u0010\u0012\u001a\u00020\u000e2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0082@\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u001d\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00142\u0006\u0010\u0013\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001e\u0010\u001a\u001a\u00020\u000e2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0014H\u0096@\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\u0018\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0014H\u0096@\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001c\u0010\"\u001a\n !*\u0004\u0018\u00010\u000c0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "entity",
        "",
        "isSynced",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z",
        "",
        "",
        "deleteTarget",
        "Ldb/r;",
        "deleteEntities",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "updateTarget",
        "updateDeleteStates",
        "isQAEdited",
        "",
        "geEntities",
        "(Z)Ljava/util/List;",
        "deleteQuickAccessItemFromOriginalDb",
        "(ZLib/c;)Ljava/lang/Object;",
        "entities",
        "insertItems",
        "getQuickAccessUrlListFromOriginalDb",
        "(Lib/c;)Ljava/lang/Object;",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "dao",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
        "kotlin.jvm.PlatformType",
        "deviceId",
        "Ljava/lang/String;",
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


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->context:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDatabase;->quickaccessDao()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateDeleteStates(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->updateDeleteStates(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final deleteEntities(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->deleteByUrls(Ljava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final geEntities(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "getUniqueDeviceId(...)"

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemsByTypeAndDeviceId(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemsByDeviceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync1()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final updateDeleteStates(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string p2, "getUniqueDeviceId(...)"

    invoke-static {v5, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->getRandomDupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p2, "getRandomDupUrl(...)"

    invoke-static {v7, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v8

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$updateDeleteStates$1;->label:I

    move-object v10, v0

    invoke-interface/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->updateDeleteState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public deleteQuickAccessItemFromOriginalDb(ZLib/c;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, p1

    goto :goto_2

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->geEntities(Z)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->updateDeleteStates(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl$deleteQuickAccessItemFromOriginalDb$1;->label:I

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->deleteEntities(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getQuickAccessUrlListFromOriginalDb(Lib/c;)Ljava/lang/Object;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueDeviceId(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItemUrlsByDeviceId(Ljava/lang/String;)LQc/h;

    move-result-object p0

    invoke-static {p0, p1}, LQc/n0;->n(LQc/h;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 4
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
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getMaxPositionByDeviceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getRefererUrlWithOnlyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setUrl(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setPosition(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;->dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
