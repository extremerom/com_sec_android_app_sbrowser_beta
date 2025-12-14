.class Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$5;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$5;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$5;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->onPrimaryButtonClicked()V

    return-void
.end method
