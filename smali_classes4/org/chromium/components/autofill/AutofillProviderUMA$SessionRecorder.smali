.class Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AutofillProviderUMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionRecorder"
.end annotation


# static fields
.field public static final EVENT_BOTTOM_SHEET_SHOWN:I = 0x80

.field public static final EVENT_FIELD_CHANGED_VISIBILITY:I = 0x20

.field public static final EVENT_FORM_AUTOFILLED:I = 0x4

.field public static final EVENT_FORM_SUBMITTED:I = 0x40

.field public static final EVENT_SUGGESTION_DISPLAYED:I = 0x2

.field public static final EVENT_USER_CHANGED_AUTOFILLED_FIELD:I = 0x10

.field public static final EVENT_USER_CHANGED_FIELD_VALUE:I = 0x8

.field public static final EVENT_VIRTUAL_STRUCTURE_PROVIDED:I = 0x1


# instance fields
.field private mServerPredictionAvailable:Z

.field private mState:I

.field private mSuggestionTimeMillis:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;-><init>()V

    return-void
.end method

.method private toUMAAutofillSessionValue(I)I
    .locals 6

    iget p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mState:I

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x4e

    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x48

    const/16 v4, 0x40

    const/16 v5, 0x8

    if-nez v1, :cond_6

    const/4 v1, 0x4

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 p0, 0x13

    return p0

    :pswitch_0
    const/16 p0, 0x19

    return p0

    :pswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    const/16 p0, 0x16

    return p0

    :pswitch_4
    const/16 p0, 0x15

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    if-ne v0, v5, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    if-ne v0, v4, :cond_4

    return v1

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    return v2

    :cond_6
    xor-int/lit8 p0, v0, 0x2

    and-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_b

    if-nez p0, :cond_7

    const/16 p0, 0xd

    return p0

    :cond_7
    if-ne p0, v5, :cond_8

    const/16 p0, 0xb

    return p0

    :cond_8
    if-ne p0, v4, :cond_9

    const/16 p0, 0xc

    return p0

    :cond_9
    if-ne p0, v3, :cond_a

    const/16 p0, 0xa

    return p0

    :cond_a
    return v2

    :cond_b
    const/4 p0, 0x6

    xor-int/lit8 p1, v0, 0x6

    if-nez p1, :cond_c

    const/16 p0, 0x9

    return p0

    :cond_c
    if-ne p1, v5, :cond_d

    const/4 p0, 0x7

    return p0

    :cond_d
    if-ne p1, v4, :cond_e

    return v5

    :cond_e
    if-ne p1, v3, :cond_f

    return p0

    :cond_f
    return v2

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
.method public onServerTypeAvailable(Lorg/chromium/components/autofill/FormData;Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mServerPredictionAvailable:Z

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/4 p2, 0x3

    const-string v1, "Autofill.WebView.ServerPredicton.PredictionAvailability"

    invoke-static {v1, p0, p2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    if-eqz p1, :cond_3

    iget-object p0, p1, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/autofill/FormFieldData;

    invoke-virtual {p1}, Lorg/chromium/components/autofill/FormFieldData;->getServerType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NO_SERVER_DATA"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string p0, "Autofill.WebView.ServerPredicton.HasValidServerPrediction"

    invoke-static {p0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public record(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-ne v0, p1, :cond_1

    or-int/lit8 p1, p1, 0x8

    :cond_1
    iget v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mState:I

    return-void
.end method

.method public recordHistogram(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->toUMAAutofillSessionValue(I)I

    move-result p1

    const-string v0, "Autofill.WebView.AutofillSession"

    const/16 v1, 0x1a

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    iget v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mState:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const-string v0, "Autofill.WebView.AutofillSessionWithBottomSheet"

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mSuggestionTimeMillis:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/chromium/components/autofill/AutofillProviderUMA;->a(J)V

    :cond_1
    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mServerPredictionAvailable:Z

    if-nez p0, :cond_2

    const/4 p0, 0x3

    const-string p1, "Autofill.WebView.ServerPredicton.PredictionAvailability"

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public setSuggestionTimeMillis(J)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mSuggestionTimeMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProviderUMA$SessionRecorder;->mSuggestionTimeMillis:Ljava/lang/Long;

    :cond_0
    return-void
.end method
