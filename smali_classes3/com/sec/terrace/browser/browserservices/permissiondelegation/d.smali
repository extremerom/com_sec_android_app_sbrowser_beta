.class public final synthetic Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

.field public final synthetic b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/d;->c:Ljava/lang/String;

    invoke-static {v1, v0, p0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->d(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
