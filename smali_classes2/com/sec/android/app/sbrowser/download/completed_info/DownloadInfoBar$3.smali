.class Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$3;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$3;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->a(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)Landroid/widget/ImageButton;

    move-result-object p0

    const p1, -0x333334

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$3;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->a(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)Landroid/widget/ImageButton;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
