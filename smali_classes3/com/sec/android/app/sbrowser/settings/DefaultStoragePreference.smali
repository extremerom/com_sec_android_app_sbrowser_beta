.class public Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;
.super Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mClickListenerCustom:Lw2/n;

.field mIsBroadcastRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;-><init>(Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const p1, 0x7f0e088e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f030037

    goto :goto_0

    :cond_0
    const p1, 0x7f030036

    goto :goto_0

    :cond_1
    const p1, 0x7f030035

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->setEntries(I)V

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-super {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method

.method private isSdCardValid()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mIsBroadcastRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mIsBroadcastRegistered:Z

    return-void
.end method

.method private sendSALoggingEvent(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140c93

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadPathDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSALoggingStatus(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f140d57

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadPathDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPersistedInt(I)I
    .locals 0

    const-string p1, "PHONE"

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MEMORY_CARD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result v2

    const-string v3, "/"

    const-string v4, "\n"

    if-nez v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mounted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->isSdCardValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->registerBroadcastReceiver()V

    return-void
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 4
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->isSdCardValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v3, 0x1020018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v2, 0x7f0b0e5f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f060296

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0803a0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->onBindViewHolder(Lw2/H;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/h1;->setIsRecyclable(Z)V

    return-void
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->unregisterBroadcastReceiver()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadDefaultStorage(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    const-string p1, "MEMORY_CARD"

    goto :goto_1

    :cond_1
    const-string p1, "PHONE"

    :goto_1
    const-string v0, "User selected"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadStaticLog;->addStorageSetLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultInternalDownloadPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultExternalDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDownloadSaveAsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->sendSALoggingEvent(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->sendSALoggingStatus(Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->isSdCardValid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mClickListenerCustom:Lw2/n;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lw2/n;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->onClick()V

    const/4 p0, 0x1

    return p0
.end method

.method public persistInt(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "MEMORY_CARD"

    goto :goto_0

    :cond_0
    const-string p1, "PHONE"

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Lw2/n;)V
    .locals 0
    .param p1    # Lw2/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mClickListenerCustom:Lw2/n;

    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mIsBroadcastRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->mIsBroadcastRegistered:Z

    return-void
.end method

.method public updateView()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->isSdCardValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getDownloadDefaultStorage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY_CARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->setDownloadDefaultStorage(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
