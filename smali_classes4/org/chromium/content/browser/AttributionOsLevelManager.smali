.class public Lorg/chromium/content/browser/AttributionOsLevelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/AttributionOsLevelManager$OperationResult;,
        Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;,
        Lorg/chromium/content/browser/AttributionOsLevelManager$OperationType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sManagerForTesting:Lz2/i;


# instance fields
.field private mManager:Lz2/i;

.field private mNativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mNativePtr:J

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/AttributionOsLevelManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onDataDeletionCompleted(I)V

    return-void
.end method

.method private addRegistrationFutureCallback(IILcom/google/common/util/concurrent/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/common/util/concurrent/y;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager$1;-><init>(Lorg/chromium/content/browser/AttributionOsLevelManager;II)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p1, Lcom/google/common/util/concurrent/v;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p1, p0}, Lcom/google/common/util/concurrent/y;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static addWebSourceParams(Ljava/util/List;Lorg/chromium/url/GURL;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LA2/o;",
            ">;",
            "Lorg/chromium/url/GURL;",
            "Z)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LA2/o;

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1, p2}, LA2/o;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addWebTriggerParams(Ljava/util/List;Lorg/chromium/url/GURL;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LA2/r;",
            ">;",
            "Lorg/chromium/url/GURL;",
            "Z)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LA2/r;

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1, p2}, LA2/r;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/AttributionOsLevelManager;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void
.end method

