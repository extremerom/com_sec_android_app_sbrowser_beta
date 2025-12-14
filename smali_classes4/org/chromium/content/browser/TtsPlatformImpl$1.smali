.class Lorg/chromium/content/browser/TtsPlatformImpl$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/TtsPlatformImpl;->addOnUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/TtsPlatformImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->d(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->e(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl;->f(Lorg/chromium/content/browser/TtsPlatformImpl;Ljava/lang/String;)V

    return-void
.end method
