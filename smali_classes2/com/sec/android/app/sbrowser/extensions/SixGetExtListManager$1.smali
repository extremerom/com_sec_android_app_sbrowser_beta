.class Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubRequest$GetExtListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->requestExtListFromGalaxyStore(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetExtListFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 3

    const-string v0, "SixGetExtListManager"

    if-nez p1, :cond_0

    const-string p1, "onGetExtListFail - RejectedExecutionException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "1000"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "onGetExtListFail - Process Error from Galaxy store"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "1001"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "onGetExtListFail - Request Parsing Fail from Galaxy store"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "2000"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "onGetExtListFail - Service Error from Galaxy store"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "8800"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "onGetExtListFail - Galaxy store server temporarily unavailable due to heavy traffic or maintenance"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetExtListFail - Unknown reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->setGetExtListResult(Landroid/content/Context;I)V

    const-string p1, "onGetExtListFail - Update the suggested list with stored one"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getExtList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->b(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;)V

    return-void
.end method

.method public onGetExtListSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getExtList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "SixGetExtListManager"

    if-nez v0, :cond_1

    const-string v0, "onGetExtListSuccess - Empty extList rcvd"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onGetExtListSuccess - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->setExtList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->setGetExtListResult(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->generateDownloadInfo(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->b(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;)V

    return-void
.end method
