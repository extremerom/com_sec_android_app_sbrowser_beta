.class public Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;
.implements Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;
.implements Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$CookieDataClearedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;
    }
.end annotation


# instance fields
.field private mAdBlocker:Landroid/widget/TextView;

.field private mAnchor:Landroid/view/View;

.field private mBridge:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;

.field private mConnectionMessage:Landroid/widget/TextView;

.field private mConnectionStatus:Landroid/widget/TextView;

.field private mConnectionUrl:Landroid/widget/TextView;

.field private mContainer:Landroidx/core/widget/NestedScrollView;

.field private mContext:Landroid/content/Context;

.field private mCookie:Landroid/widget/TextView;

.field private mCookieControlObserver:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;

.field private mCookieDelete:Landroid/widget/ImageView;

.field private mDeleteCookieDialog:Lm/l;

.field private mDialog:Lm/l;

.field private mDialogBuilder:Lm/k;

.field private mDialogImage:Landroid/widget/ImageView;

.field private mDivider:Landroid/widget/LinearLayout;

.field private mFullUrl:Ljava/lang/String;

.field private mIsSecretMode:Z

.field private mPermissionBtnCamera:Landroidx/appcompat/widget/SwitchCompat;

.field private mPermissionBtnLocation:Landroidx/appcompat/widget/SwitchCompat;

.field private mPermissionBtnMic:Landroidx/appcompat/widget/SwitchCompat;

.field private mPermissionBtnNotifications:Landroidx/appcompat/widget/SwitchCompat;

.field private mPermissionLayoutCamera:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPermissionLayoutLocation:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPermissionLayoutMic:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPermissionLayoutNotifications:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSATView:Landroid/widget/TextView;

.field private mScreenId:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTemporarilyBlockedView:Landroid/widget/TextView;

.field private mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

.field private mTruncatedUrlViewOnly:Ljava/lang/String;

.field private mWebSiteCamera:Lcom/sec/android/app/sbrowser/settings/website/Website;

.field private mWebSiteLocation:Lcom/sec/android/app/sbrowser/settings/website/Website;

.field private mWebSiteMic:Lcom/sec/android/app/sbrowser/settings/website/Website;

.field private mWebSiteNotifications:Lcom/sec/android/app/sbrowser/settings/website/Website;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$showDeleteCookieDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$show$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$show$0(Landroid/view/View;)V

    return-void
.end method

