.class Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->checkNotificationPermission(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

.field final synthetic val$channelName:Ljava/lang/String;

.field final synthetic val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$channelName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "notificationChannelName"

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$channelName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    const-string v1, "checkNotificationPermission"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p1, v2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->b(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$channelName:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;->onPermission(Landroid/content/ComponentName;I)V

    return-void

    :cond_2
    const-string v0, "permissionStatus"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const/4 v1, 0x3

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;->onPermission(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public onNoTwaFound()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$1;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;->onNoTwaFound()V

    return-void
.end method
