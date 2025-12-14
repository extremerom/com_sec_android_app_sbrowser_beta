.class Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AutofillProviderUMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerPredictionRecorder"
.end annotation


# instance fields
.field private mAutofilled:Z

.field private mHasSuggestions:Z

.field private mRecorded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutofill()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->mAutofilled:Z

    return-void
.end method

.method public onSuggestionDisplayed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->mHasSuggestions:Z

    return-void
.end method

.method public recordHistograms()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->mRecorded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->mRecorded:Z

    iget-boolean v1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->mHasSuggestions:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->mAutofilled:Z

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const-string p0, "Autofill.WebView.ServerPrediction.AwGSuggestionAvailability"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method
