.class public Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mErrorCode:I

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mResponseCode:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mErrorCode:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mTimeout:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mErrorCode:I

    return p0
.end method

.method public getTimeout()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mTimeout:I

    return p0
.end method

.method public isOK()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mResponseCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setErrorCode(I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mResponseCode:I

    iput p1, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mErrorCode:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/sdp/internal/SdpEngineResponse;->mTimeout:I

    return-void
.end method
