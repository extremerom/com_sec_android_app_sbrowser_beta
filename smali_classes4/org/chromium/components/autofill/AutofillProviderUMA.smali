.class public Lorg/chromium/components/autofill/AutofillProviderUMA;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;,
        Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;,
        Lorg/chromium/components/autofill/AutofillProviderUMA$Provider;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final AUTOFILL_SESSION_HISTOGRAM_COUNT:I = 0x1a

.field public static final AWG_HAS_SUGGESTION_AUTOFILLED:I = 0x2

.field public static final AWG_HAS_SUGGESTION_NO_AUTOFILL:I = 0x1

.field public static final AWG_NO_SUGGESTION:I = 0x0

.field public static final AWG_SUGGESTION_AVAILABLE_COUNT:I = 0x3

.field public static final DOM_MUTATION_AFTER_AUTOFILL:I = 0x6

.field public static final FORM_SUBMISSION:I = 0x5

.field public static final FRAME_DETACHED:I = 0x2

.field private static final MAX_TIME_MILLIS:J

.field public static final NO_STRUCTURE_PROVIDED:I = 0x1

.field public static final NO_SUGGESTION_FORM_AUTOFILLED:I = 0x13

.field public static final NO_SUGGESTION_FORM_AUTOFILLED_1PASSWORD:I = 0x18

.field public static final NO_SUGGESTION_FORM_AUTOFILLED_AWG:I = 0x14

.field public static final NO_SUGGESTION_FORM_AUTOFILLED_BITWARDEN:I = 0x19

.field public static final NO_SUGGESTION_FORM_AUTOFILLED_DASHLANE:I = 0x17

.field public static final NO_SUGGESTION_FORM_AUTOFILLED_LAST_PASS:I = 0x16

.field public static final NO_SUGGESTION_FORM_AUTOFILLED_SAMSUNG:I = 0x15

.field public static final NO_SUGGESTION_USER_CHANGE_FORM_FORM_SUBMITTED:I = 0x2

.field public static final NO_SUGGESTION_USER_CHANGE_FORM_NO_FORM_SUBMITTED:I = 0x3

.field public static final NO_SUGGESTION_USER_NOT_CHANGE_FORM_FORM_SUBMITTED:I = 0x4

.field public static final NO_SUGGESTION_USER_NOT_CHANGE_FORM_NO_FORM_SUBMITTED:I = 0x5

.field public static final PROBABLY_FORM_SUBMITTED:I = 0x4

.field public static final SAME_DOCUMENT_NAVIGATION:I = 0x0

.field public static final SERVER_PREDICTION_AVAILABLE_AFTER_SESSION_STARTS:I = 0x2

.field public static final SERVER_PREDICTION_AVAILABLE_COUNT:I = 0x3

.field public static final SERVER_PREDICTION_AVAILABLE_ON_SESSION_STARTS:I = 0x1

.field public static final SERVER_PREDICTION_NOT_AVAILABLE:I = 0x0

.field public static final SESSION_UNKNOWN:I = 0x0

.field public static final SUBMISSION_SOURCE_HISTOGRAM_COUNT:I = 0x7

.field public static final UMA_AUTOFILL_AUTOFILL_SESSION:Ljava/lang/String; = "Autofill.WebView.AutofillSession"

.field public static final UMA_AUTOFILL_AUTOFILL_SESSION_WITH_BOTTOM_SHEET:Ljava/lang/String; = "Autofill.WebView.AutofillSessionWithBottomSheet"

.field public static final UMA_AUTOFILL_AWG_SUGGESTION_AVAILABILITY:Ljava/lang/String; = "Autofill.WebView.ServerPrediction.AwGSuggestionAvailability"

.field public static final UMA_AUTOFILL_CREATED_BY_ACTIVITY_CONTEXT:Ljava/lang/String; = "Autofill.WebView.CreatedByActivityContext"

.field public static final UMA_AUTOFILL_ENABLED:Ljava/lang/String; = "Autofill.WebView.Enabled"

.field public static final UMA_AUTOFILL_SERVER_PREDICTION_AVAILABILITY:Ljava/lang/String; = "Autofill.WebView.ServerPredicton.PredictionAvailability"

.field public static final UMA_AUTOFILL_SUBMISSION_SOURCE:Ljava/lang/String; = "Autofill.WebView.SubmissionSource"

.field public static final UMA_AUTOFILL_SUGGESTION_TIME:Ljava/lang/String; = "Autofill.WebView.SuggestionTime"

.field public static final UMA_AUTOFILL_VALID_SERVER_PREDICTION:Ljava/lang/String; = "Autofill.WebView.ServerPredicton.HasValidServerPrediction"

.field public static final USER_NOT_SELECT_SUGGESTION_USER_CHANGE_FORM_FORM_SUBMITTED:I = 0xa

.field public static final USER_NOT_SELECT_SUGGESTION_USER_CHANGE_FORM_NO_FORM_SUBMITTED:I = 0xb

.field public static final USER_NOT_SELECT_SUGGESTION_USER_NOT_CHANGE_FORM_FORM_SUBMITTED:I = 0xc

