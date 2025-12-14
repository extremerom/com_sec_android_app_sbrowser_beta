.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$updateRefreshCount$6(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$updateTabClosed$2(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    move-object v0, p0

    move-wide v1, p4

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$endCurrentSession$5(JILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$insertInPrimaryTable$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$updateURLChangedInOldTab$3(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->lambda$updateTabNotRestoredClosingStatus$4(ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    return-object p0
.end method

.method private synthetic lambda$endCurrentSession$5(JILjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    move-object p4, p5

    :cond_0
    invoke-static {p4}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string p5, "UPDATE SMARTTABDELETE SET TAB_CUMULATIVE_TIME = TAB_CUMULATIVE_TIME + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {p4, p5, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    add-long v5, p1, p6

    move-object v2, p0

    move-wide v3, p6

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->updateTimeInPeriods(JJLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic lambda$insertInPrimaryTable$1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, ", CUMULATIVE_COUNT = CUMULATIVE_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    const-string v1, "\', USED_FOR_TRAINING = 0, TAB_LAST_ACTIVE_START_TIME =  "

    const-string v2, "\', TAB_PAGE_TYPE = \'"

    const-string v3, "UPDATE SMARTTABDELETE SET TAB_CLOSING_TIME = 0, TAB_CLOSED_STATUS = 0, TAB_LAUNCHED_TYPE = \'"

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "AUTO_CLOSE_KEY"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getPrimaryKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TAB_URL"

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TAB_ID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "CUMULATIVE_COUNT"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "TAB_CREATION_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "TAB_CUMULATIVE_TIME"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "TAB_PAGE_TYPE"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TAB_CLOSING_TIME"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "TAB_CLOSED_STATUS"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "TAB_LAST_ACTIVE_START_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "TAB_LAUNCHED_TYPE"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SMARTTABDELETE"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getPrimaryKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v4, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Database or Disk is full, operation skipped: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartTabDeleteModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateRefreshCount$6(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "UPDATE SMARTTABDELETE SET TAB_REFRESH_COUNT = TAB_REFRESH_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateTabClosed$2(ILjava/lang/String;JJ)V
    .locals 11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAB_CLOSED_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "TAB_CLOSING_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USED_FOR_TRAINING"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AUTO_CLOSE_KEY = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getPrimaryKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "SMARTTABDELETE"

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v10, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->endCurrentSession(ILjava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateTabNotRestoredClosingStatus$4(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getPrimaryKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "UPDATE SMARTTABDELETE SET TAB_CLOSING_TIME = TAB_LAST_ACTIVE_START_TIME, TAB_CUMULATIVE_TIME = 1, TAB_CLOSED_STATUS = 1  WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateURLChangedInOldTab$3(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAB_CLOSED_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USED_FOR_TRAINING"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "TAB_CLOSING_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AUTO_CLOSE_KEY = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getPrimaryKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "SMARTTABDELETE"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->endCurrentSession(ILjava/lang/String;JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public endCurrentSession(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 10

    new-instance v9, Lxa/b;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p3

    move v4, p1

    move-object/from16 v5, p7

    move-object v6, p2

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lxa/b;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;JILjava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertInPrimaryTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/p;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/p;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRefreshCount(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    new-instance v0, Lxa/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lxa/c;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTabClosed(ILjava/lang/String;JJ)V
    .locals 9

    new-instance v8, Lxa/d;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lxa/d;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;JJ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTabNotRestoredClosingStatus(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lxa/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lxa/c;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTimeInPeriods(JJLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    const-string v9, "1"

    const/16 v10, 0x8

    const-string v11, ""

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x3e8

    if-ltz v8, :cond_0

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v10, :cond_0

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v10, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, v3, v1

    div-long/2addr v1, v14

    add-long/2addr v1, v12

    invoke-static {v1, v2, v11, v6}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v9, v5}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE SMARTTABDELETE SET PERIOD_ONE_TIME = PERIOD_ONE_TIME + ?,PERIOD_ONE_COUNT = PERIOD_ONE_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    const/16 v12, 0x10

    if-lt v8, v10, :cond_1

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v12, :cond_1

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-lt v8, v10, :cond_1

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v12, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, v3, v1

    div-long/2addr v1, v14

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2, v11, v6}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v9, v5}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE SMARTTABDELETE SET PERIOD_TWO_TIME = PERIOD_TWO_TIME + ?,PERIOD_TWO_COUNT = PERIOD_TWO_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    const/16 v13, 0x18

    if-lt v8, v12, :cond_2

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v13, :cond_2

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-lt v8, v12, :cond_2

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v13, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, v3, v1

    div-long/2addr v1, v14

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2, v11, v6}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v9, v5}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE SMARTTABDELETE SET PERIOD_THREE_TIME = PERIOD_THREE_TIME + ?,PERIOD_THREE_COUNT = PERIOD_THREE_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v10, :cond_3

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-lt v8, v10, :cond_3

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v12, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getStartOfSecondPeriodInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    div-long/2addr v7, v14

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    invoke-static {v7, v8, v11, v6}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getStartOfSecondPeriodInMillis()J

    move-result-wide v12

    sub-long/2addr v3, v12

    div-long/2addr v3, v14

    add-long/2addr v3, v1

    invoke-static {v3, v4, v11, v7}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v9, v1, v9, v5}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE SMARTTABDELETE SET PERIOD_ONE_TIME = PERIOD_ONE_TIME + ?,PERIOD_ONE_COUNT = PERIOD_ONE_COUNT + ?,PERIOD_TWO_TIME = PERIOD_TWO_TIME + ?,PERIOD_TWO_COUNT = PERIOD_TWO_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-lt v8, v10, :cond_4

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v12, :cond_4

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-lt v8, v12, :cond_4

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v8

    if-ge v8, v13, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getStartOfThirdPeriodInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    div-long/2addr v7, v14

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    invoke-static {v7, v8, v11, v6}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getStartOfThirdPeriodInMillis()J

    move-result-wide v12

    sub-long/2addr v3, v12

    div-long/2addr v3, v14

    add-long/2addr v3, v1

    invoke-static {v3, v4, v11, v7}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v9, v6, v9, v5}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE SMARTTABDELETE SET PERIOD_TWO_TIME = PERIOD_TWO_TIME + ?,PERIOD_TWO_COUNT = PERIOD_TWO_COUNT + ?,PERIOD_THREE_TIME = PERIOD_THREE_TIME + ?,PERIOD_THREE_COUNT = PERIOD_THREE_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    if-lt v8, v12, :cond_5

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v6

    if-ge v6, v13, :cond_5

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v6

    if-ltz v6, :cond_5

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v6

    if-ge v6, v10, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getStartOfDayInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    div-long/2addr v7, v14

    const-wide/16 v1, 0x1

    add-long/2addr v7, v1

    invoke-static {v7, v8, v11, v6}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getStartOfDayInMillis()J

    move-result-wide v12

    sub-long/2addr v3, v12

    div-long/2addr v3, v14

    add-long/2addr v3, v1

    invoke-static {v3, v4, v11, v7}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v9, v1, v9, v5}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE SMARTTABDELETE SET PERIOD_THREE_TIME = PERIOD_THREE_TIME + ?,PERIOD_THREE_COUNT = PERIOD_THREE_COUNT + ?,PERIOD_ONE_TIME = PERIOD_ONE_TIME + ?,PERIOD_ONE_COUNT = PERIOD_ONE_COUNT + ? WHERE AUTO_CLOSE_KEY = ?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateURLChangedInOldTab(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 10

    new-instance v9, Lxa/b;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lxa/b;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
