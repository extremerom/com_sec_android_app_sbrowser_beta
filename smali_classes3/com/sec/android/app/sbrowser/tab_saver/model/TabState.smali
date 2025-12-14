.class public final Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActiveTime:J

.field private final mDexUserAgentOption:I

.field private final mGroupColorId:I

.field private final mGroupName:Ljava/lang/String;

.field private final mIncognito:Ljava/lang/Boolean;

.field private final mIndex:I

.field private final mIsIncognitoActiveIndex:Z

.field private final mIsLocked:Z

.field private final mIsStandardActiveIndex:Z

.field private final mIsZoomApplyToThisTabOnlyDex:Z

.field private final mIsZoomApplyToThisTabOnlyMobile:Z

.field private final mPhoneUserAgentOption:I

.field private final mTabId:I

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mVisitCount:I

.field private final mZoomValueDex:D

.field private final mZoomValueMobile:D


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;IIIDDZZZZIJ)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIndex:I

    move v1, p2

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTabId:I

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mUrl:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTitle:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIncognito:Ljava/lang/Boolean;

    move v1, p6

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsLocked:Z

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupName:Ljava/lang/String;

    move v1, p8

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupColorId:I

    move v1, p9

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mPhoneUserAgentOption:I

    move v1, p10

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mDexUserAgentOption:I

    move-wide v1, p11

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueMobile:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueDex:D

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyMobile:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyDex:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsStandardActiveIndex:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsIncognitoActiveIndex:Z

    move/from16 v1, p19

    iput v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mVisitCount:I

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mActiveTime:J

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;IIII)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIndex:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTabId:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportIncognito()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ge p3, p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v2

    :goto_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIncognito:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportUrlRead()Z

    move-result p4

    const-string v0, ""

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_2
    move-object p4, v0

    :goto_2
    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportTitle()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_3
    move-object p4, v0

    :goto_3
    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTitle:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportLock()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p4

    if-eqz p4, :cond_4

    move p4, v1

    goto :goto_4

    :cond_4
    move p4, v2

    :goto_4
    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsLocked:Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportTabGroup()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportTabGroupColor()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p4

    goto :goto_5

    :cond_6
    move p4, v2

    :goto_5
    iput p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupColorId:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportUserAgentRead()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p4

    goto :goto_6

    :cond_7
    move p4, v2

    :goto_6
    iput p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mPhoneUserAgentOption:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportUserAgentRead()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p4

    goto :goto_7

    :cond_8
    move p4, v2

    :goto_7
    iput p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mDexUserAgentOption:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportZoom()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v3

    goto :goto_8

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCommonZoomValueMobile()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :goto_8
    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueMobile:D

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportZoom()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p4

    if-eqz p4, :cond_a

    move p4, v1

    goto :goto_9

    :cond_a
    move p4, v2

    :goto_9
    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyMobile:Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportZoom()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v3

    goto :goto_a

    :cond_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCommonZoomValueDex()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :goto_a
    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueDex:D

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportZoom()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p4

    if-eqz p4, :cond_c

    move p4, v1

    goto :goto_b

    :cond_c
    move p4, v2

    :goto_b
    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyDex:Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportVisitCount()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p4

    goto :goto_c

    :cond_d
    move p4, v2

    :goto_c
    iput p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mVisitCount:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportActiveTime()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    goto :goto_d

    :cond_e
    const-wide/16 p1, 0x0

    :goto_d
    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mActiveTime:J

    if-ne p3, p6, :cond_f

    move p1, v1

    goto :goto_e

    :cond_f
    move p1, v2

    :goto_e
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsStandardActiveIndex:Z

    if-ne p3, p5, :cond_10

    goto :goto_f

    :cond_10
    move v1, v2

    :goto_f
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsIncognitoActiveIndex:Z

    return-void
.end method


# virtual methods
.method public getActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mActiveTime:J

    return-wide v0
.end method

.method public getDexUserAgentOption()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mDexUserAgentOption:I

    return p0
.end method

.method public getGroupColorId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupColorId:I

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getIncognito()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIncognito:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getOriginalIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIndex:I

    return p0
.end method

.method public getPhoneUserAgentOption()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mPhoneUserAgentOption:I

    return p0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTabId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVisitCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mVisitCount:I

    return p0
.end method

.method public getZoomValueDex()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueDex:D

    return-wide v0
.end method

.method public getZoomValueMobile()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueMobile:D

    return-wide v0
.end method

.method public hasGroup()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isIncognitoActiveIndex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsIncognitoActiveIndex:Z

    return p0
.end method

.method public isLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsLocked:Z

    return p0
.end method

.method public isStandardActiveIndex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsStandardActiveIndex:Z

    return p0
.end method

.method public isZoomApplyToThisTabOnlyDex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyDex:Z

    return p0
.end method

.method public isZoomApplyToThisTabOnlyMobile()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyMobile:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n[to read] readSaveStateFile - restore / "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tabId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mTabId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isIncognito : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIncognito:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", group : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ROOT"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupColorId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupColorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneUserAgentOption : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mPhoneUserAgentOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dexUserAgentOption : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mDexUserAgentOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zoomValueMobile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueMobile:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isZoomApplyToThisTabOnlyMobile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyMobile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", zoomValueDex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mZoomValueDex:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isZoomApplyToThisTabOnlyDex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mIsZoomApplyToThisTabOnlyDex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visitCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mVisitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activeTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useDefaultColorId()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->mGroupColorId:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
