.class public Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mLinkifyString:Ljava/lang/String;

.field mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

.field mLinkifyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkBrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "("

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const-string v0, ")"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    sub-int/2addr p0, v0

    const-string v0, ""

    if-lez p0, :cond_0

    const-string p0, "\\("

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "\\)"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$1;->$SwitchMap$com$sec$android$app$sbrowser$tab_navigation$UrlLinkify$LinkifyType:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "Linkify"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const-string v4, "android.intent.action.VIEW"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createIntent - Invalid linkify type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "geo:0,0?q="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    if-nez v0, :cond_4

    const-string p0, "createIntent - intent == null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    return-object v0
.end method

.method private getType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;
    .locals 0

    const-string p0, "tel:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->TELEPHONY:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    return-object p0

    :cond_0
    const-string p0, "sms:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->SMS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    return-object p0

    :cond_1
    const-string p0, "mailto:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->EMAIL:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    return-object p0

    :cond_2
    const-string p0, "geo:0,0?q="

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->ADDRESS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "%20"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$1;->$SwitchMap$com$sec$android$app$sbrowser$tab_navigation$UrlLinkify$LinkifyType:[I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, ":"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseUrl - Invalid linkify type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Linkify"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private performLinkifyAction()V
    .locals 7

    const-string v0, "Linkify"

    const-string v1, "Cannot get the application enabled setting  Invalid package name: "

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->createIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v4

    :goto_0
    if-eq v1, v4, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mContext:Landroid/content/Context;

    const v1, 0x7f1400e2

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "onClick on LinkifyMenuAction Dialog ActivityNotFoundExceptionoccured"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public linkify(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->getType(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->checkBrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->performLinkifyAction()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->mLinkifyType:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "201"

    const-string v0, "2181"

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
