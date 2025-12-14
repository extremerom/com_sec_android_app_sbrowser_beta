.class public Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOmitProtocolAndPort:Z

.field private final mOrigin:Ljava/lang/String;

.field private final mScheme:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mHost:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOmitProtocolAndPort:Z

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "[*.]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-direct {v1, v0, v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/16 v3, 0x50

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_4
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-direct {v1, v0, v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method private getDomainAndRegistry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSubdomainsList()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    new-array p0, v2, [Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mHost:Ljava/lang/String;

    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    if-le p0, v0, :cond_2

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method private static trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getDomainAndRegistry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iget-object v4, p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-nez v4, :cond_3

    move v0, v2

    :cond_3
    if-eq v3, v0, :cond_5

    if-nez v1, :cond_4

    const/4 v2, -0x1

    :cond_4
    return v2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getSubdomainsList()[Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getSubdomainsList()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    sub-int/2addr v0, v2

    array-length v1, p1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v0, :cond_8

    if-ltz v1, :cond_8

    add-int/lit8 v2, v0, -0x1

    aget-object v0, p0, v0

    add-int/lit8 v3, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_8
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->compareTo(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->compareTo(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOmitProtocolAndPort:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOmitProtocolAndPort:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mOrigin:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mScheme:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->mHost:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method
