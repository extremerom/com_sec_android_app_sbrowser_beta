.class public Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field private final mDebugKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->DebugPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;->mDebugKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/BuildConfigUtil;->isDebug()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;->mDebugKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;->mDebugKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
