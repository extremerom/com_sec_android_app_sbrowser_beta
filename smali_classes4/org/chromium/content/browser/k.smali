.class public final synthetic Lorg/chromium/content/browser/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/content/browser/k;->a:I

    iput-object p1, p0, Lorg/chromium/content/browser/k;->b:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/k;->a:I

    iget-object p0, p0, Lorg/chromium/content/browser/k;->b:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->a(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->c(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
