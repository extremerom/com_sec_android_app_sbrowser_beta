.class Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->checkLocationPermission(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

.field final synthetic val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 3

    new-instance p1, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    const-string v1, "checkAndroidLocationPermission"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v0, p2, v1, v2, p1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->b(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;->onPermission(Landroid/content/ComponentName;I)V

    :cond_1
    return-void
.end method

.method public onNoTwaFound()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;->onNoTwaFound()V

    return-void
.end method
