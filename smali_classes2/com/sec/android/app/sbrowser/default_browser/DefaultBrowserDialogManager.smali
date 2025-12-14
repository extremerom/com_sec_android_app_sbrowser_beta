.class Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;
.super Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;
.source "SourceFile"


# static fields
.field private static sSetDefaultDialog:Lm/l;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPositiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->isSupportHotSeatConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserConfigForHotseat;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserConfigForHotseat;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserConfigForNoneHotseat;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserConfigForNoneHotseat;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic c()Lm/l;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->sSetDefaultDialog:Lm/l;

    return-object v0
.end method

.method public static bridge synthetic d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->sSetDefaultDialog:Lm/l;

    return-void
.end method

.method public static isSupportHotSeatConcept(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->isExistingInHotseat(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_SUPPORTED:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getLastShowTimestamp()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserPreferenceUtils;->getLastPopupShowTimestamp(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowingCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserPreferenceUtils;->getPopupShowCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public initializePreference()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserPreferenceUtils;->initPopupPref(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized show()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->sSetDefaultDialog:Lm/l;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v1, 0x7f140eb1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v1, 0x7f140eb0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v2, 0x7f140eaf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v2, 0x7f140eae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v4, 0x7f1501c5

    invoke-direct {v2, v3, v4}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->f:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v2, 0x7f140eac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$3;-><init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mContext:Landroid/content/Context;

    const v2, 0x7f140ead

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$2;-><init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$1;-><init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)V

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->sSetDefaultDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$4;-><init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showIfNeeded(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->showIfNeeded()V

    return-void
.end method

.method public updatePreference()V
    .locals 0

    return-void
.end method
