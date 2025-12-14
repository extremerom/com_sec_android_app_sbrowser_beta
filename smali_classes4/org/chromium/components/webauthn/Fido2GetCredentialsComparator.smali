.class public Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;,
        Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$SuccessState;,
        Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$Factory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

.field private mIsGoogleRp:Z

.field private mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mIsGoogleRp:Z

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;-><init>(Z)V

    return-void
.end method

.method private getSuccessState()I
    .locals 1
    .annotation build Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$SuccessState;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-boolean v0, v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful:Z

    return p0
.end method

.method private performComparison()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->getSuccessState()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "WebAuthentication.Android.Fido2VsPasskeyCache.SuccessState"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-boolean v1, v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-boolean v2, v1, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful:Z

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v2, v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->completionTime:J

    iget-wide v0, v1, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->completionTime:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-wide v2, v2, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->completionTime:J

    iget-object v4, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget-wide v4, v4, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->completionTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, ".Fido2FasterMs"

    goto :goto_0

    :cond_2
    const-string v2, ".PasskeyCacheFasterMs"

    :goto_0
    iget-boolean v3, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mIsGoogleRp:Z

    if-eqz v3, :cond_3

    const-string v3, ".GoogleRp"

    goto :goto_1

    :cond_3
    const-string v3, ".NonGoogleRp"

    :goto_1
    const-string v4, "WebAuthentication.Android.Fido2VsPasskeyCache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget v0, v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->credentialCount:I

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget v1, v1, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->credentialCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const-string v1, "WebAuthentication.Android.Fido2VsPasskeyCache.CredentialCountDifference"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget v0, v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->credentialCount:I

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget v1, v1, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->credentialCount:I

    if-eq v0, v1, :cond_4

    const-string v1, "WebAuthentication.Android.Fido2VsPasskeyCache.Fido2CredentialCountWhenDifferent"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount1000Histogram(Ljava/lang/String;I)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    iget p0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->credentialCount:I

    const-string v0, "WebAuthentication.Android.Fido2VsPasskeyCache.PasskeyCacheCredentialCountWhenDifferent"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount1000Histogram(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onCachedGetCredentialsFailed()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->failed()Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->performComparison()V

    return-void
.end method

.method public onCachedGetCredentialsSuccessful(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful(JI)Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mPasskeysCacheResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->performComparison()V

    return-void
.end method

.method public onGetCredentialsFailed()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->failed()Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->performComparison()V

    return-void
.end method

.method public onGetCredentialsSuccessful(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful(JI)Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->mFido2ResultState:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;->performComparison()V

    return-void
.end method
