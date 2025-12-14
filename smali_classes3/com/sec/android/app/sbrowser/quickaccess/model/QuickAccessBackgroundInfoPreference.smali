.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundInfo:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mBackgroundInfo:Landroidx/lifecycle/X;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "quickaccess_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->getQuickAccessPopupBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->getQuickAccessPopupDividerColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->getQuickAccessPopupItemTitleColor()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->getQuickAccessHomeBackgroundColor()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->updateLiveData(Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V

    return-void
.end method

.method private updateLiveData(Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mBackgroundInfo:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mBackgroundInfo:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getQuickAccessHomeBackgroundColor()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0608c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const-string v1, "quickaccess_home_background_color"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getQuickAccessPopupBackgroundColor()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0608a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const-string v1, "quickaccess_popup_background_color"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getQuickAccessPopupDividerColor()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0608a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const-string v1, "quickaccess_popup_divider_color"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getQuickAccessPopupItemTitleColor()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0608aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const-string v1, "quickaccess_popup_item_title_color"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setBackgroundInfo(Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getPopupBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->setQuickAccessPopupBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getPopupDividerColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->setQuickAccessPopupDividerColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getPopupItemTitleColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->setQuickAccessPopupItemTitleColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getHomeBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->setQuickAccessHomeBackgroundColor(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->updateLiveData(Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V

    return-void
.end method

.method public setQuickAccessHomeBackgroundColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "quickaccess_home_background_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQuickAccessPopupBackgroundColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "quickaccess_popup_background_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQuickAccessPopupDividerColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "quickaccess_popup_divider_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setQuickAccessPopupItemTitleColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "quickaccess_popup_item_title_color"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
