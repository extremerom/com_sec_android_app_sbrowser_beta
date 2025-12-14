.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/globalpostprocmgr/IGPPServiceSessionListener;
.implements Lcom/samsung/android/sdk/globalpostprocmgr/IGPPProcessingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 52\u00020\u00012\u00020\u0002:\u00015B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u0017\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0018J\u000f\u0010%\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0018J\u000f\u0010&\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008&\u0010\u0018J\u001f\u0010*\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008*\u0010+R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010,R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00103\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104\u00a8\u00066"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;",
        "Lcom/samsung/android/sdk/globalpostprocmgr/IGPPServiceSessionListener;",
        "Lcom/samsung/android/sdk/globalpostprocmgr/IGPPProcessingListener;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "supportGPPM",
        "()Z",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;",
        "listener",
        "Ldb/r;",
        "connect",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;)V",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;",
        "data",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;",
        "videoData",
        "",
        "stickerID",
        "runPP",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;Ljava/lang/String;)V",
        "disconnect",
        "()V",
        "onServiceBound",
        "onServiceUnbound",
        "onServiceError",
        "Landroid/os/Bundle;",
        "bundle",
        "onTaskSubmitted",
        "(Landroid/os/Bundle;)V",
        "Landroid/os/Message;",
        "message",
        "onTaskCompleted",
        "(Landroid/os/Message;)V",
        "onTaskRejected",
        "onTaskStopped",
        "onTaskError",
        "",
        "p0",
        "p1",
        "onTaskProcessing",
        "(II)V",
        "Landroid/content/Context;",
        "Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;",
        "session",
        "Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;",
        "Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;",
        "internalProcessing",
        "Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;",
        "sessionListener",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;",
        "Companion",
        "deepsky-sdk-objectcapture-8.5.4_release"
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "GPPServiceSession"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TASK_VIDEO_CLIPPER:Ljava/lang/String; = "VideoClipper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private internalProcessing:Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private session:Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sessionListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->context:Landroid/content/Context;

    return-void
.end method

.method private final supportGPPM()Z
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/globalpostprocmgr/GPPService;

    invoke-direct {v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPService;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPService;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPService;->isFeatureEnabled(I)Z

    move-result p0

    return p0

    :catch_0
    const-string p0, "GPPServiceSession"

    const-string v0, "[supportGPPM()] GPPService is not supported."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final connect(Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->getSUPPORT_VIDEO_CLIPPER()Z

    move-result v0

    const-string v1, "GPPServiceSession"

    if-nez v0, :cond_0

    const-string p0, "[connect()] Not support native AI feature"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->supportGPPM()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "[connect()] FEATURE_TASK_VIDEOCLIPPER is not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSessionFactory;

    invoke-direct {v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSessionFactory;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSessionFactory;->setContext(Landroid/content/Context;)Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSessionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSessionFactory;->build()Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->session:Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->sessionListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;

    new-instance p1, Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;-><init>(Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->internalProcessing:Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->session:Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "[connect()] session already is connected."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->setSessionListener(Lcom/samsung/android/sdk/globalpostprocmgr/IGPPServiceSessionListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->connect()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final disconnect()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->getSUPPORT_VIDEO_CLIPPER()Z

    move-result v0

    const-string v1, "GPPServiceSession"

    if-nez v0, :cond_0

    const-string p0, "[disconnect()] Not support native AI feature"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->supportGPPM()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "[disconnect()] FEATURE_TASK_VIDEOCLIPPER is not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->session:Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->isServiceBound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->session:Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;

    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->sessionListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->destroy()V

    :cond_3
    return-void
.end method

.method public onServiceBound()V
    .locals 2

    const-string v0, "GPPServiceSession"

    const-string v1, "onServiceBound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->sessionListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;->onServiceBound()V

    :cond_0
    return-void
.end method

.method public onServiceError()V
    .locals 1

    const-string p0, "GPPServiceSession"

    const-string v0, "onServiceError"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceUnbound()V
    .locals 1

    const-string p0, "GPPServiceSession"

    const-string v0, "onServiceUnbound"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskCompleted(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "onTaskCompleted"

    const-string v1, "GPPServiceSession"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->sessionListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send message : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMListener;->onTaskCompleted(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onTaskError()V
    .locals 1

    const-string p0, "GPPServiceSession"

    const-string v0, "onTaskError"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskProcessing(II)V
    .locals 0

    const-string p0, "GPPServiceSession"

    const-string p1, "onTaskProcessing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskRejected()V
    .locals 1

    const-string p0, "GPPServiceSession"

    const-string v0, "onTaskRejected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskStopped()V
    .locals 1

    const-string p0, "GPPServiceSession"

    const-string v0, "onTaskStopped"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskSubmitted(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "bundle"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "GPPServiceSession"

    const-string p1, "onTaskSubmitted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final runPP(Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoData"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickerID"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->getSUPPORT_VIDEO_CLIPPER()Z

    move-result v0

    const-string v1, "GPPServiceSession"

    if-nez v0, :cond_0

    const-string p0, "[runPP()] Not support native AI feature"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->supportGPPM()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "[runPP()] FEATURE_TASK_VIDEOCLIPPER is not supported."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getPanelString()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;->getViewString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickpanel_view"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getPanelString()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;->getInProgressString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickpanel_in_progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getPanelString()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;->getCompletedString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickpanel_completed"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getPanelString()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;->getCloseString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickpanel_close"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getPanelString()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMPanelString;->getCancelString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quickpanel_cancel"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    const-string v2, "coordinate_x"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    const-string v2, "coordinate_y"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string v2, "screen_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    const-string v1, "screen_height"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "playtime"

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getVideoFrameIndex()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "mode"

    const-string v1, "VideoClipper"

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dest_path"

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getDstPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPMData;->getImageUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "source_path"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sticker_id"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->internalProcessing:Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;->setProcessingListener(Lcom/samsung/android/sdk/globalpostprocmgr/IGPPProcessingListener;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->session:Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPServiceSession;->isServiceBound()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/GPPServiceSession;->internalProcessing:Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/globalpostprocmgr/GPPProcessing;->run(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method
