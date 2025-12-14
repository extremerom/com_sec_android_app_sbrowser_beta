.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/W;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\u00020\u00062\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;",
        "Landroidx/lifecycle/W;",
        "",
        "<init>",
        "()V",
        "enable",
        "Ldb/r;",
        "onNewsFeedEnabledChange",
        "(Ljava/lang/Boolean;)V",
        "updateValue",
        "isNewsFeedSupported",
        "()Z",
        "newValue",
        "setValueIfChanged",
        "(Z)V",
        "Landroidx/lifecycle/S;",
        "",
        "",
        "newsCategoriesLiveData",
        "addNewsCategoriesSource",
        "(Landroidx/lifecycle/S;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "editModeLiveData",
        "addEditModeSource",
        "isNewsFeedEnabled",
        "Z",
        "isEmptyNewsCategory",
        "editMode",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isEmptyNewsCategory:Z

.field private isNewsFeedEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/lifecycle/W;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->isEmptyNewsCategory:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isNewsFeedEnabledByDefault(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "show_news_feed"

    invoke-direct {v2, v1, v3, v0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "pref_use_updated_samsung_internet"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, v2, v3}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, v0, v2}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->updateValue()V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final synthetic access$onNewsFeedEnabledChange(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->onNewsFeedEnabledChange(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final addEditModeSource$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->updateValue()V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final addNewsCategoriesSource$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/util/List;)Ldb/r;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->isEmptyNewsCategory:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->updateValue()V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->_init_$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->addNewsCategoriesSource$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->addEditModeSource$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final isNewsFeedSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->isNewsFeedEnabled:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isUsa()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isBrazil()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final onNewsFeedEnabledChange(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->isNewsFeedEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->updateValue()V

    :cond_0
    return-void
.end method

.method private final setValueIfChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final updateValue()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->isNewsFeedSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->isEmptyNewsCategory:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->fetchNewsCategories()LNc/j0;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->setValueIfChanged(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->setValueIfChanged(Z)V

    return-void
.end method


# virtual methods
.method public final addEditModeSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    const-string v0, "editModeLiveData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public final addNewsCategoriesSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    const-string v0, "newsCategoriesLiveData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/f;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
