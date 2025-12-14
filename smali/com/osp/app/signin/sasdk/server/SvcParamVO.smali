.class public Lcom/osp/app/signin/sasdk/server/SvcParamVO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBirthDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthDate"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientId"
    .end annotation
.end field

.field private mCodeChallenge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code_challenge"
    .end annotation
.end field

.field private mCodeChallengeMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code_challenge_method"
    .end annotation
.end field

.field private mCompetitorDeviceYNFlag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "competitorDeviceYNFlag"
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryCode"
    .end annotation
.end field

.field private mDeviceInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceInfo"
    .end annotation
.end field

.field private mDeviceModelID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceModelID"
    .end annotation
.end field

.field private mDeviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceName"
    .end annotation
.end field

.field private mDeviceOSVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceOSVersion"
    .end annotation
.end field

.field private mDevicePhysicalAddressText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "devicePhysicalAddressText"
    .end annotation
.end field

.field private mDeviceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceType"
    .end annotation
.end field

.field private mDeviceUniqueID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceUniqueID"
    .end annotation
.end field

.field private mFirstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstName"
    .end annotation
.end field

.field private mLastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastName"
    .end annotation
.end field

.field private mRedirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redirect_uri"
    .end annotation
.end field

.field private mReplaceableClientConnectYN:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replaceableClientConnectYN"
    .end annotation
.end field

.field private mReplaceableClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replaceableClientId"
    .end annotation
.end field

.field private mReplaceableDevicePhysicalAddressText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replaceableDevicePhysicalAddressText"
    .end annotation
.end field

.field private mResponseEncryptionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseEncryptionType"
    .end annotation
.end field

.field private mResponseEncryptionYNFlag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseEncryptionYNFlag"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field private mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field private mSvcIptLgnID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "svcIptLgnID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBirthDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mBirthDate:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setCodeChallenge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mCodeChallenge:Ljava/lang/String;

    return-void
.end method

.method public setCodeChallengeMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mCodeChallengeMethod:Ljava/lang/String;

    return-void
.end method

.method public setCompetitorDeviceYNFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mCompetitorDeviceYNFlag:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDeviceInfo:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModelID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDeviceModelID:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceOSVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDeviceOSVersion:Ljava/lang/String;

    return-void
.end method

.method public setDevicePhysicalAddressText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDevicePhysicalAddressText:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mDeviceUniqueID:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mFirstName:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mLastName:Ljava/lang/String;

    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mRedirectUri:Ljava/lang/String;

    return-void
.end method

.method public setReplaceableClientConnectYN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mReplaceableClientConnectYN:Ljava/lang/String;

    return-void
.end method

.method public setReplaceableClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mReplaceableClientId:Ljava/lang/String;

    return-void
.end method

.method public setReplaceableDevicePhysicalAddressText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mReplaceableDevicePhysicalAddressText:Ljava/lang/String;

    return-void
.end method

.method public setResponseEncryptionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mResponseEncryptionType:Ljava/lang/String;

    return-void
.end method

.method public setResponseEncryptionYNFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mResponseEncryptionYNFlag:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mScope:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mState:Ljava/lang/String;

    return-void
.end method

.method public setSvcIptLgnID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/server/SvcParamVO;->mSvcIptLgnID:Ljava/lang/String;

    return-void
.end method
