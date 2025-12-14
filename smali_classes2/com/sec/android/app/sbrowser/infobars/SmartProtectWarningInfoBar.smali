.class public Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mCallback:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;

.field mInfobarShownTime:J

.field mLoadStartedTime:J

.field mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field mOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mOrigin:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mLoadStartedTime:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mCallback:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mInfobarShownTime:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->backToSafety()V

    return-void
.end method

.method private backToSafety()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpagesTemporarily(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpagesTemporarily(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e08ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0ba7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f140fca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b0ba6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mOrigin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140fc7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;)V

    const p0, 0x7f0b02e3

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const v2, 0x7f140fc9

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b02e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f140fc8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0ba4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    invoke-static {v2, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to set button shape enabled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SmartProtectWarningInfoBar"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mCallback:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;->onDismiss()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->hide()V

    return-void
.end method

.method public removeBrowsingDataAfterLoadStarted()V
    .locals 7

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mInfobarShownTime:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mLoadStartedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$2;-><init>(Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;)V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mLoadStartedTime:J

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mInfobarShownTime:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isSecretModeEnabled()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingDataForSuspiciousSite(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;JJZ)Z

    :cond_1
    :goto_0
    return-void
.end method
