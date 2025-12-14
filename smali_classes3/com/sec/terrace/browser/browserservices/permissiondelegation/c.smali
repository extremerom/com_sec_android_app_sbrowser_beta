.class public final synthetic Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

.field public final synthetic b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-wide p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->c:J

    iput-object p5, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget-wide v2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->c:J

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->a:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iget-object v4, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/c;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->c(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