.method public static bridge synthetic c(Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->convertToOperationResult(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static convertToOperationResult(Ljava/lang/Throwable;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->getOperationResultFromMessage(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_6

    invoke-static {p0}, Lf1/y0;->B(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    instance-of p0, p0, Ljava/io/InvalidObjectException;

    if-eqz p0, :cond_7

    const/16 p0, 0x15

    return p0

    :cond_7
    return v1
.end method

.method private static createWebSourceParamsList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LA2/o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private static createWebTriggerParamsList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "LA2/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static bridge synthetic d(II)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onMeasurementStateReturned(II)V

    return-void
.end method

.method private deleteRegistrations(IJJ[Lorg/chromium/url/GURL;[Ljava/lang/String;II)V
    .locals 14
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p9

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_0

    const/16 v0, 0xa

    invoke-static {v4, v0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onDataDeletionCompleted(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->getManager()Lz2/i;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v0, 0x8

    invoke-static {v4, v0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onDataDeletionCompleted(I)V

    return-void

    :cond_1
    array-length v5, v0

    const/4 v6, 0x0

    if-nez v5, :cond_4

    array-length v5, v1

    if-nez v5, :cond_4

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AttributionManager"

    const-string v2, "Received invalid match behavior: "

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onDataDeletionCompleted(I)V

    return-void

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/u;->s([Ljava/lang/Object;)Lcom/google/common/collect/L;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v4, v6}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onDataDeletionCompleted(I)V

    return-void

    :cond_4
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/u;->s([Ljava/lang/Object;)Lcom/google/common/collect/L;

    move-result-object v2

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_5

    aget-object v8, v0, v7

    invoke-virtual {v8}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v1

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_6

    aget-object v8, v1, v7

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iget v1, v2, Lcom/google/common/collect/L;->d:I

    new-instance v5, Lorg/chromium/content/browser/AttributionOsLevelManager$2;

    move-object v7, p0

    move v8, p1

    invoke-direct {v5, p0, v1, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager$2;-><init>(Lorg/chromium/content/browser/AttributionOsLevelManager;II)V

    invoke-virtual {v2, v6}, Lcom/google/common/collect/u;->w(I)Lcom/google/common/collect/s;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Lcom/google/common/collect/s;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/google/common/collect/s;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v2, LA2/b;

    invoke-static/range {p2 .. p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v10

    invoke-static/range {p4 .. p5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v11

    move-object v7, v2

    move/from16 v8, p8

    move-object v12, v0

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, LA2/b;-><init>(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2}, Lz2/i;->a(LA2/b;)Lcom/google/common/util/concurrent/y;

    move-result-object v2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/common/util/concurrent/v;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2, v5}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v7, v6}, Lcom/google/common/util/concurrent/y;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static bridge synthetic e(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    return-void
.end method

.method private getManager()Lz2/i;
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/AttributionOsLevelManager;->sManagerForTesting:Lz2/i;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mManager:Lz2/i;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/i;->b(Landroid/content/Context;)Lz2/h;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mManager:Lz2/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AttributionManager"

    const-string v2, "Failed to get measurement manager"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mManager:Lz2/i;

    return-object p0
.end method

.method private static getMeasurementApiStatus()V
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "AttributionManager"

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    sget-object v1, Lorg/chromium/content/browser/AttributionOsLevelManager;->sManagerForTesting:Lz2/i;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManagerJni;->get()Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;->onMeasurementStateReturned(I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onMeasurementStateReturned(II)V

    return-void

    :cond_1
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    invoke-static {v2, v0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onMeasurementStateReturned(II)V

    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lz2/i;->b(Landroid/content/Context;)Lz2/h;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "Failed to get measurement manager"

    invoke-static {v0, v4, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    :goto_0
    const/16 v4, 0x8

    if-nez v3, :cond_3

    invoke-static {v2, v4}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onMeasurementStateReturned(II)V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lz2/h;->g()Lcom/google/common/util/concurrent/y;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "Failed to get measurement API status"

    invoke-static {v0, v5, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v1, :cond_4

    invoke-static {v2, v4}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onMeasurementStateReturned(II)V

    return-void

    :cond_4
    new-instance v0, Lorg/chromium/content/browser/AttributionOsLevelManager$3;

    invoke-direct {v0}, Lorg/chromium/content/browser/AttributionOsLevelManager$3;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/common/util/concurrent/v;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v0}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v2}, Lcom/google/common/util/concurrent/y;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static getOperationResultFromMessage(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "background"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x9

    return p0

    :cond_1
    const-string v1, "unable to find the service"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x14

    return p0

    :cond_2
    const-string v1, "service is not available"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0xc

    return p0

    :cond_3
    const-string v1, "api rate limit exceeded"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p0, 0xd

    return p0

    :cond_4
    const-string v1, "server rate limit exceeded"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0xe

    return p0

    :cond_5
    const-string v1, "caller is not authorized to access information from another user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0xf

    return p0

    :cond_6
    const-string v1, "caller is not allowed to perform this operation on behalf of the given package"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p0, 0x10

    return p0

    :cond_7
    const-string v1, "permission was not requested"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x11

    return p0

    :cond_8
    const-string v1, "caller is not allowed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x12

    return p0

    :cond_9
    const-string v1, "api time out"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p0, 0x6

    return p0

    :cond_a
    const-string v1, "failed to encrypt responses"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 p0, 0x13

    return p0

    :cond_b
    const-string v1, "service received an invalid object from the server"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x15

    return p0

    :cond_c
    return v0
.end method

.method private nativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mNativePtr:J

    return-void
.end method

.method private onDataDeletionCompleted(I)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManagerJni;->get()Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;->onDataDeletionCompleted(JI)V

    :cond_0
    return-void
.end method

.method private static onMeasurementStateReturned(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManagerJni;->get()Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;->onMeasurementStateReturned(I)V

    return-void
.end method

.method private onRegistrationCompleted(III)V
    .locals 4

    invoke-static {p2, p3}, Lorg/chromium/content/browser/AttributionOsLevelManager;->recordOperationResult(II)V

    iget-wide v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManagerJni;->get()Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;

    move-result-object p2

    iget-wide v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager;->mNativePtr:J

    if-nez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2, v0, v1, p1, p0}, Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;->onRegistrationCompleted(JIZ)V

    :cond_1
    return-void
.end method

.method private static recordOperationResult(II)V
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "DeleteRegistrations"

    goto :goto_0

    :cond_1
    const-string p0, "GetMeasurementApiStatus"

    goto :goto_0

    :cond_2
    const-string p0, "RegisterWebTrigger"

    goto :goto_0

    :cond_3
    const-string p0, "RegisterTrigger"

    goto :goto_0

    :cond_4
    const-string p0, "RegisterWebSource"

    goto :goto_0

    :cond_5
    const-string p0, "RegisterSource"

    :goto_0
    const-string v0, "Conversions.AndroidOperationResult2."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x16

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private registerAttributionSource(I[Lorg/chromium/url/GURL;Landroid/view/MotionEvent;)V
    .locals 6
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p2, 0xa

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->getManager()Lz2/i;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p2, 0x8

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {v5}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p2, LA2/n;

    invoke-direct {p2, v2, p3}, LA2/n;-><init>(Ljava/util/ArrayList;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p2}, Lz2/i;->c(LA2/n;)Lcom/google/common/util/concurrent/y;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->addRegistrationFutureCallback(IILcom/google/common/util/concurrent/y;)V

    return-void
.end method

.method private registerAttributionTrigger(ILorg/chromium/url/GURL;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const/16 p2, 0xa

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->getManager()Lz2/i;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p2, 0x8

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lz2/i;->d(Landroid/net/Uri;)Lcom/google/common/util/concurrent/y;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->addRegistrationFutureCallback(IILcom/google/common/util/concurrent/y;)V

    return-void
.end method

.method private registerWebAttributionSource(ILjava/util/List;Lorg/chromium/url/GURL;Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "LA2/o;",
            ">;",
            "Lorg/chromium/url/GURL;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 p2, 0xa

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->getManager()Lz2/i;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p2, 0x8

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_1
    new-instance v2, LA2/p;

    invoke-virtual {p3}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, p2, p3, p4}, LA2/p;-><init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Lz2/i;->e(LA2/p;)Lcom/google/common/util/concurrent/y;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->addRegistrationFutureCallback(IILcom/google/common/util/concurrent/y;)V

    return-void
.end method

.method private registerWebAttributionTrigger(ILjava/util/List;Lorg/chromium/url/GURL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "LA2/r;",
            ">;",
            "Lorg/chromium/url/GURL;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/AttributionOsLevelManager;->supportsAttribution()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const/16 p2, 0xa

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->getManager()Lz2/i;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p2, 0x8

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->onRegistrationCompleted(III)V

    return-void

    :cond_1
    new-instance v2, LA2/s;

    invoke-virtual {p3}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, p3, p2}, LA2/s;-><init>(Landroid/net/Uri;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lz2/i;->f(LA2/s;)Lcom/google/common/util/concurrent/y;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lorg/chromium/content/browser/AttributionOsLevelManager;->addRegistrationFutureCallback(IILcom/google/common/util/concurrent/y;)V

    return-void
.end method

.method private static supportsAttribution()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
