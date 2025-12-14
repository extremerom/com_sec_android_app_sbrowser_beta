.class Lorg/chromium/content/browser/input/ThreadedInputConnection$1;
.super Lorg/chromium/content/browser/input/TextInputState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    return-void
.end method


# virtual methods
.method public shouldUnblock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
