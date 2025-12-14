.class final Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/SelectFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FilePathSelectedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFilePath:Ljava/lang/String;

.field final mWindow:Lorg/chromium/ui/base/WindowAndroid;

.field final synthetic this$0:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mFilePath:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/ui/base/SelectFileDialog;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mFilePath:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/FileUtils;->getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->c(Lorg/chromium/ui/base/SelectFileDialog;)J

    move-result-wide v0

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->mFilePath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, p0, v2}, Lorg/chromium/ui/base/SelectFileDialog;->onFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    sget p0, Lorg/chromium/ui/R$string;->opening_file_error:I

    invoke-static {p0}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->l(Lorg/chromium/ui/base/SelectFileDialog;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$FilePathSelectedTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
