.class Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->storeWebappSplashImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$splashImage:Landroid/graphics/Bitmap;

.field final synthetic val$storage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;->val$splashImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;->val$storage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;->doInBackground()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;->val$splashImage:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;->val$storage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateSplashScreenImage(Ljava/lang/String;)V

    return-void
.end method
