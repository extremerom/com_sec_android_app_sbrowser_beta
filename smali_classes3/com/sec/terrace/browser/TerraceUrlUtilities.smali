.class public Lcom/sec/terrace/browser/TerraceUrlUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;
    }
.end annotation


# direct methods
.method public static fixupUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->fixupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/chromium/components/url_formatter/UrlFormatter;->formatUrlForDisplayOmitScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/chromium/net/GURLUtils;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWebUIName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isContentSchemeUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->isContentUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGoogleSearchUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->isGoogleSearchUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOriginLocalhostOrFile(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->isOriginLocalhostOrFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOriginSecure(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->isOriginSecure(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSchemeCryptographic(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->isSchemeCryptographic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTopDomain(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->isTopDomain(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUrlWithinScope(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->isUrlWithinScope(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static removeScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/components/url_formatter/UrlFormatter;->formatUrlForSecurityDisplay(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/TerraceUrlUtilitiesJni;->get()Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;->urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
