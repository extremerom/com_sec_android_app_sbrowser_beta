.class Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->uploadItem(Ljava/util/List;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$fileMetaResultMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$fileMetaResultMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadFile Finished - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", file : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORSServiceControl"

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "revision"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$fileMetaResultMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$file:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    const/4 v0, 0x1

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$fileMetaResultMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$file:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    aget-wide v1, p2, v0

    int-to-long v3, p1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_IN_TRANSACTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Revision Conflict on : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", transaction rev : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$fileMetaResultMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$6;->val$file:Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    aget-wide v3, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", server rev : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
