.class public Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;
    }
.end annotation


# instance fields
.field private final mLocationUpdateCallback:LI/d;

.field private mNativePointer:J

.field private final mTwaClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

.field private final mUrl:Lorg/chromium/url/GURL;


# direct methods
.method public constructor <init>(JLorg/chromium/url/GURL;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$1;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mLocationUpdateCallback:LI/d;

    iput-wide p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mNativePointer:J

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mUrl:Lorg/chromium/url/GURL;

    iput-object p4, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mTwaClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->notifyNewGeoposition(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->notifyNewGeopositionError(Ljava/lang/String;)V

    return-void
.end method

.method public static create(JLorg/chromium/url/GURL;)Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->get()Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;-><init>(JLorg/chromium/url/GURL;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V

    return-object v0
.end method

.method private notifyNewGeoposition(Landroid/os/Bundle;)V
    .locals 24
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v2, "timeStamp"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v10, v2, v4

    const-string v2, "altitude"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v2, "accuracy"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v2, "bearing"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-string v2, "speed"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridgeJni;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;

    move-result-object v3

    iget-wide v4, v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mNativePointer:J

    invoke-interface/range {v3 .. v23}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;->onNewLocationAvailable(JDDDZDZDZDZD)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyNewGeopositionError(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridgeJni;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mNativePointer:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge$Natives;->onNewErrorAvailable(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mTwaClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mUrl:Lorg/chromium/url/GURL;

    invoke-virtual {v1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mLocationUpdateCallback:LI/d;

    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->startListeningLocationUpdates(Ljava/lang/String;ZLI/d;)V

    return-void
.end method

.method public stopAndDestroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mNativePointer:J

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mTwaClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappGeolocationBridge;->mUrl:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->stopLocationUpdates(Ljava/lang/String;)V

    return-void
.end method
