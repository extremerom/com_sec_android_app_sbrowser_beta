.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;
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


# direct methods
.method public constructor <init>(I)V
    .locals 4

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->mHighContrastMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "pref_content_dark_mode"

    invoke-direct {v1, p1, v3, v2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->mContentDarkMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/t;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/t;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/t;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/t;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;I)V

    invoke-virtual {p0, v1, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->updateValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->mHighContrastMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->updateValue(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public updateValue(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public updateValueIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->mHighContrastMode:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->updateValue(Ljava/lang/Boolean;)V

    return-void
.end method
