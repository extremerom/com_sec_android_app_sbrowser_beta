.class public Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiRegister;
.super Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "device/register"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiBaseType;->getParam()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "POST"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "register"

    return-object p0
.end method
