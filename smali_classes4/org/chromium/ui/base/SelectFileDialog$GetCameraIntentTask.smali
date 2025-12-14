.class Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/SelectFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCameraIntentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

.field private mDirectToCamera:Ljava/lang/Boolean;

.field private mWindow:Lorg/chromium/ui/base/WindowAndroid;

.field final synthetic this$0:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;Ljava/lang/Boolean;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mDirectToCamera:Ljava/lang/Boolean;

    iput-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    iput-object p4, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mCallback:Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    return-void
.end method


# virtual methods
.method public doInBackground()Landroid/net/Uri;
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->g(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/FileProviderUtils;->getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SelectFileDialog"

    const-string v1, "Cannot retrieve content uri from file"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->doInBackground()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {v0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->d(Lorg/chromium/ui/base/SelectFileDialog;Landroid/net/Uri;)V

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->b(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->f(Lorg/chromium/ui/base/SelectFileDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mDirectToCamera:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->k(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->l(Lorg/chromium/ui/base/SelectFileDialog;)V

    :goto_1
    return-void

    :cond_2
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mDirectToCamera:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->e(Lorg/chromium/ui/base/SelectFileDialog;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->j(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p1}, Lorg/chromium/ui/base/SelectFileDialog;->h(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/content/Intent;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->mCallback:Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    sget v1, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->this$0:Lorg/chromium/ui/base/SelectFileDialog;

    invoke-static {p0}, Lorg/chromium/ui/base/SelectFileDialog;->h(Lorg/chromium/ui/base/SelectFileDialog;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->k(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Intent;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog$GetCameraIntentTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
