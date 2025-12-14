.class public Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

.field private final mRegisteredOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/terrace/browser/customtabs/TerraceOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;->mRegisteredOrigins:Ljava/util/Set;

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;->mPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    return-void
.end method


# virtual methods
.method public registerClient(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;->mRegisteredOrigins:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;->mPermissionUpdater:Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    invoke-virtual {v0, p2, p3, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->onOriginVerified(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;->mRegisteredOrigins:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
