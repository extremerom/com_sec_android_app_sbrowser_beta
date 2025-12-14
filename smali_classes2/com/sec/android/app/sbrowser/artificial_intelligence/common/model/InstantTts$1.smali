.class Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;I)V

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;I)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/InstantTts;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Ljava/lang/String;Z)V

    return-void
.end method
