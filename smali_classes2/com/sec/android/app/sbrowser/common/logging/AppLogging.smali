.class public Lcom/sec/android/app/sbrowser/common/logging/AppLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sLogEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$1;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/TerraceAppLogging;->setApploggingDelegate(Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;)V

    return-void
.end method

.method public static bridge synthetic a()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->sLogEnabled:I

    return v0
.end method

.method private static initializeInternal()V
    .locals 3

    sget v0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->sLogEnabled:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->isSurveyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->sLogEnabled:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->sLogEnabled:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertLog() sLogEnabled is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->sLogEnabled:I

    const-string v2, "AppLogging"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-string v1, "com.sec.android.app.sbrowser.beta"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLogInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private static insertLogInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->initializeInternal()V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLandroid/content/Context;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to insert log : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-string v1, "com.sec.android.app.sbrowser.beta"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLogInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method
