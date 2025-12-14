.class final Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/SelectFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordUploadMetricsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mContentResolver:Landroid/content/ContentResolver;

.field final mFilesSelected:[Ljava/lang/String;

.field final mMediaPickerWasUsed:Z

.field final synthetic this$0:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;[Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->mFilesSelected:[Ljava/lang/String;

    iput-boolean p4, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->mMediaPickerWasUsed:Z

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 7

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->mFilesSelected:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-boolean v5, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->mMediaPickerWasUsed:Z

    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3, v5, v6}, Lorg/chromium/ui/base/SelectFileDialog;->i(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;ZLandroid/content/ContentResolver;)I

    move-result v3

    invoke-static {v3}, Lorg/chromium/ui/base/SelectFileDialog;->n(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$RecordUploadMetricsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
