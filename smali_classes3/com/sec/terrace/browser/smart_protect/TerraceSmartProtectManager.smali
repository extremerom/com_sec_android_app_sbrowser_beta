.class public Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$LazyHolder;,
        Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;,
        Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;
    }
.end annotation


# instance fields
.field private mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

.field private mFeatureConfigs:Lorg/json/JSONObject;

.field private mNativeTinSmartProtectManager:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;-><init>()V

    return-void
.end method

.method private countLayoutObject(III)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TerraceSmartProtectManager"

    const-string v1, "countLayoutObjec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;->countLayoutObject(III)V

    return-void
.end method

.method private getCurrentTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$LazyHolder;->a()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object v0

    return-object v0
.end method

.method private setSmartProtectAllowList()V
    .locals 6

    const-string v0, "https_auto_upgrade"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p0, v0, v5, v4}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setSmartProtectAllowList(Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "lookalikes"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0, v0, v5, v4}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setSmartProtectAllowList(Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "unwanted_webpages_blocker"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {p0, v0, v5, v3}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setSmartProtectAllowList(Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setSmartProtectBlockList()V
    .locals 5

    const-string v0, "https_auto_upgrade"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureBlockList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p0, v0, v2, v4}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setSmartProtectAllowList(Ljava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public didAttemptToUpgradeToHTTPS()Z
    .locals 6

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->didAttemptToUpgradeToHTTPS(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p0

    return p0
.end method

.method public getFeatureAllowList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureList(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureBlockList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getFeatureList(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mFeatureConfigs:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    return p3

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error in getFeatureInt: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TerraceSmartProtectManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public getFeatureLevel(Ljava/lang/String;I)I
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mFeatureConfigs:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "min_support_level"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error in getFeatureLevel: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TerraceSmartProtectManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getFeatureList(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mFeatureConfigs:Lorg/json/JSONObject;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string p1, "al"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p1, "bl"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    move p2, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error in getFeatureList: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TerraceSmartProtectManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectChainList(Z)[Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    move-object v3, p0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->getRedirectChainList(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSkippableEntryList()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->getSkippableEntryList(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->init(Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    :cond_0
    return-void
.end method

.method public isFeatureEnabled(Ljava/lang/String;Z)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mFeatureConfigs:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "enabled"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error in isFeatureEnabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TerraceSmartProtectManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public requestLayoutObjectCount()Z
    .locals 6

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "TerraceSmartProtectManager"

    const-string v2, "requestLayoutObjectCount"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getCurrentWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->requestLayoutObjectCount(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;)Z

    move-result p0

    return p0
.end method

.method public setCallbackListener(Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

    return-void
.end method

.method public setFeatureConfigs(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mFeatureConfigs:Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "\"al\""

    const-string v0, "\"alist\""

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\"bl\""

    const-string v0, "\"blist\""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object p2

    iget-wide v0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    invoke-interface {p2, v0, v1, p0, p1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->setFeatureConfigs(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Ljava/lang/String;)V

    return-void
.end method

.method public setSmartProtectAllowList(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManagerJni;->get()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->mNativeTinSmartProtectManager:J

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;->setSmartProtectAllowList(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public updateList()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setSmartProtectAllowList()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setSmartProtectBlockList()V

    return-void
.end method
