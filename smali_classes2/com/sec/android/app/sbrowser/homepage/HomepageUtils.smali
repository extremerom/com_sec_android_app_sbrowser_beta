.class public Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;,
        Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;
    }
.end annotation


# static fields
.field private static final MODEL_LIST_ATT_OLD_POLICY:[Ljava/lang/String;

.field private static sIsAttNewModel:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "SM-J727A"

    const-string v10, "SAMSUNG-SM-J327A"

    const-string v0, "SAMSUNG-SM-G891A"

    const-string v1, "SM-G892A"

    const-string v2, "SAMSUNG-SM-G930A"

    const-string v3, "SAMSUNG-SM-G935A"

    const-string v4, "SM-G950U"

    const-string v5, "SM-G955U"

    const-string v6, "SM-N950U"

    const-string v7, "SM-G960U"

    const-string v8, "SM-G965U"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->MODEL_LIST_ATT_OLD_POLICY:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->sIsAttNewModel:Ljava/lang/Boolean;

    return-void
.end method

.method public static getCustomizedHomepage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->getDefaultGoogleHomepage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultGoogleHomepage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->getDefaultGoogleHomepageWithClientID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "http://www.google.com/m?client=ms-android-google&source=android-home"

    return-object p0
.end method

.method private static getDefaultGoogleHomepageWithClientID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-google"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.google.com/m?client={CID}&source=android-home"

    const-string v1, "{CID}"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSprSubsidiary()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "https://www.google.com/search?ie=UTF-8&client=ms-android-sprint-us&source=android-browser"

    return-object p0

    :cond_1
    const-string p0, "http://www.google.com/m?client=ms-android-samsung&source=android-home"

    return-object p0
.end method

.method public static getHomeUrlFromXml()Ljava/lang/String;
    .locals 14

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getCurrentNetworkName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "HomepageUtils"

    const-string v5, "--ProfileHandle parse start--"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Settings.Connections."

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string v0, "ConecctioN Node is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    const-string v7, "ProfileHandle"

    invoke-virtual {v1, v5, v7}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, "ProfileHandle node is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    const-string v9, "the number of profileHandles = "

    invoke-static {v8, v9, v4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-string v11, "NetworkName"

    if-ge v10, v8, :cond_4

    new-instance v12, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;

    invoke-direct {v12, v9}, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;-><init>(I)V

    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-virtual {v1, v13, v11}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v11}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;->mNwkname:Ljava/lang/String;

    :cond_2
    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    const-string v13, "ProfBrowser"

    invoke-virtual {v1, v11, v13}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v1, v11}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;->mProfBrowser:Ljava/lang/String;

    :cond_3
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const-string v7, "--Profile parse start--"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Profile"

    invoke-virtual {v1, v5, v7}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v0, "Profile node is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_5
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const-string v8, "the number of profile = "

    invoke-static {v7, v8, v4}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    move v8, v9

    :goto_1
    if-ge v8, v7, :cond_9

    new-instance v10, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;

    invoke-direct {v10, v9}, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;-><init>(I)V

    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-virtual {v1, v12, v11}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v1, v12}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mNwkname:Ljava/lang/String;

    :cond_6
    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "ProfileName"

    invoke-virtual {v1, v12, v13}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v1, v12}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mProfName:Ljava/lang/String;

    :cond_7
    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const-string v13, "URL"

    invoke-virtual {v1, v12, v13}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v1, v12}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mUrl:Ljava/lang/String;

    :cond_8
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "currentNtwName"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "profileHandle.nwkname"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;->mNwkname:Ljava/lang/String;

    invoke-static {v5, v7, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;->mNwkname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v2, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;->mNwkname:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v1, v2, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$ProfileHandle;->mProfBrowser:Ljava/lang/String;

    const-string v2, "ProfBrowser is "

    invoke-static {v2, v1, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v1, v6

    :goto_2
    if-nez v1, :cond_c

    const-string v0, "profBrowser null - means couldn\'t find proposal Profile"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mProfName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mProfName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mNwkname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mNwkname:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Same Profile Name but other Networks! keep search "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mProfName:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    iget-object v6, v3, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils$Profile;->mUrl:Ljava/lang/String;

    const-string v0, "Customer xml URL is "

    invoke-static {v0, v6, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v0, "returning "

    invoke-static {v0, v6, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static isAttNewModel()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->sIsAttNewModel:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->MODEL_LIST_ATT_OLD_POLICY:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->isCurrentModelExistsOnList([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->sIsAttNewModel:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->sIsAttNewModel:Ljava/lang/Boolean;

    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->sIsAttNewModel:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isCurrentModelExistsOnList([Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HomepageUtils"

    if-eqz v1, :cond_0

    const-string p0, "isCurrentModelExistsOnList - can\'t find model name from system"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz p0, :cond_2

    move v1, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    aget-object v4, p0, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "isCurrentModelExistsOnList - model on old model list"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "isCurrentModelExistsOnList - "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is not listed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static resetIsAttNewModel()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/homepage/HomepageUtils;->sIsAttNewModel:Ljava/lang/Boolean;

    return-void
.end method
