.class Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runGalaxyAppStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extended:Z

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$extended:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$appName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 2

    const-string p1, "SixDlService"

    const-string v0, "onGetDownloadUrlFail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$extended:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$id:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->h(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 4

    const-string v0, "SixDlService"

    const-string v1, "onGetDownloadUrlSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$appName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->d(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$appName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->e(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$appName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->f(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$extended:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$id:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->h(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$appName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->g(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
