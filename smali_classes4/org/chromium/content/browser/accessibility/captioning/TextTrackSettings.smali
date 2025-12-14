.class public final Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mTextTrackBackgroundColor:Ljava/lang/String;

.field private mTextTrackFontFamily:Ljava/lang/String;

.field private mTextTrackFontStyle:Ljava/lang/String;

.field private mTextTrackFontVariant:Ljava/lang/String;

.field private mTextTrackTextColor:Ljava/lang/String;

.field private mTextTrackTextShadow:Ljava/lang/String;

.field private mTextTrackTextSize:Ljava/lang/String;

.field private mTextTracksEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTracksEnabled:Z

    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackBackgroundColor:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontFamily:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontStyle:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontVariant:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextColor:Ljava/lang/String;

    iput-object p7, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextShadow:Ljava/lang/String;

    iput-object p8, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextSize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTextTrackBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackBackgroundColor:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTrackFontFamily()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontFamily:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTrackFontStyle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontStyle:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTrackFontVariant()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontVariant:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTrackTextColor()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextColor:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTrackTextShadow()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextShadow:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTrackTextSize()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextSize:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextTracksEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTracksEnabled:Z

    return p0
.end method
