.class Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->onCloseButtonClicked()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->b(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8767"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8771"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