.field public static final USER_NOT_SELECT_SUGGESTION_USER_NOT_CHANGE_FORM_NO_FORM_SUBMITTED:I = 0xd

.field public static final USER_SELECT_SUGGESTION_USER_CHANGE_FORM_FORM_SUBMITTED:I = 0x6

.field public static final USER_SELECT_SUGGESTION_USER_CHANGE_FORM_NO_FORM_SUBMITTED:I = 0x7

.field public static final USER_SELECT_SUGGESTION_USER_NOT_CHANGE_FORM_FORM_SUBMITTED:I = 0x8

.field public static final USER_SELECT_SUGGESTION_USER_NOT_CHANGE_FORM_NO_FORM_SUBMITTED:I = 0x9

.field public static final XHR_SUCCEEDED:I = 0x1


# instance fields
.field private mAutofillDisabledOnSessionStart:Ljava/lang/Boolean;

.field private final mCurrentProvider:I

.field private final mIsAwGCurrentAutofillService:Z

.field private mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

.field private mServerPredictionRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/components/autofill/AutofillProviderUMA;->MAX_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lorg/chromium/components/autofill/AutofillProviderUMA;->getCurrentProvider(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mCurrentProvider:I

    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p3, "Autofill.WebView.CreatedByActivityContext"

    invoke-static {p3, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mIsAwGCurrentAutofillService:Z

    return-void
.end method

.method public static bridge synthetic a(J)V
    .locals 1

    const-string v0, "Autofill.WebView.SuggestionTime"

    invoke-static {v0, p0, p1}, Lorg/chromium/components/autofill/AutofillProviderUMA;->recordTimesHistogram(Ljava/lang/String;J)V

    return-void
.end method

.method public static getCurrentProvider(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "com.samsung.android.samsungpassautofill"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    goto :goto_0

    :sswitch_1
    const-string v7, "com.x8bit.bitwarden"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_0

    :sswitch_2
    const-string v7, "com.onepassword.android"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v2

    goto :goto_0

    :sswitch_3
    const-string v7, "com.google.android.gms"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_0

    :sswitch_4
    const-string v7, "com.lastpass.lpandroid"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_0

    :sswitch_5
    const-string v7, "com.dashlane"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    return v5

    :pswitch_0
    return v3

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    return v4

    :pswitch_4
    return v2

    :pswitch_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x663705b5 -> :sswitch_5
        -0x2c20f38f -> :sswitch_4
        0x136ddda6 -> :sswitch_3
        0x1cb09495 -> :sswitch_2
        0x25627aa4 -> :sswitch_1
        0x64ef5bdd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logCurrentProvider(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->getCurrentProvider(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->recordUmaAutofillProvider(I)V

    return-void
.end method

.method private static recordTimesHistogram(Ljava/lang/String;J)V
    .locals 8

    sget-wide v5, Lorg/chromium/components/autofill/AutofillProviderUMA;->MAX_TIME_MILLIS:J

    const/16 v7, 0x32

    const-wide/16 v3, 0xa

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJI)V

    return-void
.end method

.method private static recordUmaAutofillProvider(I)V
    .locals 2

    const-string v0, "Autofill.WebView.Provider.PackageName"

    const/4 v1, 0x7

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private toUMASubmissionSource(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x7

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAutofill()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mServerPredictionRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->onAutofill()V

    :cond_1
    return-void
.end method

.method public onBottomSheetShown()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    return-void
.end method

.method public onFieldChangedVisibility()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz p0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    :cond_0
    return-void
.end method

.method public onFormSubmitted(I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->recordSession()V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mServerPredictionRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->recordHistograms()V

    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillProviderUMA;->toUMASubmissionSource(I)I

    move-result p0

    const/4 p1, 0x7

    const-string v0, "Autofill.WebView.SubmissionSource"

    invoke-static {v0, p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method public onServerTypeAvailable(Lorg/chromium/components/autofill/FormData;Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->onServerTypeAvailable(Lorg/chromium/components/autofill/FormData;Z)V

    return-void
.end method

.method public onSessionStarted(Z)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mAutofillDisabledOnSessionStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    const-string v1, "Autofill.WebView.Enabled"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mAutofillDisabledOnSessionStart:Ljava/lang/Boolean;

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA;->recordSession()V

    :cond_2
    new-instance p1, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;-><init>(I)V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    iget-boolean p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mIsAwGCurrentAutofillService:Z

    if-eqz p1, :cond_3

    new-instance p1, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;

    invoke-direct {p1, v0}, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;-><init>(I)V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mServerPredictionRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;

    :cond_3
    return-void
.end method

.method public onSuggestionDisplayed(J)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->setSuggestionTimeMillis(J)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mServerPredictionRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA$ServerPredictionRecorder;->onSuggestionDisplayed()V

    :cond_1
    return-void
.end method

.method public onUserChangeFieldValue(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    :goto_0
    return-void
.end method

.method public onVirtualStructureProvided()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->record(I)V

    :cond_0
    return-void
.end method

.method public recordSession()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mAutofillDisabledOnSessionStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mCurrentProvider:I

    invoke-virtual {v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->recordHistogram(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA;->mRecorder:Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;

    return-void
.end method
