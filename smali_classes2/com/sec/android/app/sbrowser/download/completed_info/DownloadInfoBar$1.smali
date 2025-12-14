.class Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->onCloseButtonClicked()V

    return-void
.end method
