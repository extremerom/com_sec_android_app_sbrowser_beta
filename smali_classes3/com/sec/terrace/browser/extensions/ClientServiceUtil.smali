.class public Lcom/sec/terrace/browser/extensions/ClientServiceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;
    }
.end annotation


# instance fields
.field mExtClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/extensions/SixClientService;",
            ">;"
        }
    .end annotation
.end field

.field mExtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeClientServiceUtil:J

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mExtMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mExtClientMap:Ljava/util/HashMap;

    const-string v0, "ClientServiceUtil"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object p1

    iget-wide p2, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    invoke-interface {p1, p2, p3, p0}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->init(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    :goto_0
    return-void
.end method

.method private addJsInterfaceFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddJsInterfaceFunction : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientServiceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/terrace/browser/extensions/SixClientService;->addJsInterface(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p1, "Fail-Add"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onAddJsInterfaceFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private clearJsInterfaceFunction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearJsInterfaceFunction : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientServiceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/terrace/browser/extensions/SixClientService;->clearJsInterface(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p1, "Fail-CLEAR"

    invoke-virtual {p0, p3, p4, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onClearJsInterfaceFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static createClientService(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private removeJsInterfaceFunction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide p3, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "removeJsInterfaceFunction : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClientServiceUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runJsInterfaceFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/terrace/browser/extensions/SixClientService;->runJsInterface(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p1, "Fail-RUN"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private runJsInterfaceFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/SixClientService;->runJsInterfaceWithParam(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p1, "Fail-RUN"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p6, p7, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addClientServiceStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/extensions/SixClientService;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mExtMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mExtClientMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mExtClientMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mExtMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/SixClientService;

    return-object p0
.end method

.method public onAddJsInterfaceFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->addJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onClearJsInterfaceFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->clearJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onRemoveJsInterfaceFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->removeJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->runJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onStartClientServiceResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->startClientServiceResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onStopClientServiceResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;->stopClientServiceResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V

    return-void
.end method

.method public startClientService(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startClientService : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientServiceUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "terraceActivity is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Fail-Start"

    invoke-virtual {p0, p3, p4, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onStartClientServiceResult(JLjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/terrace/browser/extensions/SixClientService;

    invoke-direct {v1, v0, p0}, Lcom/sec/terrace/browser/extensions/SixClientService;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/extensions/ClientServiceUtil;)V

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->addClientServiceStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/extensions/SixClientService;)V

    invoke-virtual {v1, p2, p3, p4}, Lcom/sec/terrace/browser/extensions/SixClientService;->onStart(Ljava/lang/String;J)V

    return-void
.end method

.method public stopClientService(Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->mNativeClientServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ClientServiceUtil"

    const-string v1, "stopClientService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->getClientService(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/SixClientService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/sec/terrace/browser/extensions/SixClientService;->onStop(J)V

    goto :goto_0

    :cond_1
    const-string p1, "Success"

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onStopClientServiceResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method
