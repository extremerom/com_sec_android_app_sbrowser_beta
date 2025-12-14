.class Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;
.super Landroidx/activity/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-direct {p0, p2}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->q(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->q(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "226"

    const-string v1, "2266"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
