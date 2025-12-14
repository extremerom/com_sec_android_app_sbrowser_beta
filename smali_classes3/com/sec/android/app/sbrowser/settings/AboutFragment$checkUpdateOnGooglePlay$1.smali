.class public final Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/AboutFragment;->checkUpdateOnGooglePlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1",
        "Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;",
        "Ldb/r;",
        "onUpdateCheckFail",
        "()V",
        "",
        "availableVersion",
        "onUpdateAvailable",
        "(I)V",
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAvailable(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setUpdateAvailableVersionCode(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setGooglePlayUpdateAvailable(Z)V

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$checkUpdateOnGalaxyStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    goto :goto_0

    :cond_0
    const-string v0, "[Play] onUpdateAvailable googleVer : "

    const-string v1, "AboutFragment"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$handleVersionUpdate(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    :goto_0
    return-void
.end method

.method public onUpdateCheckFail()V
    .locals 2

    const-string v0, "AboutFragment"

    const-string v1, "[Play] onUpdateCheckFail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->isPkgAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$checkUpdateOnGalaxyStore(Lcom/sec/android/app/sbrowser/settings/AboutFragment;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$checkUpdateOnGooglePlay$1;->this$0:Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;->NO_UPDATE:Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/AboutFragment;->access$updateViews(Lcom/sec/android/app/sbrowser/settings/AboutFragment;Lcom/sec/android/app/sbrowser/settings/AboutFragment$State;)V

    :goto_0
    return-void
.end method
