.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"


# instance fields
.field private mIsVisible:Z

.field private final mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMoreMenu:Landroid/widget/PopupMenu;

.field private final mMoreMenuDismissListener:Landroid/widget/PopupMenu$OnDismissListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenuDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/h;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/h;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->lambda$new$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mIsVisible:Z

    return-void
.end method

.method private getPlaybackSpeedMenuText()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPlaybackRateViewVisibility()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    const v0, 0x7f14073e

    goto :goto_0

    :cond_0
    const v0, 0x7f14073f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f140d17

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->runShareUrl()V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->runAmbientMode()V

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPlaybackRateViewVisibility()Z

    move-result p1

    if-eqz p1, :cond_0

    const v1, 0x7f140d0c

    goto :goto_0

    :cond_0
    const v1, 0x7f140d18

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPlaybackRateViewVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updatePlaybackSpeedControl()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f140d16

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->runSaveVideo()V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->runExtensionContainerItem()V

    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b06f7 -> :sswitch_4
        0x7f0b06f8 -> :sswitch_3
        0x7f0b0733 -> :sswitch_2
        0x7f0b0737 -> :sswitch_1
        0x7f0b0738 -> :sswitch_0
    .end sparse-switch
.end method

.method private runAmbientMode()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isAmbientModeSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->setAmbientModeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private runExtensionContainerItem()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    const-string v1, "six-lc-fullscreen-00"

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object v0

    sget-object v2, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    sget-object v2, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private runSaveVideo()V
    .locals 2

    const-string v0, "[MM]MPFullscreenMore"

    const-string v1, "runSaveVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private runShareUrl()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getPageTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "theme"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "WEBPAGE"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->checkScreenSharingSupported(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_SUPPORT_ALL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->checkScreenSharingSupported(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lcom/sec/sbrowser/spl/wrapper/MajoScreenSharingField;->SCREEN_SHARING_SUPPORT_MIRRORING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_0

    :catch_0
    :cond_1
    move v1, v3

    move v4, v1

    :goto_0
    if-lez v1, :cond_2

    const-string v5, "more_actions_screen_mirroring"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-le v4, v3, :cond_3

    const-string v1, "more_actions_change_player"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->noUserAction()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x300

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[MM]MPFullscreenMore"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateAmbientModeVisibility(Landroid/view/MenuItem;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isAmbientModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isContentFlexMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f140727

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f140729

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method private updateExtensionContainer(Landroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    const-string v1, "six-lc-fullscreen-00"

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->NONE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f14072b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f14073d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private updatePlaybackRateViewVisibility(Landroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveStream()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isPlaybackSpeedEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->getPlaybackSpeedMenuText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private updateSaveVideoItemVisibility(Landroid/view/MenuItem;)V
    .locals 3

    const-string v0, "updateSaveVideoItemVisibility"

    const-string v1, "[MM]MPFullscreenMore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "controllerClient.isMSE() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isMSE()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isMSE()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isDownloadableVideoUrl()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayTypeMain(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x0

    const v6, 0x7f150276

    const v4, 0x800005

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f150277

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f15025e

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    new-instance v1, Landroid/widget/PopupMenu;

    const v2, 0x800005

    invoke-direct {v1, v0, p1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f100016

    invoke-virtual {p1, v1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenuDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mIsVisible:Z

    return-void
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mIsVisible:Z

    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->updateAmbientModeVisibility(Landroid/view/MenuItem;)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->updatePlaybackRateViewVisibility(Landroid/view/MenuItem;)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->updateSaveVideoItemVisibility(Landroid/view/MenuItem;)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->updateExtensionContainer(Landroid/view/MenuItem;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mIsVisible:Z

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b06f7 -> :sswitch_3
        0x7f0b06f8 -> :sswitch_2
        0x7f0b0733 -> :sswitch_1
        0x7f0b0737 -> :sswitch_0
    .end sparse-switch
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mIsVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMoreMenu;->mMoreMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :goto_0
    return-void
.end method
