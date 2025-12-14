.class Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;
.super LI/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;->this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;->lambda$onExtraCallback$0(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onExtraCallback$0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onNewLocationAvailable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;->this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;

    invoke-static {p0, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "onNewLocationError"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    if-eqz p2, :cond_1

    const-string v0, "message"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;->this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->b(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method
