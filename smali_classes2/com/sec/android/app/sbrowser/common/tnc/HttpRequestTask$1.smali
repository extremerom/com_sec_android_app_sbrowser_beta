.class Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;->request(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->this$0:Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConnectTimeoutMs()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public getHttpResponse(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;-><init>()V

    return-object p0
.end method

.method public getReadTimeoutMs()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public onError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Request is failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    const-string v0, "HttpRequestTask"

    invoke-static {p1, p2, v0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Request is successful : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->val$url:Ljava/lang/String;

    const-string v0, "HttpRequestTask"

    invoke-static {p1, p2, v0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method
