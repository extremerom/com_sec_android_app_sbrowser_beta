.class public final synthetic Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;->c:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/a;->b:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;->a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
