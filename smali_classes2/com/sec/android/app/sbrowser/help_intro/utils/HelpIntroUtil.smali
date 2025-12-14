.class public Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->onClickLinkedText(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/app/Activity;Landroid/text/TextPaint;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->updateDrawState(Landroid/app/Activity;Landroid/text/TextPaint;)V

    return-void
.end method

.method public static combineAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1400d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f1400cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createTermsForSiActivatedLogging(Landroid/content/Context;JJ)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->create()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->setTos(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p4}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->setPn(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms$Builder;->build()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;

    move-result-object p0

    return-object p0
.end method

.method public static getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 3

    const-string v0, "%1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ""

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$2;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/16 p0, 0x21

    invoke-virtual {v2, p1, v0, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, p1, v0, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$3;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$4;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$4;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$StartEndTagItem;

    const-string p3, "%1$s"

    const-string v1, "%2$s"

    invoke-direct {p0, p3, v1, v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$StartEndTagItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$StartEndTagItem;

    const-string v0, "%3$s"

    const-string v1, "%4$s"

    invoke-direct {p3, v0, v1, p2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$StartEndTagItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;-><init>()V

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->append(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->append(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->toSpannable(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionPageState(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "permission_page_state"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPpAgreementTime(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameTimePp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPrivacyPolicyUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isChina(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicy()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicyForAgreement()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getRegionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "ETC"

    return-object p0

    :pswitch_0
    const-string p0, "PDPD"

    return-object p0

    :pswitch_1
    const-string p0, "LatinAmerica"

    return-object p0

    :pswitch_2
    const-string p0, "KVKK"

    return-object p0

    :pswitch_3
    const-string p0, "LGPD"

    return-object p0

    :pswitch_4
    const-string p0, "India"

    return-object p0

    :pswitch_5
    const-string p0, "China"

    return-object p0

    :pswitch_6
    const-string p0, "Korea"

    return-object p0

    :pswitch_7
    const-string p0, "US"

    return-object p0

    :pswitch_8
    const-string p0, "GDPR"

    return-object p0

    :pswitch_9
    const-string p0, "NonGDPR"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_9
        0x32 -> :sswitch_8
        0x33 -> :sswitch_7
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x39 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSavedPpVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameVersionPp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0.0.0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSavedTosVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameVersionTos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0.0.0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTermsOfServiceUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isChina(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->termsOfService()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->termsOfServiceForAgreement()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTosAgreementTime(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameTimeTos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAgreementNeeded(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isChina(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHelpIntroNeeded(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isAgreementNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isMinorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowPermissionPage(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMajorUpdate(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isPpMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isTosMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isMinorUpdate(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isPpMinorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isTosMinorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMinorViewEvenRegionChanged(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isPpNewRegion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "privacy_policy_version_1"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isNewRegion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNewRegion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getSavedEntries(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isPpMajorUpdate(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getSavedPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isVersionUpdateNeeded(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Legal] PP Major Update, Country ISO: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getRegionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Saved PP Version: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Latest PP Version:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HelpIntroUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public static isPpMinorUpdate(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getSavedPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isVersionUpdateNeeded(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Legal] PP Minor Update, Country ISO: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getRegionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Saved PP Version: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Latest PP Version:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HelpIntroUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private static isPpNewRegion(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameVersionPp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isNewRegion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Legal] PP New Region, Country ISO: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getRegionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HelpIntroUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static isSatNoticeShown(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "anti_tracking_notice_shown"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isTheSameRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTosMajorUpdate(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getSavedTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isVersionUpdateNeeded(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Legal] TOS Major Update, Country ISO: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getRegionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Saved TOS Version: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Latest TOS Version:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HelpIntroUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public static isTosMinorUpdate(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getSavedTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isVersionUpdateNeeded(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Legal] TOS Minor Update, Country ISO: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getRegionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Saved TOS Version: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Latest TOS Version:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HelpIntroUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private static isTosNewRegion(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameVersionTos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isNewRegion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Legal] TOS New Region, Country ISO: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getRegionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HelpIntroUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private static isVersionUpdateNeeded(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isTheSameRegion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMajorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getMinorVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    const-string p0, "HelpIntroUtil"

    const-string p1, "[Legal] version check exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static makePreferenceNameTimePp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "privacy_policy_agree_time_"

    invoke-static {v0, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makePreferenceNameTimeTos(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "terms_of_service_agree_time_"

    invoke-static {v0, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makePreferenceNameVersionPp(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "privacy_policy_version_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makePreferenceNameVersionTos(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "terms_of_service_version_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getRegionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onClickLinkedText(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/custom_tab_intent/CustomTabIntentUtil;->openInternalCustomTab(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method

.method public static recordSatNoticeShown(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "anti_tracking_notice_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveAgreement(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveUpdatedVersions(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveAgreementTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->getInstance()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;

    move-result-object v2

    invoke-static {p0, v0, v1, v0, v1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->createTermsForSiActivatedLogging(Landroid/content/Context;JJ)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->activated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "server_upload_done"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveAgreementTime(Landroid/content/Context;)J
    .locals 11

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameTimeTos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameTimePp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v7, v7, v5

    const-string v8, "HelpIntroUtil"

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "[Legal] Save Terms of Service. name: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-interface {v0, p0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v9, v5

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[Legal] Save Privacy Policy. name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-wide v2
.end method

.method public static saveAgreementUpdate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HelpIntroUtil"

    const-string v1, "saveAgreementUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveUpdatedVersions(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveAgreementTime(Landroid/content/Context;)J

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->uploadLegacyData(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->recordSatNoticeShown(Landroid/content/Context;)V

    return-void
.end method

.method public static saveUpdatedVersions(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Legal] Save Version. Country: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Terms Of Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Privacy Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HelpIntroUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameVersionTos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->makePreferenceNameVersionPp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPermissionPageState(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "permission_page_state"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static shouldShowFullFTU(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->isTheFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isPpNewRegion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isTosNewRegion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlAgreeRequired(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static shouldShowPermissionPage(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getPermissionPageState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static updateDrawState(Landroid/app/Activity;Landroid/text/TextPaint;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    const v1, 0x7f140df9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v0, 0x7f06045a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static uploadLegacyData(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->getInstance()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getTosAgreementTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getPpAgreementTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->createTermsForSiActivatedLogging(Landroid/content/Context;JJ)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->activated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "server_upload_done"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static uploadLegacyDataIfNeeded(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server_upload_done"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->uploadLegacyData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
