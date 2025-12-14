.class Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->a(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x0

    return p0
.end method
