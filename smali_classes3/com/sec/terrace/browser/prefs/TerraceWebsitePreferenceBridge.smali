.class public Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;,
        Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;,
        Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoReadyCallback;,
        Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$LocalStorageInfoReadyCallback;
    }
.end annotation


# direct methods
.method public static clearLocalStorageData(Ljava/lang/String;Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->clearLocalStorageData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearPermissionSettingsForOrigin(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->clearPermissionSettingsForOrigin(Ljava/lang/String;)V

    return-void
.end method

.method public static clearStorageData(Ljava/lang/String;Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->clearStorageData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static createLocalStorageInfoMap()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private static createStorageInfoList()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static fetchLocalStorageInfo(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$LocalStorageInfoReadyCallback;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->fetchLocalStorageInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public static fetchStorageInfo(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoReadyCallback;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->fetchStorageInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public static getContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->getContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static getOriginsForContentSetting(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isContentSettingUserModifiable(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v2

    invoke-interface {v2, p0, v1, v0, p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->getOriginsForContentSetting(ILjava/lang/Object;ZZ)V

    return-object v1
.end method

.method private static insertLocalStorageInfoIntoMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p2, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    invoke-direct {p2, p1, p3, p4}, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static insertPermissionInfoIntoList(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v7, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    move-object v0, v7

    move v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ZJ)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static insertStorageInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isContentSettingEnabled(I)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->isContentSettingEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static isEmbargoed(ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->isEmbargoed(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setContentSettingEnabled(IZ)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->setContentSettingEnabled(IZ)V

    return-void
.end method

.method public static setContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->setContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setEmbargo(ILjava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;->setEmbargo(ILjava/lang/String;Z)V

    return-void
.end method
