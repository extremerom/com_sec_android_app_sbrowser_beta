.class public Lcom/sec/android/app/sbrowser/public_things/PublicPages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;,
        Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;
    }
.end annotation


# direct methods
.method private static appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string v0, "country"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->b(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "agreement"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->d(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "optional"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->c(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "changes"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateUrl(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->a(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;->a(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->getVersion(Landroid/content/Context;Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVersion(Landroid/content/Context;Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$1;->$SwitchMap$com$sec$android$app$sbrowser$public_things$PublicPages$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestTosVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroVersionUtils;->getLatestPpVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static privacyPolicy()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->PRIVACY_POLICY:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;-><init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZ)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->generateUrl(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static privacyPolicyForAgreement()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->PRIVACY_POLICY:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;-><init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZ)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->generateUrl(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static privacyPolicyForChanges()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->PRIVACY_POLICY:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;-><init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZ)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->generateUrl(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static termsOfService()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->TERMS_OF_SERVICE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;-><init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZ)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->generateUrl(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static termsOfServiceForAgreement()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;

    sget-object v1, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;->TERMS_OF_SERVICE:Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;-><init>(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Type;ZZ)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->generateUrl(Lcom/sec/android/app/sbrowser/public_things/PublicPages$Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
