.class Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;


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

.method public static get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onNewErrorAvailable(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M1Pd8vXJ(JLjava/lang/Object;)V

    return-void
.end method

.method public onNewLocationAvailable(JDDDZDZDZDZD)V
    .locals 0

    invoke-static/range {p1 .. p20}, LJ/N;->MgCZc9Ll(JDDDZDZDZDZD)V

    return-void
.end method
