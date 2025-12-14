.class public Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private mDebugDefaultValue:Ljava/lang/String;

.field private mDebugKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->DebugPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->mDebugKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->mDebugDefaultValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->mDebugKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->mDebugDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->mDebugKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/DebugListPreference;->mDebugKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
