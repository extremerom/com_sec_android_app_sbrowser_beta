.class public Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeedFetchParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters$Builder;
    }
.end annotation


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mIsFastFetchMode:Z

.field private mMilestone:Ljava/lang/String;

.field private mPlatform:I

.field private mRestrictMode:Ljava/lang/String;


# direct methods
.method public static bridge synthetic a(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mIsFastFetchMode:Z

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mMilestone:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mPlatform:I

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mRestrictMode:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getPlatform()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getPlatform()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getIsFastFetchMode()Z

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getIsFastFetchMode()Z

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getMilestone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getMilestone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getRestrictMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getRestrictMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getIsFastFetchMode()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mIsFastFetchMode:Z

    return p0
.end method

.method public getMilestone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mMilestone:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatform()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mPlatform:I

    return p0
.end method

.method public getRestrictMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mRestrictMode:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mPlatform:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mRestrictMode:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mMilestone:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mChannel:Ljava/lang/String;

    iget-boolean p0, p0, Lorg/chromium/components/variations/firstrun/VariationsSeedFetcher$SeedFetchParameters;->mIsFastFetchMode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
