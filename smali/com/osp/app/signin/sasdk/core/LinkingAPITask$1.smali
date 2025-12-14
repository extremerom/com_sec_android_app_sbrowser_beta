.class final Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osp/app/signin/sasdk/core/LinkingAPITask;->checkLinkingStatus(ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;


# direct methods
.method public constructor <init>(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFail(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "code"

    const-string v2, "LinkingAPITask"

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "USR_3262"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_1
    const-string v4, "USR_3261"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const-string v4, "USR_3260"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_1

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/core/LinkingAPITask;->access$000(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    goto :goto_1

    :pswitch_3
    const-string p1, "SA Not linked from parter"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3fa

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-interface {p0, v0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_4
    const-string p1, "SA denied from partner"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-interface {p0, v0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_5
    const-string p1, "error from partner"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3fc

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-interface {p0, v0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x35a92944
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onRequestSuccess()V
    .locals 2

    const-string v0, "result"

    const-string v1, "success"

    invoke-static {v0, v1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;->val$listener:Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;

    invoke-interface {p0, v0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    return-void
.end method
