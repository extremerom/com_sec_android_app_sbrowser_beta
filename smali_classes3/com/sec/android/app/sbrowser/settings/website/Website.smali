.class public Lcom/sec/android/app/sbrowser/settings/website/Website;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/android/app/sbrowser/settings/website/Website;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final mEmbedder:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

.field private final mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

.field private mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

.field private mPopupException:Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;

.field private mStorageInfoCallbacksLeft:I

.field private mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

.field private final mTerraceStorageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceStorageInfo:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mEmbedder:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/website/Website;Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->lambda$clearAllStoredData$0(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->lambda$clearLocalStoredData$1(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V

    return-void
.end method

.method private synthetic lambda$clearAllStoredData$0(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mStorageInfoCallbacksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mStorageInfoCallbacksLeft:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;->onStoredDataCleared()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$clearLocalStoredData$1(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;->onStoredDataCleared()V

    return-void
.end method


# virtual methods
.method public addStorageInfo(Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceStorageInfo:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllStoredData(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->clearPermissionSettingsForOrigin(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceStorageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mStorageInfoCallbacksLeft:I

    new-instance v0, LHa/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->clear(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LHa/a;->onStorageInfoCleared()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceStorageInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;->clear(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceStorageInfo:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearLocalStoredData(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/f;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/f;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->clear(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/f;->onStorageInfoCleared()V

    :goto_0
    return-void
.end method

.method public compareTo(Lcom/sec/android/app/sbrowser/settings/website/Website;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->compareTo(Lcom/sec/android/app/sbrowser/settings/website/Website;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAddress()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    return-object p0
.end method

.method public getExpirytime()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->getExpiryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTotalUsage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mOrigin:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalUsage()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceStorageInfo:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/prefs/TerraceStorageInfo;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public getmEmbedder()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mEmbedder:Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isPermissionAllowed()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->getContentSettingValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isPermissionEmbargoed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->isEmbargoed()Z

    move-result p0

    return p0
.end method

.method public setLocalStorageInfo(Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mTerraceLocalStorageInfo:Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;

    return-void
.end method

.method public setPermissionContentSetting(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->setContentSettingValue(I)V

    :cond_0
    return-void
.end method

.method public setPermissionInfo(Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    return-void
.end method

.method public setPopupExceptionInfoAllowed(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPopupException:Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/prefs/TerraceContentSettingException;->setContentSetting(I)V

    return-void
.end method

.method public setTemporaryAllowedStorage(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/Website;->mPermissionInfo:Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->setContentSettingValue(I)V

    return-void
.end method
