.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->requestDownloadInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 3

    const-string v0, "ContentBlock.DownloadPreference"

    const-string v1, "onGetDownloadUrlFail"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "DownloadUri: stubData is Null"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadUri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->p(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->r(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->s(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->q(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->A(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->y(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Z)V

    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 3

    const-string v0, "ContentBlock.DownloadPreference"

    const-string v1, "onGetDownloadUrlSuccess"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->q(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->g(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->k(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->h(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->m(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->l(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-nez p1, :cond_2

    const-string v1, "DownloadUri: stubData is Null"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadUri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->s(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->val$appName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->v(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    return-void
.end method

.method public onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    return-void
.end method
