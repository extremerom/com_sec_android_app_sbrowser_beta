.class Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

.field final synthetic val$downloadUri:Ljava/lang/String;

.field final synthetic val$finalTypeOMA:Ljava/lang/String;

.field final synthetic val$referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->val$finalTypeOMA:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->val$downloadUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->val$referrer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8797"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->val$finalTypeOMA:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "downloaduri"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->val$downloadUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "referrer"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->val$referrer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
