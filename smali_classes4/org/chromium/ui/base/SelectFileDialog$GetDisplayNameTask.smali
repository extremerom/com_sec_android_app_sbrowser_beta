.class Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/SelectFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetDisplayNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mFilePaths:[Ljava/lang/String;

.field final mIsMultiple:Z

.field final mUris:[Landroid/net/Uri;

.field final synthetic this$0:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mIsMultiple:Z

    iput-object p4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    array-length p1, p4

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->doInBackground()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()[Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    sget-boolean v4, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FILE_CHOOSER:Z

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data/user/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const-string v3, "file"

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lorg/chromium/ui/base/SelectFileDialog;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    :cond_2
    const-string v3, "content"

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/chromium/ui/base/SelectFileDialog;->isContentUriUnderAppDir(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :goto_1
    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mUris:[Landroid/net/Uri;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mContext:Landroid/content/Context;

    const-string v5, "_display_name"

    invoke-static {v3, v4, v5}, Lorg/chromium/base/ContentUriUtils;->getDisplayName(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0

    :catch_0
    const-string p0, "SelectFileDialog"

    const-string v0, "Unable to extract results from the content provider"

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->l(Lorg/chromium/ui/base/SelectFileDialog;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mIsMultiple:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->c(Lorg/chromium/ui/base/SelectFileDialog;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->onMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->c(Lorg/chromium/ui/base/SelectFileDialog;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->mFilePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    aget-object p1, p1, v3

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->onFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
