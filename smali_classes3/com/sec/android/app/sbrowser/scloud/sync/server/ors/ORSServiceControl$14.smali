.class Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->deleteItem(Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

.field final synthetic val$txKey:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;->val$txKey:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transactionStart Finished - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORSServiceControl"

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$14;->val$txKey:[Ljava/lang/String;

    const-string p1, "tx_key"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method
