.class Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->checkGalaxyAppStatus(Ljava/lang/String;Ljava/lang/String;ZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 2

    const-string p1, "SixAppstoreService"

    const-string v0, "onGetDownloadUrlFail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->b(Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 8

    const-string v0, "SixAppstoreService"

    const-string v1, "onGetDownloadUrlSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$appName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$packageName:Ljava/lang/String;

    iget-object v0, v5, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->c(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$packageName:Ljava/lang/String;

    iget-object v0, v3, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->d(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$packageName:Ljava/lang/String;

    iget-object v0, v3, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->e(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService$1;->val$packageName:Ljava/lang/String;

    iget-object v0, v3, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->f(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
