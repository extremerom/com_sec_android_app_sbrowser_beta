.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mData:[Ljava/lang/String;

.field private mFileAccepts:[[Ljava/lang/String;

.field private mFileNames:[Ljava/lang/String;

.field private mIsShareEncTypeMultipart:Z

.field private mIsShareMethodPost:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 p2, 0x3

    invoke-static {p4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    iput-boolean p5, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareMethodPost:Z

    iput-boolean p6, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareEncTypeMultipart:Z

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    new-array p7, v1, [Ljava/lang/String;

    :goto_0
    iput-object p7, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileNames:[Ljava/lang/String;

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    new-array p8, v1, [[Ljava/lang/String;

    :goto_1
    iput-object p8, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileAccepts:[[Ljava/lang/String;

    return-void
.end method

.method private static replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareMethodPost:Z

    iget-boolean v2, p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareMethodPost:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareEncTypeMultipart:Z

    iget-boolean v2, p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareEncTypeMultipart:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileNames:[Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileNames:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileAccepts:[[Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileAccepts:[[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getFileAccepts()[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileAccepts:[[Ljava/lang/String;

    return-object p0
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mFileNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getParamText()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getParamTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getParamUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p0, p0, v0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mData:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isShareEncTypeMultipart()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareEncTypeMultipart:Z

    return p0
.end method

.method public isShareMethodPost()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->mIsShareMethodPost:Z

    return p0
.end method
