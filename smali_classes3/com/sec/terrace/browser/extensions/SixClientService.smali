.class Lcom/sec/terrace/browser/extensions/SixClientService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;
    }
.end annotation


# instance fields
.field mBound:Z

.field mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

.field private mConnection:Landroid/content/ServiceConnection;

.field mContext:Landroid/content/Context;

.field final mMessenger:Landroid/os/Messenger;

.field mRemoteServiceComponentName:Ljava/lang/String;

.field mRemoteServicePackageName:Ljava/lang/String;

.field mService:Landroid/os/Messenger;

.field mStartCallback:J

.field mStopCallback:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/extensions/ClientServiceUtil;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;-><init>(Lcom/sec/terrace/browser/extensions/SixClientService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStartCallback:J

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStopCallback:J

    new-instance v0, Lcom/sec/terrace/browser/extensions/SixClientService$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/SixClientService$1;-><init>(Lcom/sec/terrace/browser/extensions/SixClientService;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/extensions/SixClientService;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/extensions/SixClientService;->startCallbackResult(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/extensions/SixClientService;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/extensions/SixClientService;->stopCallbackResult(Z)V

    return-void
.end method

.method private getMessageID()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startCallbackResult(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStartCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "Success"

    invoke-virtual {v4, v0, v1, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onStartClientServiceResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Start"

    invoke-virtual {v4, v0, v1, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onStartClientServiceResult(JLjava/lang/String;)V

    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStartCallback:J

    :cond_2
    return-void
.end method

.method private stopCallbackResult(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStopCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "Success"

    invoke-virtual {v4, v0, v1, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onStopClientServiceResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Stop"

    invoke-virtual {v4, v0, v1, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onStopClientServiceResult(JLjava/lang/String;)V

    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStopCallback:J

    :cond_2
    return-void
.end method


# virtual methods
.method public addJsInterface(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    const-string v0, "SixClientService"

    iget-boolean v1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    const-string v2, "Fail-Add"

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3, p4, v2}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onAddJsInterfaceFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "id"

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "object"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "objectName"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nativeCallback"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 p1, 0x640

    const/4 p2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, p1, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v4, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mMessenger:Landroid/os/Messenger;

    iput-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v4, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {v4, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p1, "addJsInterface : MSG_NEW_OBJECT"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/16 v4, 0x642

    invoke-static {p2, v4, p1, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3, p4, v2}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onAddJsInterfaceFunctionResult(JLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearJsInterface(Ljava/lang/String;J)V
    .locals 6

    iget-boolean v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    const-string v1, "Fail-CLEAR"

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3, v1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onClearJsInterfaceFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "clearJsInterface"

    const-string v2, "SixClientService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "id"

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "objectName"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nativeCallback"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 p1, 0x640

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v5, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mMessenger:Landroid/os/Messenger;

    iput-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v5, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/16 v5, 0x645

    invoke-static {v3, v5, p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, p3, v1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onClearJsInterfaceFunctionResult(JLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public doUnbindService()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x641

    :try_start_0
    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SixClientService"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/extensions/SixClientService;->stopCallbackResult(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/extensions/SixClientService;->stopCallbackResult(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/extensions/SixClientService;->stopCallbackResult(Z)V

    :goto_1
    iput-object v2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/extensions/SixClientService;->stopCallbackResult(Z)V

    :goto_2
    return-void
.end method

.method public onStart(Ljava/lang/String;J)V
    .locals 1

    iput-wide p2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStartCallback:J

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mRemoteServicePackageName:Ljava/lang/String;

    const-string p1, "com.samsung.android.sbrowser.ext.ExClientService"

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mRemoteServiceComponentName:Ljava/lang/String;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mRemoteServicePackageName:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mRemoteServiceComponentName:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/extensions/SixClientService;->startCallbackResult(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/SixClientService;->startCallbackResult(Z)V

    :goto_0
    return-void
.end method

.method public onStop(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mStopCallback:J

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->doUnbindService()V

    return-void
.end method

.method public runJsInterface(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    const-string v1, "Fail-RUN"

    if-nez v0, :cond_1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3, p4, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->getMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "objectName"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "methoadName"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nativeCallback"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 p1, 0x640

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mMessenger:Landroid/os/Messenger;

    iput-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/16 v3, 0x643

    invoke-static {p2, v3, p1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SixClientService"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3, p4, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public runJsInterfaceWithParam(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    const-string v1, "Fail-RUN"

    if-nez v0, :cond_1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x0

    move v2, p3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "id"

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->getMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "objectName"

    invoke-virtual {p4, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "methoadName"

    invoke-virtual {p4, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "paramList"

    invoke-virtual {p4, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "pTypeList"

    invoke-virtual {p4, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "nativeCallback"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 p1, 0x640

    const/4 p2, 0x0

    invoke-static {p2, p1, p3, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/16 v0, 0x643

    invoke-static {p2, v0, p1, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "SixClientService"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
