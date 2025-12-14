.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->lambda$showNightModeToast$0(Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method

.method public static colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private static synthetic lambda$showNightModeToast$0(Landroid/content/Context;ILandroid/view/View;)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "host"

    const-string v1, "settings_dark_mode"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public static showNightModeToast(Landroid/content/Context;Landroid/view/View;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f1402bb

    const/4 p2, -0x1

    invoke-static {p0, p2, p1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSetting()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "darkModeSettingIndex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "si__ToolbarUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isSystemNightTheme = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const v0, 0x7f140420

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f140422

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    goto :goto_0

    :cond_2
    const v0, 0x7f140421

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    new-instance v0, Laa/a;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    const p0, 0x7f140052

    invoke-virtual {p1, p0, v0}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, LH6/o;->l()V

    :cond_4
    :goto_1
    const-string p0, "4"

    const-string p1, "201"

    const-string p2, "2462"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
