.class public Lorg/chromium/components/search_engines/TemplateUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/search_engines/TemplateUrl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/MockedInTests;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mTemplateUrlPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/search_engines/TemplateUrl;->mTemplateUrlPtr:J

    return-void
.end method

.method private static create(J)Lorg/chromium/components/search_engines/TemplateUrl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/search_engines/TemplateUrl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/search_engines/TemplateUrl;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/chromium/components/search_engines/TemplateUrl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/chromium/components/search_engines/TemplateUrl;

    iget-wide v2, p0, Lorg/chromium/components/search_engines/TemplateUrl;->mTemplateUrlPtr:J

    iget-wide p0, p1, Lorg/chromium/components/search_engines/TemplateUrl;->mTemplateUrlPtr:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIsPrepopulated()Z
    .locals 3

    invoke-static {}, Lorg/chromium/components/search_engines/TemplateUrlJni;->get()Lorg/chromium/components/search_engines/TemplateUrl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/search_engines/TemplateUrl;->mTemplateUrlPtr:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/search_engines/TemplateUrl$Natives;->isPrepopulatedOrDefaultProviderByPolicy(J)Z

    move-result p0

    return p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/components/search_engines/TemplateUrlJni;->get()Lorg/chromium/components/search_engines/TemplateUrl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/search_engines/TemplateUrl;->mTemplateUrlPtr:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/search_engines/TemplateUrl$Natives;->getKeyword(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/components/search_engines/TemplateUrlJni;->get()Lorg/chromium/components/search_engines/TemplateUrl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/search_engines/TemplateUrl;->mTemplateUrlPtr:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/search_engines/TemplateUrl$Natives;->getShortName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lorg/chromium/components/search_engines/TemplateUrl;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/components/search_engines/TemplateUrl;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/components/search_engines/TemplateUrl;->getIsPrepopulated()Z

    move-result p0

    const-string v2, "TemplateURL -- keyword: "

    const-string v3, ", short name: "

    const-string v4, ", prepopulated: "

    invoke-static {v2, v0, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
