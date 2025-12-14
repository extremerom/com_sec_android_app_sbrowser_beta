.class public Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mId:I

.field private mState:I

.field private mType:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static convertToNew(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>()V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getFlag()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    iput p0, v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    iput p0, v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    iput p0, v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    :goto_0
    return-object v0
.end method

.method private setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    return-void
.end method

.method private setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
