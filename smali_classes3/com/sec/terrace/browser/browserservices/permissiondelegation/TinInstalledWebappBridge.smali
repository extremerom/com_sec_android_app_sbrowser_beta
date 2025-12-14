.class public Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;,
        Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;
    }
.end annotation


# static fields
.field private static sNativeInstalledWebappProvider:J


# direct methods
.method private static decidePermission(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v1, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3, p4, v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->runPermissionCallback(JI)V

    return-void

    :cond_0
    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->requestNotificationPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported permission type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->getLocationPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;J)V

    :goto_0
    return-void

    :catch_0
    invoke-static {p3, p4, v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->runPermissionCallback(JI)V

    return-void
.end method

.method private static getOriginFromPermission(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;->origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPermissions(I)[Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;
    .locals 2
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getPermissionStore()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->get(Landroid/content/Context;Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;)Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionManager;->getPermissions(I)[Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;

    move-result-object p0

    return-object p0
.end method

.method private static getSettingFromPermission(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;->setting:I

    return p0
.end method

.method public static notifyPermissionsChange(I)V
    .locals 4
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    sget-wide v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->sNativeInstalledWebappProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridgeJni;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;

    move-result-object v0

    sget-wide v1, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->sNativeInstalledWebappProvider:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;->notifyPermissionsChange(JI)V

    return-void
.end method

.method public static runPermissionCallback(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridgeJni;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Natives;->runPermissionCallback(JI)V

    return-void
.end method

.method private static setInstalledWebappProvider(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sput-wide p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;->sNativeInstalledWebappProvider:J

    return-void
.end method