.method private clearWebSiteCookieData()V
    .locals 3

    const-string v0, "PrivacyInfoDialog"

    const-string v1, "clearWebSiteCookieData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mBridge:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mFullUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;->clearCookiesData(Ljava/lang/String;ZLcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$CookieDataClearedCallback;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchAllPreferences()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$show$3(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$showDeleteCookieDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$show$4(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->lambda$show$2(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private getNotificationPermissionString()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14083b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "android.permission-group.NOTIFICATIONS"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUrlConnectionMessage()V
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTruncatedUrlViewOnly:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->didAttemptToUpgradeToHTTPS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140aa5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTruncatedUrlViewOnly:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140aa4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private getWebsiteInfoFetcher()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$3;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchPushNotificationPreferences()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$4;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mIsSecretMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchLocationPreferences(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$5;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mIsSecretMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchCameraPreferences(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mIsSecretMode:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchMicPreferences(Z)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mBridge:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isConnectionDetailsLinkVisible()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSecurityLevel:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecureConnection()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSecurityLevel:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mFullUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnCamera:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method private synthetic lambda$show$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->showDeleteCookieDialog()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$1(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnNotifications:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteNotifications:Lcom/sec/android/app/sbrowser/settings/website/Website;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionEmbargoed()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnNotifications:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnNotifications:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteNotifications:Lcom/sec/android/app/sbrowser/settings/website/Website;

    const-string v2, "Notifications"

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setPermissionWithLogging(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->updatePermissionAutoBlockUI()V

    if-eqz p1, :cond_0

    const-string p0, "201"

    const-string p1, "5238"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$2(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnLocation:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnLocation:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteLocation:Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setPermissionWithLogging(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$3(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnMic:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnMic:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteMic:Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setPermissionWithLogging(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$4(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnCamera:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnCamera:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteCamera:Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setPermissionWithLogging(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDeleteCookieDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mScreenId:Ljava/lang/String;

    const-string p1, "2802"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showDeleteCookieDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->clearWebSiteCookieData()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mScreenId:Ljava/lang/String;

    const-string p1, "2801"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnLocation:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnMic:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method private needToShowSAT()Z
    .locals 3

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mIsSecretMode:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnNotifications:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Lcom/sec/terrace/TerraceConnectionInfoPopup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Lcom/sec/android/app/sbrowser/settings/website/Website;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteCamera:Lcom/sec/android/app/sbrowser/settings/website/Website;

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Lcom/sec/android/app/sbrowser/settings/website/Website;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteLocation:Lcom/sec/android/app/sbrowser/settings/website/Website;

    return-void
.end method

.method private setColorForResources()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060811

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionUrl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060813

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionMessage:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f06080c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setConnectionStatusTextAndImage()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->isSecureConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionStatus:Landroid/widget/TextView;

    const v1, 0x7f14087b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialogImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0802f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionStatus:Landroid/widget/TextView;

    const v1, 0x7f14087c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialogImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0802f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTruncatedUrlViewOnly:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTruncatedUrlViewOnly:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    const v4, 0x7f060812

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSecurityLevel:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_1

    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v1, v3, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    const v4, 0x7f06080d

    :goto_1
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTruncatedUrlViewOnly:Ljava/lang/String;

    const-string v5, "http://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionUrl:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionUrl:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->getUrlConnectionMessage()V

    return-void
.end method

.method private setPermissionWithLogging(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPermissionWithLogging of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> set to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyInfoDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setPermissionContentSetting(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_2

    const-string p3, "On"

    goto :goto_1

    :cond_2
    const-string p3, "Off"

    :goto_1
    const-string v0, "det"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "cat"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mScreenId:Ljava/lang/String;

    const-string p2, "2803"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private setPrivacyData()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->updateTrackingData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->updateAdBlockerInfo()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->updatePermissionInfo()V

    return-void
.end method

.method private showDeleteCookieDialog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDeleteCookieDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mScreenId:Ljava/lang/String;

    const-string v1, "2800"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1502e8

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140a9f

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f140a9e

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/page_info/c;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;I)V

    const v2, 0x7f1402ac

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/page_info/c;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;I)V

    const v2, 0x7f14004e

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDeleteCookieDialog:Lm/l;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDeleteCookieDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Lcom/sec/android/app/sbrowser/settings/website/Website;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteMic:Lcom/sec/android/app/sbrowser/settings/website/Website;

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Lcom/sec/android/app/sbrowser/settings/website/Website;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteNotifications:Lcom/sec/android/app/sbrowser/settings/website/Website;

    return-void
.end method

.method private updateAdBlockerInfo()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getCurrentTemporarilyUnblockAds(Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getNumberOfBlockedContents()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mAdBlocker:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120040

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mAdBlocker:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePermissionAutoBlockUI()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mWebSiteNotifications:Lcom/sec/android/app/sbrowser/settings/website/Website;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionEmbargoed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTemporarilyBlockedView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTemporarilyBlockedView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePermissionInfo()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->isSecureConnection()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceConnectionInfoPopup;->getPermissions()[Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->getWebsiteInfoFetcher()V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "permission type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PrivacyInfoDialog"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isWebPushFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutNotifications:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->isAccessiblePermission(Landroid/util/Pair;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutLocation:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->isAccessiblePermission(Landroid/util/Pair;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutMic:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->isAccessiblePermission(Landroid/util/Pair;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutCamera:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDivider:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private updateTrackingData()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->needToShowSAT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getTotalBlockedTrackerRequestCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSATView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140aa3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSATView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120042

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSATView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->updatePermissionAutoBlockUI()V

    return-void
.end method


# virtual methods
.method public addCertificateSection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addDescriptionSection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dismissDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDeleteCookieDialog:Lm/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDeleteCookieDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDeleteCookieDialog:Lm/l;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    :cond_1
    return-void
.end method

.method public isAccessiblePermission(Landroid/util/Pair;)Z
    .locals 1

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->isContentSettingEnabled(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onCookieDataCleared()V
    .locals 2

    const-string v0, "PrivacyInfoDialog"

    const-string v1, "onCookieDataCleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookie:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140a9d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCookiesCountChanged(I)V
    .locals 4

    const-string v0, "onCookiesCountChanged : "

    const-string v1, "PrivacyInfoDialog"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookie:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140a9d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120041

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f14095a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookie:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mIsSecretMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0582

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b090d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialogImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0908

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0909

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionUrl:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b090b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mConnectionMessage:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mIsSecretMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0915

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSATView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookie:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/app/sbrowser/page_info/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/page_info/a;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f14043a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f14095a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieDelete:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookie:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140a9d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mAdBlocker:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b090f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDivider:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0913

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutNotifications:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTemporarilyBlockedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnNotifications:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutNotifications:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/page_info/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/page_info/a;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->getNotificationPermissionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0911

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutLocation:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnLocation:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "android.permission-group.LOCATION"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutLocation:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/sec/android/app/sbrowser/page_info/b;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v1, v5}, Lcom/sec/android/app/sbrowser/page_info/b;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v3, 0x7f0b08b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0912

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutMic:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnMic:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "android.permission-group.MICROPHONE"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutMic:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/sec/android/app/sbrowser/page_info/b;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v1, v5}, Lcom/sec/android/app/sbrowser/page_info/b;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v3, 0x7f0b08b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0910

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutCamera:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b08bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionBtnCamera:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "android.permission-group.CAMERA"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mPermissionLayoutCamera:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/sec/android/app/sbrowser/page_info/b;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v1, v5}, Lcom/sec/android/app/sbrowser/page_info/b;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    const v3, 0x7f0b08b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mFullUrl:Ljava/lang/String;

    const-string v2, "PrivacyInfoDialog"

    if-nez v1, :cond_3

    const-string p0, "getUrl returns null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mFullUrl:Ljava/lang/String;

    const/16 v3, 0xc7

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mFullUrl:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTruncatedUrlViewOnly:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/terrace/TerraceSecurityStateModel;->getSecurityLevelForWebContents(Lcom/sec/terrace/Terrace;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSecurityLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mSecurityLevel : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mSecurityLevel:I

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->isConnectionDetailsLinkVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup;->create(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;)Lcom/sec/terrace/TerraceConnectionInfoPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setConnectionStatusTextAndImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setColorForResources()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->setPrivacyData()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTerraceConnectionInfoPopup:Lcom/sec/terrace/TerraceConnectionInfoPopup;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->showDialog()V

    :cond_6
    return-void
.end method

.method public showDialog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mCookieControlObserver:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;

    new-instance v1, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;

    invoke-direct {v1, p0, v0}, Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge$TerraceCookieControlsObserver;Lcom/sec/terrace/Terrace;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mBridge:Lcom/sec/terrace/browser/browsing_data/TerraceCookieControlsBridge;

    new-instance v0, Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContainer:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f140aa1

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$1;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    const v2, 0x7f1402ad

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialogBuilder:Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    new-instance v1, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$2;-><init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mAnchor:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
