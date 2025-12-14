.class public final Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateOnGalaxyStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0017\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1",
        "Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;",
        "Lcom/sec/android/app/sbrowser/common/stub/StubData;",
        "data",
        "Ldb/r;",
        "onUpdateCheckFail",
        "(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V",
        "onNoMatchingApplication",
        "onUpdateNotNecessary",
        "onUpdateAvailable",
        "stubData",
        "onGetDownloadUrlFail",
        "onGetDownloadUrlSuccess",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetDownloadUrlFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdateViaPlayStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    :cond_0
    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 1

    const-string v0, "stubData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdateViaPlayStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    :cond_0
    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AboutFragment"

    const-string v0, "onNoMatchingApplication"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdateViaPlayStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->NO_APPLICATION:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v2, "AboutFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "galaxyVer : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setGooglePlayUpdateAvailable(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setUpdateAvailableVersionCode(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void
.end method

.method public onUpdateCheckFail(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 1

    const-string p1, "AboutFragment"

    const-string v0, "onUpdateCheckFail"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdateViaPlayStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->RETRY:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$isNeededInfoSnackbar$p(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f140803

    const/4 v0, -0x1

    invoke-static {p1, v0, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_1
    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AboutFragment"

    const-string v0, "onUpdateNotNecessary"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isGooglePlayUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdateViaPlayStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGalaxyStore$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->NO_UPDATE:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->clearUpdateAvailableVersionCode()V

    return-void
.end method
