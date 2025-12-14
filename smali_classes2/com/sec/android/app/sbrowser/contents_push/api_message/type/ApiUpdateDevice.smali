.class public Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateDevice;
.super Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->getPushUserId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "device/"

    invoke-static {v0, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "updateDevice"

    return-object p0
.end method
