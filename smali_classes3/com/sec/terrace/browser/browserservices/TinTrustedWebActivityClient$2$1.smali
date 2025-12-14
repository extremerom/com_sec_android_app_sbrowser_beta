.class Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;
.super LI/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;

.field final synthetic val$service:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;->this$1:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;->val$service:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;->lambda$onExtraCallback$0(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V

    return-void
.end method

.method private static synthetic lambda$onExtraCallback$0(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 1

    const-string v0, "checkAndroidLocationPermission"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "locationPermissionResult"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    :goto_1
    invoke-interface {p3}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;->onPermission(Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;->this$1:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;

    iget-object v0, v0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2;->val$permissionCallback:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$2$1;->val$service:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;

    new-instance v1, Lcom/sec/terrace/browser/browserservices/a;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/sec/terrace/browser/browserservices/a;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V

    const/4 p0, 0x7

    invoke-static {p0, v1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method
