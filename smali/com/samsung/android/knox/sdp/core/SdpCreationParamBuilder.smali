.class public Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSdpCreationParamBuilder:Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;

    invoke-direct {v0, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mSdpCreationParamBuilder:Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;

    return-void
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mSdpCreationParamBuilder:Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->convertToOld(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->addPrivilegedApp(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParam()Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mSdpCreationParamBuilder:Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->getParam()Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->convertToNew(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;)Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const/4 v0, 0x0

    const/16 v1, 0x13

    const-class v2, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;

    const-string v3, "getParam"

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/knox/SupportLibUtils;->buildMethodErrorMsg(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
