.class Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/W;"
    }
.end annotation


# instance fields
.field private final mContentDarkMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

.field private final mHighContrastMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

.field private mIsNewQuickAccess:Ljava/lang/Boolean;

.field private mIsReaderMode:Ljava/lang/Boolean;

.field private mIsSecretMode:Ljava/lang/Boolean;

.field private mReaderModeTheme:Ljava/lang/Integer;

.field private final mReaderModeThemeLiveData:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

.field private final mSystemDarkMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Landroidx/lifecycle/W;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "pref_high_contrast_mode"

    invoke-direct {v0, p1, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mHighContrastMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "pref_night_mode"

    invoke-direct {v1, p1, v3, v2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mContentDarkMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    const-string v4, "pref_manage_dark_mode_system_default"

    invoke-direct {v3, p1, v4, v2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mSystemDarkMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "pref_reader_mode_theme"

    invoke-direct {v2, p1, v5, v4}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mReaderModeThemeLiveData:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, v1, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, v3, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, v2, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->onReaderModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private convertReaderTheme()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mReaderModeTheme:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mReaderModeTheme:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->onReaderModeThemeChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->onSecretModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->onNewQuickAccessChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->lambda$new$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private onNewQuickAccessChanged(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsNewQuickAccess:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private onReaderModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsReaderMode:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private onReaderModeThemeChanged(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mReaderModeTheme:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private onSecretModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsSecretMode:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->updateValue()V

    return-void
.end method

.method private updateValue()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsReaderMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsSecretMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsNewQuickAccess:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsSecretMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->mIsReaderMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->convertReaderTheme()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addNewQuickAccessSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public addReaderModeSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public addSecretModeSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
