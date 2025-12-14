.class public Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;

.field private final mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mIncognitoActiveTabIndex:I

.field private mIncognitoCount:I

.field private mInitialUrl:Ljava/lang/String;

.field private mInstanceId:I

.field private mIsReverseRequired:Z

.field private mIsSavedInstance:Z

.field private mNormalActiveTabIndex:I

.field private mNormalCount:I

.field private mSkipIncognitoCount:Z

.field private mSkipInitialUrl:Z

.field private mUnRestoredTabs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;->EMPTY:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mCallback:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;

    const-string v0, "TabStateReader"

    const-string v1, "TabStateReader is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getTabsCountExceedingMax(IZ)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getGlobalTabCount()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private isReverseRequired(ILcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportUserAgentRead()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->isTabBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastFixedTabMode(IZ)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "[isReverseRequired] isFixedTabMode : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", lastFixedTabMode : "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TabStateReader"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    const-string p0, "[isReverseRequired] tab state file has 54321 order, so need to reverse it to 12345 order"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v1
.end method

.method private isTabBarEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private readSavedStateFileInternal(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;IIII)I
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[readSavedStateFileInternal] skipInitialUrl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mSkipInitialUrl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move/from16 v14, p4

    move v10, v2

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_0
    if-ge v2, v14, :cond_4

    new-instance v15, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v6, v2

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;-><init>(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;IIII)V

    const/4 v3, 0x1

    if-nez v10, :cond_0

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v10, v3

    :cond_0
    if-nez v11, :cond_1

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->hasGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    move v11, v3

    :cond_1
    if-nez v12, :cond_2

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->useDefaultColorId()Z

    move-result v4

    if-nez v4, :cond_2

    move v12, v3

    :cond_2
    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v4

    if-lt v4, v13, :cond_3

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v4

    add-int/2addr v4, v3

    move v13, v4

    :cond_3
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mCallback:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIsReverseRequired:Z

    invoke-interface {v3, v15, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;->onDetailsRead(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStateReader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_5

    const-string v0, "Used"

    goto :goto_1

    :cond_5
    const-string v0, "Not Used"

    :goto_1
    const-string v2, "4050"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_7

    if-eqz v12, :cond_6

    const-string v0, "Other Color"

    goto :goto_2

    :cond_6
    const-string v0, "Only Default Color"

    goto :goto_2

    :cond_7
    const-string v0, "No Group"

    :goto_2
    const-string v2, "4502"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[readSavedStateFileInternal] nextId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method


# virtual methods
.method public getIncognitoActiveTabIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIncognitoActiveTabIndex:I

    return p0
.end method

.method public getIncognitoCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIncognitoCount:I

    return p0
.end method

.method public getNormalActiveTabIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mNormalActiveTabIndex:I

    return p0
.end method

.method public getNormalCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mNormalCount:I

    return p0
.end method

.method public getUnRestoredTabs()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mUnRestoredTabs:I

    return p0
.end method

.method public isReverseRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIsReverseRequired:Z

    return p0
.end method

.method public isSkipIncognitoCount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mSkipIncognitoCount:Z

    return p0
.end method

.method public read()I
    .locals 14

    const-string v0, "[read] getTabsCountExceedingMax : "

    const-string v1, "[read] tab state version : "

    const-string v2, "[read] unsupported tab state version : "

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "TabStateReader"

    if-nez v3, :cond_0

    const-string p0, "[read] file does not exist."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string v3, "[read] read tab state from file"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-instance v8, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;

    invoke-direct {v8, v6}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;-><init>(I)V

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->isSupportedVersion()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v4

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportIncognito()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mSkipIncognitoCount:Z

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportIncognito()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    :cond_2
    move v9, v4

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-ltz v10, :cond_4

    if-ge v11, v10, :cond_4

    if-ge v1, v10, :cond_4

    iput v9, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIncognitoCount:I

    sub-int v2, v10, v9

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mNormalCount:I

    iput v11, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIncognitoActiveTabIndex:I

    sub-int v2, v1, v9

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mNormalActiveTabIndex:I

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportContentPageLaunch()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIsSavedInstance:Z

    if-nez v4, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mNormalActiveTabIndex:I

    add-int/2addr v2, v9

    move v12, v2

    goto :goto_0

    :cond_3
    move v12, v1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mInitialUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mInstanceId:I

    invoke-direct {p0, v2, v8}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->isReverseRequired(ILcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIsReverseRequired:Z

    invoke-direct {p0, v10, v1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getTabsCountExceedingMax(IZ)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mUnRestoredTabs:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mUnRestoredTabs:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p0

    move-object v7, v13

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->readSavedStateFileInternal(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;IIII)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :cond_4
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public setCallback(Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mCallback:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;

    return-object p0
.end method

.method public setFile(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mInstanceId:I

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/P;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setInitialUrl(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mInitialUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mSkipInitialUrl:Z

    return-object p0
.end method

.method public setIsSavedInstance(Z)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->mIsSavedInstance:Z

    return-object p0
.end method
