.class public final Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0082@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ%\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J%\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J(\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0004H\u0087@\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
        "delegator",
        "",
        "",
        "urlsFromOriginalDb",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;",
        "restoreModel",
        "Ldb/r;",
        "insertQuickAccessItems",
        "(Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;Lib/c;)Ljava/lang/Object;",
        "urlListFromOriginalDb",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "entity",
        "",
        "canInsertEntity",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z",
        "Landroid/content/Context;",
        "context",
        "basePath",
        "restorePath",
        "restoreQuickAccess",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z",
        "restoreAbsolutePath",
        "restoreDBDelegator",
        "migrateQuickAccessItems",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Lib/c;)Ljava/lang/Object;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$insertQuickAccessItems(Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->insertQuickAccessItems(Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final canInsertEntity(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final insertQuickAccessItems(Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;Lib/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;

    invoke-direct {v0, p0, p4}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;-><init>(Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;Lib/c;)V

    :goto_0
    iget-object p4, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;->label:I

    const/4 v3, 0x1

    const-string v4, "QuickAccessDataHelper"

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V

    const-string p4, "Start to create insert targets"

    invoke-static {v4, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;->getQuickAccessEntity()Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->canInsertEntity(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;->nextValueExist()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    const-string p1, "Insert targets : "

    invoke-static {p0, p1, v4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$insertQuickAccessItems$1;->label:I

    invoke-interface {p3, p4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;->insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    const-string p0, "Complete insertion"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public final migrateQuickAccessItems(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
            "Lib/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p4, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;

    invoke-direct {v0, p0, p4}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;-><init>(Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;Lib/c;)V

    :goto_0
    iget-object p4, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "QuickAccessDataHelper"

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

    iget-object p2, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;

    :try_start_1
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_3
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;

    :try_start_2
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p4, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;

    invoke-virtual {p4, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->getIsQAEditedFromSrc(Ljava/lang/String;)Z

    move-result p4

    const-string v2, "isQAEdited : "

    invoke-static {v2, v6, p4}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_3
    invoke-interface {p3, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;->openRestoreDatabase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p0, "Failed to open restore database"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    new-instance p2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {p2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-interface {p3, p4, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;->query(ZLandroid/database/sqlite/SQLiteQueryBuilder;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p0, "Failed to query to restore database"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    sget-object p2, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;->createRestoreModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;

    move-result-object p1

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->label:I

    invoke-interface {p1, p4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;->deleteQuickAccessItemFromOriginalDb(ZLib/c;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_7

    return-object v1

    :cond_7
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    const-string p0, "Failed to delete quick access items from original db"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    iput-object p1, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->label:I

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;->getQuickAccessUrlListFromOriginalDb(Lib/c;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_9

    return-object v1

    :cond_9
    move-object p2, p1

    move-object p1, p3

    :goto_2
    check-cast p4, Ljava/util/List;

    const-string p3, "<this>"

    invoke-static {p4, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "null element found in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/4 p3, 0x0

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$migrateQuickAccessItems$1;->label:I

    invoke-direct {p2, p1, p4, p0, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->insertQuickAccessItems(Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final restoreQuickAccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "basePath"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "restorePath"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "QuickAccessDataHelper"

    const-string v0, "Start to restore Quick Access"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isQuickAccessSmartSwitchSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SmartSwitch is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->getRestoreDBDelegator(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;->canRestoreDB()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "Backup db doesn\'t exist"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0, p3, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->restorePreferences(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, v2, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Lib/c;)V

    invoke-static {p0}, LNc/E;->E(Lsb/n;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureUtils;->Companion:Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureUtils$Companion;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeatureUtils$Companion;->clearQuickAccessVersionForSync(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->clearPreferenceToUpdate(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method
