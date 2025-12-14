.class public Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field mConfidenceScore:F

.field mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mKeyword:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mConfidenceScore:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mKeyword:Ljava/lang/String;

    :cond_1
    const-string v0, "android.speech.extra.CONFIDENCE_SCORES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    if-eqz p1, :cond_2

    aget p1, p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mConfidenceScore:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public isConfidential()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mConfidenceScore:F

    const v0, 0x3f666666    # 0.9f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mKeyword:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public keyword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->mKeyword:Ljava/lang/String;

    return-object p0
.end method
