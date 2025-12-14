.class public Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public isNeededToShowSetDefaultCard()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->SET_AS_DEFAULT:Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->needToShowTipCard(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->isSetAsDefaultSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchContactUs()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->getFaqUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "packageName"

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    const-string v3, "61hui97t3t"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    const-string v3, "Internet"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "faqUrl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appServiceLiveChatUrl"

    const-string v2, "https://live-chat-static.sprinklr.com/chat/page/floLbo9_o/index.html?appId=65070e95555aea32e9fb0eda_app_1804875&device=MOBILE&skin=MODERN&enableClose=true&zoom=false"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentUtil;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->getFeedbackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openWebPageInNewTab(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public shouldDisableDebugSettings(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "internet://debug/"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
