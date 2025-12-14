.class public Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string p0, "https://help.content.samsung.com/csweb/auth/gosupport.do?serviceCd=sbrowser"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendSamsungAccountId()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "&saccountID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-object p0
.end method

.method public static getFaqUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;-><init>()V

    const-string v1, "/faq/searchFaq.do"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendJob(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendCountry()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendLanguage()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedbackUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;-><init>()V

    const-string v1, "/ticket/createQuestionTicket.do"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendJob(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendChannel()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendCountry()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendLanguage()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendSamsungAccountId()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->appendDeviceModel()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendChannel()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "&chnlCd=MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendCountry()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "&_common_country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendDeviceModel()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "&dvcModelCd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendJob(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "&targetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendLanguage()Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "&_common_lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "_"

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HelpUrlBuilder;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
