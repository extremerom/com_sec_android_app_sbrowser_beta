.class Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->checkAccountLinkingStatus(Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/osp/app/signin/sasdk/response/LinkingResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

.field final synthetic val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;


# direct methods
.method public constructor <init>(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    iput-object p2, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/osp/app/signin/sasdk/response/LinkingResponseData;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation runtime Lretrofit2/internal/EverythingIsNonNull;
    .end annotation

    const-string p1, "HttpRequestClient"

    const-string v0, "checkAccountLinkingStatus request Failure"

    invoke-static {p1, v0, p2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;->onRequestFail(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/osp/app/signin/sasdk/response/LinkingResponseData;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/osp/app/signin/sasdk/response/LinkingResponseData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit2/internal/EverythingIsNonNull;
    .end annotation

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->access$200(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;ILjava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lhd/X;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lhd/X;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->access$400(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lhd/X;)Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    move-result-object v1

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->access$500(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HttpRequestClient"

    const-string v2, "IOException occurred during parseErrorResponseWithXMLResult"

    invoke-static {p1, v2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;

    invoke-interface {p1, v0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;->onRequestFail(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;

    invoke-interface {p0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;->onRequestSuccess()V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$3;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p0, v0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;->onRequestFail(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
