.class public Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;


# instance fields
.field private mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public getAppStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->setAppLogRecorder(Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;)V

    return-void
.end method

.method public printAppStatus(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 10

    const-string v0, "SixAppLogRecorder"

    if-nez p1, :cond_0

    const-string p0, "six current - no appData to print"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->getAppStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v4

    const-string v5, "NoInstd"

    const-string v6, "Instd"

    if-eqz v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p1

    const-string v8, "OFF"

    const-string v9, "ON"

    if-eqz p1, :cond_3

    move-object p1, v9

    goto :goto_1

    :cond_3
    move-object p1, v8

    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, v9

    :cond_4
    const-string v1, "six current: "

    const-string v9, ", "

    invoke-static {v1, v2, v9, v3, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    const-string v3, ","

    invoke-static {v1, p0, v2, v4, v3}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")("

    invoke-static {v1, v5, p0, v6, v3}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v7, p0, p1, v3}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordAppStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "recordAppStatus - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppLogRecorder;->mAppRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "SixAppLogRecorder"

    invoke-static {p2, p0, p1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
