.class Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/TtsPlatformImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TtsVoice"
.end annotation


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;->mName:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;->mName:Ljava/lang/String;

    return-object p0
.end method
