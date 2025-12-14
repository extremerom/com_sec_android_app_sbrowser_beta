.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateOnGalaxyStore()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->g(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    :cond_0
    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->g(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    :cond_0
    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    const-string p1, "onNoMatchingApplication"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->g(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->clearUpdateAvailableVersionCode()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doNextUpdateCheck(Z)V

    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getUpdateAvailableVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "candidateVer (-1 : no google play up. version) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "galaxyVer : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->h(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setGooglePlayUpdateAvailable(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setUpdateAvailableVersionCode(Ljava/lang/String;)V

    move-object v0, p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleVersionUpdate with candidateVer "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->f(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    const-string p1, "onUpdateCheckFail"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->g(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    :cond_0
    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    const-string p1, "onUpdateNotNecessary"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$5;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->g(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->clearUpdateAvailableVersionCode()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doNextUpdateCheck(Z)V

    return-void
.end method
