.class Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->addWebapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIIIJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$backgroundColor:J

.field final synthetic val$callbackPointer:J

.field final synthetic val$displayMode:I

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$iconUrl:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isIconAdaptive:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$orientation:I

.field final synthetic val$scopeUrl:Ljava/lang/String;

.field final synthetic val$shortName:Ljava/lang/String;

.field final synthetic val$source:I

.field final synthetic val$themeColor:J

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$urlIndex:Ljava/lang/String;

.field final synthetic val$userTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;J)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$icon:Landroid/graphics/Bitmap;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$scopeUrl:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$url:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$id:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$name:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$shortName:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$displayMode:I

    move v1, p8

    iput v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$orientation:I

    move-wide v1, p9

    iput-wide v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$themeColor:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$backgroundColor:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$iconUrl:Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$isIconAdaptive:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$source:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$urlIndex:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$userTitle:Ljava/lang/String;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$callbackPointer:J

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic f(Landroid/content/Intent;JLcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->lambda$onPostExecute$0(Landroid/content/Intent;JLcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    return-void
.end method

.method private static synthetic lambda$onPostExecute$0(Landroid/content/Intent;JLcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 0

    invoke-virtual {p3, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateFromShortcutIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelperJni;->get()Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Natives;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Natives;->onWebappDataStored(J)V

    return-void
.end method


# virtual methods
.method public doInBackground()Landroid/content/Intent;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$scopeUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getScopeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$scopeUrl:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$id:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->a()Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;->getFullscreenAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$url:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$name:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$shortName:Ljava/lang/String;

    iget v10, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$displayMode:I

    iget v11, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$orientation:I

    iget-wide v12, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$themeColor:J

    iget-wide v14, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$backgroundColor:J

    iget-object v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$iconUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    iget-boolean v1, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$isIconAdaptive:Z

    const/4 v9, 0x2

    move/from16 v17, v1

    invoke-static/range {v2 .. v17}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->createWebappShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJZZ)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.terrace.browser.webapp_mac"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.terrace.browser.webapp_source"

    iget v3, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$source:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.sec.terrace.browser.webapp_url_index"

    iget-object v0, v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$urlIndex:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->doInBackground()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->a()Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$userTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$icon:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$isIconAdaptive:Z

    iget-object v5, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$url:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;->addShortcutToHomescreen(Ljava/lang/String;Landroid/graphics/Bitmap;ZLandroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$id:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->val$callbackPointer:J

    new-instance p0, Lcom/sec/terrace/browser/shortcut_helper/a;

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/terrace/browser/shortcut_helper/a;-><init>(Landroid/content/Intent;J)V

    invoke-virtual {v0, v1, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->register(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
