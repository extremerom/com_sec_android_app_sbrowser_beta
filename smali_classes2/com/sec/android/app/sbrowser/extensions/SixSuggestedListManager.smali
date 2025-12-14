.class public Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

.field private mCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mNBadgeEverShownList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPickedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createSimpleClient()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    return-object p0
.end method

.method private addExtToPickedList(IILjava/util/ArrayList;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v5

    invoke-direct {v0, v5}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->isInPickedList(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v7

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->isToShowNBadge()Z

    move-result v13

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getIconImgURL()Ljava/lang/String;

    move-result-object v14

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_2
    move/from16 v2, p1

    :goto_0
    if-ge v3, v1, :cond_5

    move-object/from16 v4, p3

    invoke-direct {v0, v2, v4}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getNextPickData(ILjava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->isInPickedList(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v2

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->isToShowNBadge()Z

    move-result v14

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getIconImgURL()Ljava/lang/String;

    move-result-object v5

    move-object v7, v15

    move v8, v2

    move-object v0, v15

    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_5
    :goto_1
    return v3
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->compareWithCandidateList(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private compareWithCandidateList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SixSuggestedListManager"

    const-string v1, "compareWithCandidateList - Empty extList from Galaxy Store"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getSuggestedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->updateCandidateList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private composeFixedAndNormalLists(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->isToBeFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static getFixedSlots(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string v1, "getFixedSlots - context is null. returning default"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "six_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "six_suggested_fixed_slots"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIsForcedToRefresh(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string v1, "getIsForcedToRefresh - context is null. returning default"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "six_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "six_suggested_force_refresh"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getMaxSlots(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string v1, "getMaxSlots - context is null. returning default"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "six_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "six_suggested_max_slots"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNBadgeEverShownList(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string v0, "getNBadgeEverShownList - context is null. returning default"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "six_data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "six_suggested_ever_n_list"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getNextPickData(ILjava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v2

    if-eq p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    return-object p0

    :cond_3
    const-string p0, "getNextPickData - Returning null. NOT found for "

    const-string p2, "SixSuggestedListManager"

    invoke-static {p1, p0, p2}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSuggestedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;"
        }
    .end annotation

    const-string v0, "SixSuggestedListManager"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "getSuggestedList - context is null. returning null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v2, "six_data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "six_suggested_apps_list"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getSuggestedList - No data was stored, null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$4;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$4;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSuggestedList - exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static getUpdateRate(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x4

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string v1, "getUpdateRate - context is null. returning default"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "six_data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "six_suggested_update_rate"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isInOldPickedList(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private isInPickedList(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private jsonToData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "jsonToData - exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixSuggestedListManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private pickExtToPickedList(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/ArrayList;)I
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;III",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, p3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    move/from16 v5, p4

    if-ge v4, v5, :cond_8

    if-ge v4, v3, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    move/from16 v8, p5

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->isExpired(I)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-static {v10, v9}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    move-object/from16 v10, p1

    :cond_1
    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v9

    invoke-direct {v0, v9, v2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getNextPickData(ILjava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    move-result-object v9

    const-string v11, "pickExtToPickedList - keep "

    const-string v12, "SixSuggestedListManager"

    if-nez v9, :cond_2

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "pickExtToPickedList - try replacing "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v13

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->isInOldPickedList(ILjava/util/ArrayList;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v13

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v14

    if-ne v13, v14, :cond_5

    :cond_4
    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v13

    invoke-direct {v0, v13}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->isInPickedList(I)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v9

    invoke-direct {v0, v9, v2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getNextPickData(ILjava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_6
    if-nez v9, :cond_7

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object v11, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getPickOrder()I

    move-result v14

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->isToShowNBadge()Z

    move-result v21

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->getIconImgURL()Ljava/lang/String;

    move-result-object v22

    move-object v13, v15

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move-object/from16 v21, v22

    invoke-direct/range {v13 .. v21}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "pickExtToPickedList - replaced "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    return v4
.end method

.method public static setFixedSlots(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string p1, "setFixedSlots - context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_fixed_slots"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setIsForcedToRefresh(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string p1, "setIsForcedToRefresh - context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_force_refresh"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMaxSlots(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string p1, "setMaxSlots - context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_max_slots"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNBadgeEverShownList(Landroid/content/Context;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string p1, "setNBadgeEverShownList - context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_ever_n_list"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSuggestedList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SixSuggestedListManager"

    if-nez p0, :cond_0

    const-string p0, "setSuggestedList - context is null. Aborting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSuggestedList - exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_apps_list"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUpdateRate(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedListManager"

    const-string p1, "setUpdateRate - context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_update_rate"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateCandidateList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SixSuggestedListManager"

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUtil;->collectValidStubExtMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "updateCandidateList - No pkg names were retrieved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateCandidateList - extMap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getIconImgURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getIconImgURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;->setIconImgURL(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->setAppName(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateCandidateList - removed from candidates: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setSuggestedList(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getPickedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->attachNBadgeIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;->refreshSixPreferences()V

    :cond_7
    return-void

    :cond_8
    :goto_3
    const-string p0, "updateCandidateList - No lists to work. Aborting."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateFromTheBeginning(ILjava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateFromTheBeginning - start from the beginning"

    const-string v1, "SixSuggestedListManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->addExtToPickedList(IILjava/util/ArrayList;)I

    move-result p2

    if-le p1, p2, :cond_1

    sub-int/2addr p1, p2

    add-int/2addr p3, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->addExtToPickedList(IILjava/util/ArrayList;)I

    move-result p1

    const-string p3, "updateFromTheBeginning - finally mPickedList: "

    const-string p4, "+"

    const-string v0, "="

    invoke-static {p2, p1, p3, p4, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateNBadgeEverShownListIfNeeded(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getNBadgeEverShownList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setNBadgeEverShownList(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method private updatePreviousList(Landroid/content/Context;Ljava/util/ArrayList;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    const-string v0, "updatePreviousList - picking extensions"

    const-string v10, "SixSuggestedListManager"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v3

    move-object v11, p1

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickExtId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->isToBeFixed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    move-object v11, p1

    goto :goto_0

    :cond_4
    move-object v11, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updatePreviousList - oldFixedList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updatePreviousList - oldPickedList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lez v8, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "updatePreviousList - updating old fixed list"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->pickExtToPickedList(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/ArrayList;)I

    move-result v0

    goto :goto_3

    :cond_7
    const-string v0, "updatePreviousList - adding fixed list"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v13, v8, v9}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->addExtToPickedList(IILjava/util/ArrayList;)I

    move-result v0

    :goto_3
    if-le v8, v0, :cond_8

    const-string v1, "updatePreviousList - fill fixed list more"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-static {v12, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v1

    invoke-direct {p0, v1, v8, v9}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->addExtToPickedList(IILjava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    if-eq v8, v0, :cond_9

    sub-int v1, v8, v0

    add-int v1, v1, p6

    const-string v2, "updatePreviousList - let normal ones fill: "

    invoke-static {v1, v2, v10}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v0

    move v8, v1

    goto :goto_4

    :cond_9
    move/from16 v8, p6

    move v9, v0

    goto :goto_4

    :cond_a
    move/from16 v8, p6

    move v9, v13

    :goto_4
    const-string v0, "updatePreviousList - pick normal list for "

    invoke-static {v8, v0, v10}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v4, v8

    move/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->pickExtToPickedList(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/ArrayList;)I

    move-result v0

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "updatePreviousList - picked so far: "

    invoke-static {v1, v2, v10}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-ge v0, v8, :cond_c

    const-string v2, "updatePreviousList - slots were not filled yet"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    iget-object v2, v7, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    sub-int/2addr v1, v12

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v13

    :goto_5
    sub-int/2addr v8, v0

    move-object/from16 v1, p7

    invoke-direct {p0, v13, v8, v1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->addExtToPickedList(IILjava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    const-string v1, "updatePreviousList - finally mPickedList: "

    const-string v2, "+"

    const-string v3, "="

    invoke-static {v9, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSuggestedExtList(Landroid/content/Context;IIIZLjava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIZ",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move v0, p3

    move-object/from16 v1, p6

    iget-object v2, v8, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, v8, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v8, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string v10, "SixSuggestedListManager"

    if-lez v0, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1, v4, v7}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->composeFixedAndNormalLists(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move v1, p4

    if-le v1, v0, :cond_3

    move v1, v0

    :cond_3
    sub-int/2addr v0, v1

    :goto_0
    move v6, v0

    move v3, v1

    goto :goto_1

    :cond_4
    move v1, p4

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez p5, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->updatePreviousList(Landroid/content/Context;Ljava/util/ArrayList;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->updateFromTheBeginning(ILjava/util/ArrayList;ILjava/util/ArrayList;)V

    :goto_3
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setIsForcedToRefresh(Landroid/content/Context;Z)V

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->setPickedList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateSuggestedExtList - picked list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    :goto_5
    const-string v0, "updateSuggestedExtList - no suggested list was given. aborting."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "6158"

    const-string v1, "empty"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attachNBadgeIfNeeded(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->isToBeFixed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->isToShowNBadge()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->isNBadgeEverShown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public getPickedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getMaxSlots(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "SixSuggestedListManager"

    const-string v1, "getPickedList - Suggested list is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->cleanExtIconDirectory(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getFixedSlots(Landroid/content/Context;)I

    move-result v4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getUpdateRate(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getIsForcedToRefresh(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getSuggestedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->updateSuggestedExtList(Landroid/content/Context;IIIZLjava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPickedListSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleFetchedList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SixSuggestedListManager"

    if-eqz v0, :cond_0

    const-string p0, "handleFetchedList - fetched list is empty. does nothing"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->jsonToData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "handleFetchedList - converted list is empty. does nothing"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->getSuggestedMaxSlots()I

    move-result v0

    if-nez v0, :cond_5

    const-string p2, "handleFetchedList - Suggested list is disabled"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setMaxSlots(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setFixedSlots(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setUpdateRate(Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setIsForcedToRefresh(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setSuggestedList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->cleanExtIconDirectory(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->setGetExtListResult(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->setExtList(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string p0, "6158"

    const-string p1, "disabled"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->getSuggestedFixedSlots()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->getSuggestedUpdateRate()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->getIsForcedToRefresh()Z

    move-result v4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedListData;->getSuggestedExtList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedAppData;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleFetchedList-received:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->updateNBadgeEverShownListIfNeeded(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setMaxSlots(Landroid/content/Context;I)V

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setFixedSlots(Landroid/content/Context;I)V

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setUpdateRate(Landroid/content/Context;I)V

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setIsForcedToRefresh(Landroid/content/Context;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCandidateList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setSuggestedList(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->requestExtListFromGalaxyStore(Landroid/content/Context;)V

    return-void
.end method

.method public isNBadgeEverShown(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getNBadgeEverShownList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerGetExtListCallback(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->addGetExtListCallback(Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$GetExtListCallback;)Z

    move-result p0

    return p0
.end method

.method public requestExtListFromGalaxyStore(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->registerGetExtListCallback(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->requestExtListFromGalaxyStore(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "SixSuggestedListManager"

    const-string p1, "requestExtListFromGalaxyStore - Failed to add callback. Aborting."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNBadgeEverShown(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getNBadgeEverShownList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNBadgeEverShownList(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mNBadgeEverShownList:Ljava/util/Set;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setNBadgeEverShownList(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public setPrefRefreshCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->mCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    return-void
.end method
