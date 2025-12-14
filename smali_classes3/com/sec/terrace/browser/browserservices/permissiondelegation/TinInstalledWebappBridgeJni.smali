.class Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public notifyPermissionsChange(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M1d83IwT(JI)V

    return-void
.end method

.method public runPermissionCallback(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M_FlmQwh(JI)V

    return-void
.end method
