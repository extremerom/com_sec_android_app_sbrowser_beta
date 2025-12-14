.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateOnGooglePlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAvailable(I)V
    .locals 1

    const-string v0, "[Play] onUpdateAvailable"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setUpdateAvailableVersionCode(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setGooglePlayUpdateAvailable(Z)V

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->d(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->f(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpdateCheckFail()V
    .locals 1

    const-string v0, "[Play] onUpdateCheckFail"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$4;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->d(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->clearUpdateAvailableVersionCode()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doNextUpdateCheck(Z)V

    :goto_0
    return-void
.end method
