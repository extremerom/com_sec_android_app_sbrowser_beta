.class Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/TtsPlatformImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingUtterance"
.end annotation


# instance fields
.field mEngineId:Ljava/lang/String;

.field mImpl:Lorg/chromium/content/browser/TtsPlatformImpl;

.field mLang:Ljava/lang/String;

.field mPitch:F

.field mRate:F

.field mText:Ljava/lang/String;

.field mUtteranceId:I

.field mVolume:F


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mImpl:Lorg/chromium/content/browser/TtsPlatformImpl;

    iput p2, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mUtteranceId:I

    iput-object p3, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mText:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mLang:Ljava/lang/String;

    iput p6, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mRate:F

    iput p7, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mPitch:F

    iput p8, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mVolume:F

    iput-object p5, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mEngineId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->speak()V

    return-void
.end method

.method private speak()V
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mImpl:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget v1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mUtteranceId:I

    iget-object v2, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mText:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mLang:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mEngineId:Ljava/lang/String;

    iget v5, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mRate:F

    iget v6, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mPitch:F

    iget v7, p0, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->mVolume:F

    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/TtsPlatformImpl;->g(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method
