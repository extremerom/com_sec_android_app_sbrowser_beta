.class public Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenPixelDensity"
.end annotation


# instance fields
.field public final xdpi:F
    .annotation build Lcom/google/cardboard/sdk/UsedByNative;
    .end annotation
.end field

.field public final ydpi:F
    .annotation build Lcom/google/cardboard/sdk/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;->xdpi:F

    iput p2, p0, Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;->ydpi:F

    return-void
.end method
