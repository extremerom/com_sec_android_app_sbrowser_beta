.class Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->checkDomain(Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/osp/app/signin/sasdk/response/DomainResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;

.field final synthetic val$retrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;Lretrofit2/Retrofit;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    iput-object p2, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;

    iput-object p4, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$retrofit:Lretrofit2/Retrofit;

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
            "Lcom/osp/app/signin/sasdk/response/DomainResponseData;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation runtime Lretrofit2/internal/EverythingIsNonNull;
    .end annotation

    const-string p1, "HttpRequestClient"

    const-string v0, "checkDomain request Failure"

    invoke-static {p1, v0, p2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;

    invoke-interface {p0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;->onRequestFail()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/osp/app/signin/sasdk/response/DomainResponseData;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/osp/app/signin/sasdk/response/DomainResponseData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit2/internal/EverythingIsNonNull;
    .end annotation

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->access$200(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;ILjava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p1

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    invoke-virtual {p1, v0, v1}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setDomainResponseData(Landroid/content/Context;Lcom/osp/app/signin/sasdk/response/DomainResponseData;)V

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpRequestClient"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    invoke-interface {p0, p1}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;->onRequestSuccess(Lcom/osp/app/signin/sasdk/response/DomainResponseData;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->this$0:Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lhd/X;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->access$300(Lcom/osp/app/signin/sasdk/http/HttpRequestClient;Lretrofit2/Retrofit;Lhd/X;)V

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$1;->val$listener:Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;

    invoke-interface {p0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;->onRequestFail()V

    :goto_0
    return-void
.end method
