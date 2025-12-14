.class Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDlService;->showSixDlDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->i(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$id:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DOWNLOADED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getDownloadItem(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getApps()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SixDlService"

    const-string v0, "showSixDlDialog onOkButtonClicked AppList is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;->val$id:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->c(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method
