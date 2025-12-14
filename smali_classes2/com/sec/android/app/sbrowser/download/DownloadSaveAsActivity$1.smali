.class Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->l(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->q(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    return-void
.end method
