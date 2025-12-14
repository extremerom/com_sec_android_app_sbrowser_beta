.class public final Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;


# instance fields
.field private mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addContentSettingExceptionToList(Ljava/util/ArrayList;ILjava/lang/String;II)V
    .locals 1
    .param p4    # I
        .annotation build Lorg/chromium/components/content_settings/ProviderType$EnumType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAndroidPermissionForContentSetting(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x37

    const-string v1, "android.permission.CAMERA"

    if-eq p0, v0, :cond_3

    const/16 v0, 0x71

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    const-string p0, "android.permission.RECORD_AUDIO"

    return-object p0

    :cond_2
    const-string p0, "android.permission.HAND_TRACKING"

    return-object p0

    :cond_3
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isVst()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "android.permission.SCENE_UNDERSTANDING_FINE"

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_6

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object p0

    :cond_6
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    return-object p0
.end method

.method public static getAntiTrackingLevel(Z)I
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getAntiTrackingLevel(Z)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->sInstance:Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->sInstance:Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->sInstance:Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    return-object v0
.end method

.method public static getOptionalAndroidPermissionForContentSetting(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSafeBrowsingGlobalConfigSetting()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getSafeBrowsingGlobalConfigSetting()Z

    move-result v0

    return v0
.end method

.method public static isSafeBrowsingEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isSafeBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSafeBrowsingOptPreviously()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isSafeBrowsingOptPreviously()Z

    move-result v0

    return v0
.end method

.method public static setAntiTrackingEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAntiTrackingEnabled(Z)V

    return-void
.end method

.method public static setAntiTrackingLevel(ZI)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAntiTrackingLevel(ZI)V

    return-void
.end method

.method public static setAntiTrackingThirdPartyCookieBlockingEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAntiTrackingThirdPartyCookieBlockingEnabled(Z)V

    return-void
.end method

.method public static setAutomaticStorageAccessState(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAutomaticStorageAccessState(I)V

    return-void
.end method

.method public static setCsCookieCapExpireEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setCsCookieCapExpireEnabled(Z)V

    return-void
.end method

.method public static setCsCookieCapExpireTime(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setCsCookieCapExpireTime(I)V

    return-void
.end method

.method public static setMaliciousSiteDetectionEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setMaliciousSiteDetectionEnabled(Z)V

    return-void
.end method

.method public static setSafeBrowsing(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setSafeBrowsing(Z)V

    return-void
.end method

.method public static setSafeBrowsingGlobalConfigSetting(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setSafeBrowsingGlobalConfigSetting(Z)V

    return-void
.end method

.method public static setSafeBrowsingOptState(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setSafeBrowsingOptState(Z)V

    return-void
.end method

.method public static setUseNightDim(ZI)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setUseNightDim(ZI)V

    return-void
.end method


# virtual methods
.method public clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z
    .locals 11

    move-object v1, p0

    iget-object v0, v1, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p7, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->getInstance()Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->clearLocationBackoff()V

    :cond_1
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    iput-object v0, v1, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;ZZZZZZZZI)V

    const/4 v0, 0x1

    return v0
.end method

.method public clearBrowsingDataForSuspiciousSite(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;JJZ)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->clearBrowsingDataForSuspiciousSite(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;JJZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearOtrBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZ)Z
    .locals 11

    move-object v1, p0

    iget-object v0, v1, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p7, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->getInstance()Lcom/sec/terrace/browser/prefs/TinLocationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinLocationSettings;->clearLocationBackoff()V

    :cond_1
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    iput-object v0, v1, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    const/4 v9, 0x1

    const/4 v10, 0x4

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v10}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;ZZZZZZZZI)V

    const/4 v0, 0x1

    return v0
.end method

.method public getFontScaleFactor()F
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getFontScaleFactor(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)F

    move-result p0

    return p0
.end method

.method public getPersonalDataSyncSetFlag()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getPersonalDataSyncSetFlag(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public getStorageAccessApiGlobalConfigSetting()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getStorageAccessApiGlobalConfigSetting()Z

    move-result p0

    return p0
.end method

.method public isAllowCookiesEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isContentSettingEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;I)Z

    move-result p0

    return p0
.end method

.method public isAllowPopupsEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isContentSettingEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;I)Z

    move-result p0

    return p0
.end method

.method public isAutoSigninEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getAutoSigninEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getBackgroundPlayEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isBlockNoisyNotificaitonsEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isBlockNoisyNotificaitonsEnabled()Z

    move-result p0

    return p0
.end method

.method public isBlockUnwantedWebpagesEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isBlockUnwantedWebpagesEnabled()Z

    move-result p0

    return p0
.end method

.method public isCompactModeEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getCompactModeEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isContentBlockerEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isContentBlockerStatisticsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getContentBlockerStatisticsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isContentSettingUserModifiable(I)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isContentSettingUserModifiable(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;I)Z

    move-result p0

    return p0
.end method

.method public isCredManPasskeyEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isCredManPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isDefaultContentBlockerEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getDefaultContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isGoToBottomEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getGoToBottomEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isGoToTopEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getGoToTopEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isHighContrastModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isJavaScriptEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isKnoxCookiesEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getKnoxCookiesEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isKnoxJavaScriptEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getKnoxJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isKnoxPopupEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getKnoxPopupEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isNightModeEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isNightModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isPushNotificationsEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isContentSettingEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;I)Z

    move-result p0

    return p0
.end method

.method public isRememberPasswordsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getRememberPasswordsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isSearchSuggestEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getSearchSuggestEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isThirdPartyCookiesEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isThirdPartyCookiesEnabled()Z

    move-result p0

    return p0
.end method

.method public isWebAuthnPasskeyEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->isWebAuthnPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public isZawgyiLanguageEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->getZawgyiLanguageEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z

    move-result p0

    return p0
.end method

.method public onBrowsingDataCleared()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    invoke-interface {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;->onBrowsingDataCleared()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->mClearBrowsingDataObserver:Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;

    return-void
.end method

.method public resetAcceptLanguages(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->resetAcceptLanguages(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowCookiesEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setContentSettingEnabled(IZ)V

    return-void
.end method

.method public setAllowPopupsEnabled(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setContentSettingEnabled(IZ)V

    return-void
.end method

.method public setAllowThirdPartyCookies(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAllowThirdPartyCookies(Z)V

    return-void
.end method

.method public setAntiTrackingActivationThreshold(I)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAntiTrackingActivationThreshold(I)V

    return-void
.end method

.method public setAutoHttpsUpgradeEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAutoHttpsUpgradeEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setAutoSigninEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAutoSigninEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setAutoplayEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setAutoplayEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setBackgroundPlayEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBackgroundPlayEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setBlockAutoDownloadEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockAutoDownloadEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setBlockFixedFrameAllowedStrings(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockFixedFrameAllowedStrings(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method public setBlockFixedFrameEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockFixedFrameEnabled(Z)V

    return-void
.end method

.method public setBlockNoisyNotificaitonsEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockNoisyNotificaitonsEnabled(Z)V

    return-void
.end method

.method public setBlockPluginFingerprintingGcLevel(I)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockPluginFingerprintingGcLevel(I)V

    return-void
.end method

.method public setBlockUnwantedWebpages(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockUnwantedWebpages(Z)V

    return-void
.end method

.method public setBlockWebFingerprintingAllowedDomains(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockWebFingerprintingAllowedDomains(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method public setBlockWebFingerprintingEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setBlockWebFingerprintingEnabled(Z)V

    return-void
.end method

.method public setCompactModeEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setCompactModeEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setContentBlockerEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setContentBlockerStatisticsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setContentBlockerStatisticsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setContentSettingEnabled(IZ)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setContentSettingEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;IZ)V

    return-void
.end method

.method public setCredManPasskeyEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setCredManPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setDefaultContentBlockerEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setDefaultContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setDownloadDefaultStorage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setDownloadDefaultStorage(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method public setFontScaleFactor(F)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setFontScaleFactor(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;F)V

    return-void
.end method

.method public setForceDarkBehavior(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set force dark behavior = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VAX"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setForceDarkBehavior(I)V

    return-void
.end method

.method public setForceZoomEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setForceZoomEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setGoToBottomEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setGoToBottomEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setGoToTopEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setGoToTopEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setHighContrastMode(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set high contrast mode = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VAX"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setHighContrastMode(Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setKnoxCookiesEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setKnoxCookiesEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setKnoxJavaScriptEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setKnoxJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setKnoxPopupEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setKnoxPopupEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setNightMode(Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set dark mode = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VAX"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setNightMode(Z)V

    return-void
.end method

.method public setPasswordEchoEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setPasswordEchoEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setPersonalDataSyncSetFlag(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setPersonalDataSyncSetFlag(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setPrivacyAccessTokenEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set PAT = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setPrivacyAccessTokenEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setPushNotificationsEnabled(Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setContentSettingEnabled(IZ)V

    return-void
.end method

.method public setRedirectSkipEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setRedirectSkipEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setRememberPasswordsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setRememberPasswordsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setRequestDesktopSitesEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setRequestDesktopSitesEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setSearchSuggestEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setSearchSuggestEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setSecretDownloadEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setSecretDownloadEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setStorageAccessApiGlobalConfigSetting(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setStorageAccessApiGlobalConfigSetting(Z)V

    return-void
.end method

.method public setSystemFontFamily(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setSystemFontFamily(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method public setVAXContrastFactor(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Set vax contrast factor = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VAX"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setVAXContrastFactor(I)V

    return-void
.end method

.method public setWebAuthnPasskeyEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setWebAuthnPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method

.method public setZawgyiLanguageEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;->setZawgyiLanguageEnable(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V

    return-void
.end method
