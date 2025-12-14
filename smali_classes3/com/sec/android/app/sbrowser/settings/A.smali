.class public final synthetic Lcom/sec/android/app/sbrowser/settings/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/A;->a:Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/A;->b:Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/A;->a:Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/A;->b:Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->j(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment$TtsVoice;I)V

    return-void
.end method
