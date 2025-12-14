.class public final synthetic Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

.field public final synthetic b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-wide p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;->c:J

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget-wide v2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/b;->c:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V

    return-void
.end method
