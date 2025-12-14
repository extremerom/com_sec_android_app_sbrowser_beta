.class public final Lorg/chromium/ui/mojom/LatencyComponentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/mojom/LatencyComponentType$EnumType;
    }
.end annotation


# static fields
.field public static final DISPLAY_COMPOSITOR_RECEIVED_FRAME_COMPONENT:I = 0x9

.field public static final INPUT_EVENT_GPU_SWAP_BUFFER_COMPONENT:I = 0xa

.field public static final INPUT_EVENT_LATENCY_BEGIN_RWH_COMPONENT:I = 0x0

.field public static final INPUT_EVENT_LATENCY_FIRST_SCROLL_UPDATE_ORIGINAL_COMPONENT:I = 0x2

.field public static final INPUT_EVENT_LATENCY_FRAME_SWAP_COMPONENT:I = 0xb

.field public static final INPUT_EVENT_LATENCY_ORIGINAL_COMPONENT:I = 0x3

.field public static final INPUT_EVENT_LATENCY_RENDERER_MAIN_COMPONENT:I = 0x5

.field public static final INPUT_EVENT_LATENCY_RENDERER_SWAP_COMPONENT:I = 0x8

.field public static final INPUT_EVENT_LATENCY_RENDERING_SCHEDULED_IMPL_COMPONENT:I = 0x7

.field public static final INPUT_EVENT_LATENCY_RENDERING_SCHEDULED_MAIN_COMPONENT:I = 0x6

.field public static final INPUT_EVENT_LATENCY_SCROLL_UPDATE_ORIGINAL_COMPONENT:I = 0x1

.field public static final INPUT_EVENT_LATENCY_UI_COMPONENT:I = 0x4

.field public static final MAX_VALUE:I = 0xb

.field public static final MIN_VALUE:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/ui/mojom/LatencyComponentType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
