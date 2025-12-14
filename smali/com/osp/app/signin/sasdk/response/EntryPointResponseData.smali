.class public Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAcsChnl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acsChnl"
    .end annotation
.end field

.field private mChangePasswordURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changePasswordURI"
    .end annotation
.end field

.field private mChkDoNum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chkDoNum"
    .end annotation
.end field

.field private mConfirmPasswordURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirmPasswordURI"
    .end annotation
.end field

.field private mPbeKySpcIters:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pbeKySpcIters"
    .end annotation
.end field

.field private mPkiPublicKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkiPublicKey"
    .end annotation
.end field

.field private mSignInURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signInURI"
    .end annotation
.end field

.field private mSignOutURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signOutURI"
    .end annotation
.end field

.field private mSignUpURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signUpURI"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcsChnl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mAcsChnl:Ljava/lang/String;

    return-object p0
.end method

.method public getChangePasswordURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mChangePasswordURI:Ljava/lang/String;

    return-object p0
.end method

.method public getChkDoNum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mChkDoNum:Ljava/lang/String;

    return-object p0
.end method

.method public getConfirmPasswordURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mConfirmPasswordURI:Ljava/lang/String;

    return-object p0
.end method

.method public getPbeKySpcIters()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mPbeKySpcIters:Ljava/lang/String;

    return-object p0
.end method

.method public getPkiPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mPkiPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSignInURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mSignInURI:Ljava/lang/String;

    return-object p0
.end method

.method public getSignOutURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mSignOutURI:Ljava/lang/String;

    return-object p0
.end method

.method public getSignUpURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mSignUpURI:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signOutURI : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mSignOutURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chkDoNum : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mChkDoNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signInURI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mSignInURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acsChnl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mAcsChnl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " confirmPasswordURI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mConfirmPasswordURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signUpURI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mSignUpURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkiPublicKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mPkiPublicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changePasswordURI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mChangePasswordURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pbeKySpcIters : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/response/EntryPointResponseData;->mPbeKySpcIters:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
