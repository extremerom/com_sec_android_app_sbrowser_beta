.class Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getSplashScreenImage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

.field final synthetic val$callback:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;->this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;->val$callback:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;->this$0:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->b(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "splash_icon"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;->doInBackground()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;->val$callback:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;->onDataRetrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
