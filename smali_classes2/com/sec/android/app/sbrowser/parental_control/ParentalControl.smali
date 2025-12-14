.class Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;
    }
.end annotation


# instance fields
.field private mKidsModeDelegate:Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;

.field private mObserverManager:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;

.field private mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

.field private mParentalControlObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlObserver:Landroid/database/ContentObserver;

    const-string v0, "ParentalControl"

    const-string v1, "Initialize ParentalControl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlObserver:Landroid/database/ContentObserver;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;-><init>(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mObserverManager:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->register()V

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;->createKidsModeDelegate(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mKidsModeDelegate:Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->lambda$requestParentalApproval$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V

    return-void
.end method

.method private static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    return-object v0
.end method

.method private hasEqualsItemInAllowedList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getAllowedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->hasEqualsItemInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "hasEqualsItemInAllowedList: "

    const-string v0, "ParentalControl"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private hasEqualsItemInBlockedList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getBlockedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->hasEqualsItemInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "hasEqualsItemInBlockedList: "

    const-string v0, "ParentalControl"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private hasEqualsItemInList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private isUrlInAllowedList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getAllowedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "isInAllowedList: "

    const-string v0, "ParentalControl"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private isUrlInBlockedList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getBlockedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "isInBlockedList: "

    const-string v0, "ParentalControl"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private isUrlInExplicitList(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mKidsModeDelegate:Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;->isExplicitSite(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "isInExplicitList: "

    const-string v0, "ParentalControl"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private isUrlInList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private synthetic lambda$requestParentalApproval$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->requestParentalApprovalInternal(Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V

    return-void
.end method


# virtual methods
.method public addUrlOnAllowedList(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "type"

    const-string v1, "internet"

    invoke-static {v0, v1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "full_url"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addOnAllowedList, Host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ParentalControl"

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "addOnAllowedList, Full: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mandatory"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.samsung.android.app.parentalcare.provider/ caresettings/*"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "AddSitesAllowedList"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "result_code"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "result_message"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2

    const-string p1, "addOnAllowedList, Success, result_message: "

    invoke-static {p1, p0, v3}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "addOnAllowedList, Failed, resultMessage: "

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string p1, "addOnAllowedList, Error, resultMessage: "

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p0, "addOnAllowedList, no result"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p0, "addOnAllowedList, Parental control unsupported"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getProtectLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getProtectLevel()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ParentalControl"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "isLoadingBlocked null url, return false"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getProtectLevel()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "isLoadingBlocked null protectLevel, return false"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    return v2

    :cond_2
    const-string v0, "isLoadingBlocked Protect Level: BLOCK_ALL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->hasEqualsItemInBlockedList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlInAllowedList(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_4
    const-string v0, "isLoadingBlocked Protect Level: BLOCK_EXPLICIT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->hasEqualsItemInAllowedList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlInBlockedList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlInExplicitList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    return v2

    :cond_8
    const-string v0, "isLoadingBlocked Protect Level: ALLOW_ALL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->hasEqualsItemInAllowedList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlInBlockedList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public requestParentalApproval(Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V
    .locals 3
    .param p2    # Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public requestParentalApprovalInternal(Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V
    .locals 5
    .param p2    # Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "type"

    const-string v1, "internet"

    invoke-static {v0, v1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "full_url"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestParentalApproval, Host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ParentalControl"

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "requestParentalApproval, Full: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mandatory"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.samsung.android.app.parentalcare.provider/requests"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "PostRequest"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "result_code"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "result_message"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2

    const-string p1, "requestParentalApproval, Success, result_message: "

    invoke-static {p1, p0, v3}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;->onSuccess()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "requestParentalApproval, Failed, resultMessage: "

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;->onFailed()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string p1, "requestParentalApproval, Error, resultMessage: "

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;->onFailed()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const-string p1, "requestParentalApproval, DuplicateRequest, resultMessage: "

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;->onDuplicateRequest()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p0, "requestParentalApproval, no result"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;->onFailed()V

    return-void

    :catch_0
    const-string p0, "requestParentalApproval, Parental control unsupported"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;->onFailed()V

    return-void
.end method

.method public updateParentalControlData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->mParentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->update()V

    return-void
.end method
