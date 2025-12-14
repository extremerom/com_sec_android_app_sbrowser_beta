.class Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAgentOption"
.end annotation


# instance fields
.field private mDexUserAgentOption:I

.field private mPhoneUserAgentOption:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->getDefaultUserAgentOption()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->mPhoneUserAgentOption:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->mDexUserAgentOption:I

    return-void
.end method

.method private getDefaultUserAgentOption()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getDesktopWebsiteEnabledForMultiFold()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "UserAgentOption"

    if-ne p0, v1, :cond_1

    const-string p0, "getDefaultUserAgentOption, Desktop, UA_OVERRIDE_TRUE"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-ne p0, v0, :cond_2

    const-string p0, "getDefaultUserAgentOption, Mobile, UA_OVERRIDE_FALSE"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "getDefaultUserAgentOption, Front screen, UA_OVERRIDE_FALSE"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string p0, "getDefaultUserAgentOption, Main screen, UA_OVERRIDE_TRUE"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const-string p0, "UA_OVERRIDE_TRUE"

    return-object p0

    :cond_1
    const-string p0, "UA_OVERRIDE_FALSE"

    return-object p0

    :cond_2
    const-string p0, "UA_OVERRIDE_INHERIT"

    return-object p0
.end method


# virtual methods
.method public getUserAgentOption(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->mDexUserAgentOption:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->mPhoneUserAgentOption:I

    :goto_0
    return p0
.end method

.method public setUserAgentOption(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->mDexUserAgentOption:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager$UserAgentOption;->mPhoneUserAgentOption:I

    :goto_0
    return-void
.end method
