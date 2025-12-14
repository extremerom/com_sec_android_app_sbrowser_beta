.class public Lcom/samsung/android/knox/sdp/core/SdpException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mErrorCode:I

.field private mTimeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    iput p2, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    return p0
.end method

.method public getTimeout()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return p0
.end method
