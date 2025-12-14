.class Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->fetchAvatar(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

.field final synthetic val$iconUrl:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->val$iconUrl:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->val$index:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5

    const-string p1, "fetchAvatar:doInBackground getImage Exception: "

    const-string v0, "fetchAvatar:doInBackground"

    const-string v1, "AccountChooserDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->val$iconUrl:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v2, v0

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :goto_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "fetchAvatar:doInBackground connect Exception: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "AccountChooserDialog"

    const-string v1, "fetchAvatar::onPostExecute start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->e(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->b(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)Lcom/sec/terrace/TerraceActivity;

    move-result-object v2

    invoke-virtual {v2}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->makeRoundAvatar(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->c(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->val$index:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/sec/terrace/browser/password_manager/TerraceCredential;->setAvatar(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;->d(Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog;)Lm/l;

    move-result-object v1

    iget-object v1, v1, Lm/l;->f:Lm/j;

    iget-object v1, v1, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->val$index:I

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p0

    if-lt v2, p0, :cond_3

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result p0

    if-gt v2, p0, :cond_3

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0b0925

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_2

    const-string p0, "fetchAvatar::onPostExecute avatarView is null."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const-string p0, "fetchAvatar::onPostExecute end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/password_manager/AccountChooserDialog$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
