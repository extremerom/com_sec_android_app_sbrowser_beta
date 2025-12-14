.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Range"
    }
.end annotation


# instance fields
.field private mIsTrainingGoingOn:Z

.field private final mJobScheduler:Landroid/app/job/JobScheduler;

.field private final mMarkUsedForTrainingSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiLayerPerceptron:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;

.field private mNewEntryCountForTraining:I

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mTabIdHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMarkUsedForTrainingSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mIsTrainingGoingOn:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMultiLayerPerceptron:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->scheduleJob(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->lambda$getTabImportance$4(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->lambda$updateTabImportance$1(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->lambda$getTabImportance$3(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->lambda$updatePredictedStateTable$2(Ljava/util/HashSet;)V

    return-void
.end method

.method private getBuilder(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteRetrainService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x1e1b9

    invoke-direct {p0, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    const-wide/32 v0, 0x2932e00

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    return-object p0
.end method

.method private getPrimaryTable()[[F
    .locals 12

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "SMARTTABDELETE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v3, "(USED_FOR_TRAINING = 0 OR TAB_CLOSED_STATUS = 0) AND (TAB_URL NOT LIKE \'%quickaccess.internet.apps.samsung.com%\' AND TAB_URL NOT LIKE \'%internet://debug/%\' AND TAB_URL NOT LIKE \'%internet-native://newtab/%\' AND TAB_URL NOT LIKE \'%chrome-native://newtab/%\' AND TAB_URL NOT LIKE \'%about:blank%\' AND TAB_URL NOT LIKE \'%internet-native://parental-control/%\')"

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v9

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/16 v4, 0x1c

    aput v4, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    :goto_0
    if-ge v4, v1, :cond_3

    const-string v5, "TAB_URL"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;-><init>()V

    const-string v7, "TAB_REFRESH_COUNT"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setRefreshCount(I)V

    const-string v7, "TAB_CREATION_TIME"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabCreationTime(J)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabCreationHour(I)V

    const-string v10, "TAB_LAST_ACTIVE_START_TIME"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setLastActiveStartTime(J)V

    const-string v10, "USED_FOR_TRAINING"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-nez v10, :cond_2

    iget v10, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    add-int/2addr v10, v3

    iput v10, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    :goto_1
    const-string v10, "TAB_LAUNCHED_TYPE"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "TAB_PAGE_TYPE"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabPageType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V

    invoke-direct {p0, v6, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabSessionActivity(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Landroid/database/Cursor;)V

    const-string v10, "TAB_CUMULATIVE_TIME"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeTime(J)V

    const-string v10, "CUMULATIVE_COUNT"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeCount(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-float v7, v10

    const v8, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v7

    double-to-float v7, v10

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeTimePerDay(F)V

    const-string v7, "TAB_ID"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabId(I)V

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabUrl(Ljava/lang/String;)V

    const-string v5, "TAB_CLOSED_STATUS"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsClosed(I)V

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getInputParametersWithLabel(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)[F

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMarkUsedForTrainingSet:Ljava/util/HashSet;

    const-string v6, "AUTO_CLOSE_KEY"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v9
.end method

.method private getRetrainDataFromPredictedStateTable()[[F
    .locals 13

    const-string v0, "getRetrainDataFromPredictedStateTable: cursor count "

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "SMARTTABDELETEPREDICTEDTABSTATE"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v10

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const-string v3, "SmartTabDeleteAIModelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x1

    const/16 v4, 0x1c

    aput v4, v0, v3

    const/4 v4, 0x0

    aput v2, v0, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    :goto_0
    if-ge v4, v2, :cond_2

    const-string v5, "TAB_URL"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;-><init>()V

    const-string v7, "TAB_REFRESH_COUNT"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setRefreshCount(I)V

    const-string v7, "TAB_CREATION_TIME"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabCreationTime(J)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->getHours()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabCreationHour(I)V

    const-string v9, "TAB_LAST_ACTIVE_START_TIME"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setLastActiveStartTime(J)V

    const-string v9, "TAB_LAUNCHED_TYPE"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "TAB_PAGE_TYPE"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabPageType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V

    invoke-direct {p0, v6, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabSessionActivity(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Landroid/database/Cursor;)V

    const-string v9, "TAB_CUMULATIVE_TIME"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeTime(J)V

    const-string v9, "CUMULATIVE_COUNT"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeCount(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    long-to-float v7, v11

    const v8, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v7

    double-to-float v7, v11

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeTimePerDay(F)V

    const-string v7, "TAB_ID"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabId(I)V

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabUrl(Ljava/lang/String;)V

    const-string v5, "TAB_CLOSED_STATUS"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsClosed(I)V

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getInputParametersWithLabel(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)[F

    move-result-object v5

    aput-object v5, v0, v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v10
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$getTabImportance$3(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPredictedNonImportance()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPredictedNonImportance()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPredictedNonImportance()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPredictedNonImportance()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getTabImportance$4(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getLastActiveStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getLastActiveStartTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getLastActiveStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getLastActiveStartTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private synthetic lambda$updatePredictedStateTable$2(Ljava/util/HashSet;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTO_CLOSE_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TAB_URL"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TAB_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CUMULATIVE_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabCreationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "TAB_CREATION_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "TAB_CUMULATIVE_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getRefreshCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TAB_REFRESH_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PERIOD_ONE_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodOneTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "PERIOD_ONE_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PERIOD_TWO_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodTwoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "PERIOD_TWO_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PERIOD_THREE_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getPeriodThreeTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "PERIOD_THREE_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "TAB_PAGE_TYPE"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabPageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TAB_CLOSED_STATUS"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getLastActiveStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "TAB_LAST_ACTIVE_START_TIME"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "TAB_LAUNCHED_TYPE"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabLaunchType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "USED_FOR_TRAINING"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SMARTTABDELETEPREDICTEDTABSTATE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateTabImportance$1(Ljava/util/HashSet;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTO_CLOSE_KEY = \'"

    const-string v6, "\'"

    invoke-static {v4, v3, v6}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "EXTRA_1"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SMARTTABDELETE"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private scheduleJob(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    const v1, 0x1e1b9

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "SmartTabDeleteAIModelManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "TabAutoClose: Job already scheduled "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getBuilder(Landroid/content/Context;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const-string v0, "TabAutoClose: Scheduling job "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method private setTabLaunchType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabLaunchType(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "FROM_LONGPRESS_BACKGROUND"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "FROM_READER_MODE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "FROM_LONGPRESS_FOREGROUND"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "FROM_ASSIST"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "FROM_UI"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "FROM_RESTORE_BACKGROUND"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "FROM_EXTERNAL_APP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "FROM_LINK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move v0, p0

    goto :goto_0

    :sswitch_8
    const-string v1, "FROM_RESTORE_FOREGROUND"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromLongpressBackground(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromReaderMode(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromLongpressForeground(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromAssist(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromUI(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromRestoreBackground(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromExternalApp(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromLink(I)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsLaunchedFromRestoreForeground(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b563197 -> :sswitch_8
        -0x53597491 -> :sswitch_7
        -0x4c32bdfe -> :sswitch_6
        -0x310645ac -> :sswitch_5
        0x75f4749 -> :sswitch_4
        0xafb509e -> :sswitch_3
        0x32f7bad0 -> :sswitch_2
        0x5b885e8a -> :sswitch_1
        0x6d47a6bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTabPageType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabPageType(Ljava/lang/String;)V

    const-string p0, "text/html"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeTextHtml(I)V

    goto :goto_0

    :cond_0
    const-string p0, "text"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeText(I)V

    goto :goto_0

    :cond_1
    const-string p0, "image"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeImage(I)V

    goto :goto_0

    :cond_2
    const-string p0, "audio"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeAudio(I)V

    goto :goto_0

    :cond_3
    const-string p0, "video"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeVideo(I)V

    goto :goto_0

    :cond_4
    const-string p0, "application"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeApplication(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setIsPageTypeOthers(I)V

    :goto_0
    return-void
.end method

.method private setTabSessionActivity(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Landroid/database/Cursor;)V
    .locals 8

    const-string p0, "PERIOD_ONE_TIME"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v0, p0

    const-string p0, "PERIOD_TWO_TIME"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v2, p0

    const-string p0, "PERIOD_THREE_TIME"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-long v4, p0

    const-string p0, "PERIOD_ONE_COUNT"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string v6, "PERIOD_TWO_COUNT"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "PERIOD_THREE_COUNT"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPeriodOneTime(J)V

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPeriodTwoTime(J)V

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPeriodThreeTime(J)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPeriodOneCount(I)V

    invoke-virtual {p1, v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPeriodTwoCount(I)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPeriodThreeCount(I)V

    return-void
.end method

.method private updatePredictedStateTable(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lxa/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lxa/a;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;Ljava/util/HashSet;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateRetrainFinished()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMarkUsedForTrainingSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SMARTTABDELETE"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "USED_FOR_TRAINING"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTO_CLOSE_KEY = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "EXTRA_1"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMarkUsedForTrainingSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "SMARTTABDELETEPREDICTEDTABSTATE"

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "_"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "\\["

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\]"

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\\\"

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "[*#<>%{}|^`?]"

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p1, "www."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SmartTabDeleteAIModelManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLastActiveStartTime(I)J
    .locals 5

    const-string v0, "SmartTabDeleteAIModelManager"

    const-string v1, "SELECT TAB_LAST_ACTIVE_START_TIME FROM SMARTTABDELETE WHERE TAB_ID = "

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v1, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "[getLastActiveStartTime] "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    const-string p0, "[getLastActiveStartTime] update or smart switch"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-wide v1
.end method

.method public getTabImportance(Ljava/lang/StringBuilder;)Ljava/util/HashSet;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "TAB_ID"

    const-string v2, "SmartTabDeleteAIModelManager"

    const-string v3, "predictTabImportance: initial tab count: "

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v6, "SMARTTABDELETE"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v14, Ljava/util/TreeSet;

    new-instance v6, LB0/r;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, LB0/r;-><init>(I)V

    invoke-direct {v14, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v15, Ljava/util/TreeSet;

    new-instance v6, LB0/r;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, LB0/r;-><init>(I)V

    invoke-direct {v15, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AUTO_CLOSE_KEY IN "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    :try_start_0
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabDeleteDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    const-string v8, "TAB_URL"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-direct {v9}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;-><init>()V

    const-string v10, "TAB_REFRESH_COUNT"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setRefreshCount(I)V

    const-string v10, "TAB_CREATION_TIME"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabCreationTime(J)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12}, Ljava/util/Date;->getHours()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabCreationHour(I)V

    const-string v12, "TAB_LAST_ACTIVE_START_TIME"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setLastActiveStartTime(J)V

    const-string v12, "TAB_LAUNCHED_TYPE"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TAB_PAGE_TYPE"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v9, v13}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabPageType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V

    invoke-direct {v0, v9, v12}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Ljava/lang/String;)V

    invoke-direct {v0, v9, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->setTabSessionActivity(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;Landroid/database/Cursor;)V

    const-string v12, "TAB_CUMULATIVE_TIME"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeTime(J)V

    const-string v12, "CUMULATIVE_COUNT"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeCount(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    long-to-float v10, v12

    const v11, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getCumulativeTime()J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v10

    double-to-float v10, v12

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setCumulativeTimePerDay(F)V

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabId(I)V

    invoke-virtual {v9, v8}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setTabUrl(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMultiLayerPerceptron:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->calculateImportanceInGroup(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getNonImportanceMLPJava()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setPredictedNonImportance(D)V

    invoke-virtual {v15, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "predictTabImportance: total tabs considered: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/TreeSet;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_3
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_4

    invoke-virtual {v15}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-virtual {v14, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mTabIdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    :goto_4
    if-ge v3, v1, :cond_6

    invoke-virtual {v14}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->shouldShowSuggestionWithMinPredictionCountAsOne()Z

    move-result v1

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v6, 0xa

    if-ge v3, v6, :cond_7

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tab_delete_suggestion_last_shown_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "predictTabImportance: suggested tab count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :goto_5
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_7
    const-string v1, "predictTabImportance: "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public predictAndDeleteTabs(Ljava/util/List;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "("

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_3
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getTabImportance(Ljava/lang/StringBuilder;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public predictTabImportance(Ljava/util/List;)Ljava/util/HashSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->shouldShowSuggestionRegardlessOfDate()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tab_delete_suggestion_closed_count"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    int-to-long v5, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tab_delete_suggestion_last_shown_time"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x240c8400

    mul-long/2addr v5, v9

    cmp-long v2, v7, v5

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const-string p0, "SmartTabDeleteAIModelManager"

    const-string p1, "predictTabImportance: Not showing tab delete suggestion as it has been shown recently."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v0, "("

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, ", "

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    add-int/2addr v4, v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isLocked()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getTabId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v4, v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_5
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getTabImportance(Ljava/lang/StringBuilder;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public retrain()V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mIsTrainingGoingOn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mIsTrainingGoingOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getPrimaryTable()[[F

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getRetrainDataFromPredictedStateTable()[[F

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-eqz v1, :cond_2

    array-length v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    add-int v5, v3, v4

    new-array v5, v5, [[F

    iget v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mNewEntryCountForTraining:I

    const/16 v7, 0x32

    if-ge v6, v7, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2, v0, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mMultiLayerPerceptron:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->retrain([[F)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->updateRetrainFinished()V

    :cond_6
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->mIsTrainingGoingOn:Z

    return-void
.end method

.method public updateTabImportance(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->updatePredictedStateTable(Ljava/util/HashSet;)V

    new-instance v0, Lxa/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lxa/a;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;Ljava/util/HashSet;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
