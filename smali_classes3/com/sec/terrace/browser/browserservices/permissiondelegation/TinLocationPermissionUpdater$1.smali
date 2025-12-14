.class Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->checkPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCalled:Z

.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

.field final synthetic val$callback:J

.field final synthetic val$origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->val$origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-wide p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->val$callback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoTwaFound()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->mCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->mCalled:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

    invoke-static {v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;)Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->val$origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->resetStoredPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    iget-wide v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->val$callback:J

    const/4 p0, 0x2

    invoke-static {v0, v1, p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->runPermissionCallback(JI)V

    return-void
.end method

.method public onPermission(Landroid/content/ComponentName;I)V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->mCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->mCalled:Z

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->this$0:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;

    iget-object v2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->val$origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iget-wide v3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater$1;->val$callback:J

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;->b(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinLocationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;JLandroid/content/ComponentName;I)V

    return-void
.end method
