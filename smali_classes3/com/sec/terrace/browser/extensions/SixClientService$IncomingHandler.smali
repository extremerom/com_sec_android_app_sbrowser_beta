.class Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/SixClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/SixClientService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/SixClientService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "nativeCallback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, "Success"

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage:MSG_CLEAR_METHOD:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v3, "SixClientService"

    invoke-static {v0, p1, v3}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onClearJsInterfaceFunctionResult(JLjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRemoveJsInterfaceFunctionResult(JLjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "returnList"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "Fail-RUN"

    aput-object v3, p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onRunJsInterfaceFunctionResult(J[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService$IncomingHandler;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mClientServiceUtil:Lcom/sec/terrace/browser/extensions/ClientServiceUtil;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/terrace/browser/extensions/ClientServiceUtil;->onAddJsInterfaceFunctionResult(JLjava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x642
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
