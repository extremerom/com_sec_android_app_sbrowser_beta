.class Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StylusTouchData"
.end annotation


# instance fields
.field public final deviceId:I

.field public final stylusDownX:F

.field public final stylusDownY:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;->stylusDownX:F

    iput p3, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;->stylusDownY:F

    iput p1, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;->deviceId:I

    return-void
.end method
