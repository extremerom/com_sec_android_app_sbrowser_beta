.class public abstract Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;


# instance fields
.field private mBodyBytes:[B

.field private mParam:Ljava/lang/String;

.field private mPushUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mPushUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mParam:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mBodyBytes:[B

    return-void
.end method


# virtual methods
.method public getBodyBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mBodyBytes:[B

    return-object p0
.end method

.method public getParam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mParam:Ljava/lang/String;

    return-object p0
.end method

.method public getPushUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mPushUserId:Ljava/lang/String;

    return-object p0
.end method

.method public rawString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->getBodyBytes()[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "empty"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->getBodyBytes()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getName()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngetPushUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngetMethod()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngetApi()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getApi()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\ngetBodyBytes()="

    invoke-static {v1, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setPushUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->mPushUserId:Ljava/lang/String;

    return-void
.end method
