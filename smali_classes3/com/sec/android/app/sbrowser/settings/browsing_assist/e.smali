.class public final synthetic Lcom/sec/android/app/sbrowser/settings/browsing_assist/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment$TtsVoice;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment$TtsVoice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/e;->a:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/e;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment$TtsVoice;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/e;->a:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/e;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment$TtsVoice;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;->i(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment$TtsVoice;I)V

    return-void
.end method
