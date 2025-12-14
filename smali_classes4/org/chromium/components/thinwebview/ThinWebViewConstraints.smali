.class public Lorg/chromium/components/thinwebview/ThinWebViewConstraints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public backgroundColor:I

.field public supportsOpacity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->clone()Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/chromium/components/thinwebview/ThinWebViewConstraints;
    .locals 2

    new-instance v0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    invoke-direct {v0}, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;-><init>()V

    iget-boolean v1, p0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->supportsOpacity:Z

    iput-boolean v1, v0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->supportsOpacity:Z

    iget p0, p0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->backgroundColor:I

    iput p0, v0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->backgroundColor:I

    return-object v0
.end method
