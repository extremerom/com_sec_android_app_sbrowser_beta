.class Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/permissions/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->requestFileAccessPermissionHelper(Lorg/chromium/ui/permissions/AndroidPermissionDelegate;Lorg/chromium/base/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/download/TerraceDownloadController$1;

.field final synthetic val$callback:Lorg/chromium/base/Callback;

.field final synthetic val$lastTerraceActivity:Lcom/sec/terrace/TerraceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadController$1;Lcom/sec/terrace/TerraceActivity;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;->this$0:Lcom/sec/terrace/browser/download/TerraceDownloadController$1;

    iput-object p2, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;->val$lastTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    iput-object p3, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    iget-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;->val$lastTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_request_permission_storage"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;->val$callback:Lorg/chromium/base/Callback;

    array-length p1, p2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    aget p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
