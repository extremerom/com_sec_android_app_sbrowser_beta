.class public Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mContentSettingType:I

.field private final mEmbedder:Ljava/lang/String;

.field private final mExpiryTime:J

.field private final mIsIncognito:Z

.field private final mOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    iput-object p2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mIsIncognito:Z

    iput-wide p5, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mExpiryTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;

    iget v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    iget v3, p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mIsIncognito:Z

    iget-boolean v3, p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mIsIncognito:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mExpiryTime:J

    iget-wide p0, p1, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mExpiryTime:J

    cmp-long p0, v2, p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getContentSettingValue()I
    .locals 3

    iget v0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    iget-object v1, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mIsIncognito:Z

    invoke-static {v0, v1, v2, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->getContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getEmbedder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mExpiryTime:J

    return-wide v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mIsIncognito:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mExpiryTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmbargoed()Z
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isEmbargoed(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setContentSettingValue(I)V
    .locals 3

    iget v0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mContentSettingType:I

    iget-object v1, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mEmbedder:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/terrace/browser/prefs/TerracePermissionInfo;->mIsIncognito:Z

    invoke-static {v0, v1, v2, p1, p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->setContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
