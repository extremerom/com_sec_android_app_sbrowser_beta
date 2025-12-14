.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;",
        "",
        "<init>",
        "()V",
        "EFFECT_HEAVY_CLICK_TIC",
        "",
        "SCALE_STATE_NONE",
        "SCALE_STATE_PROGRESS",
        "TRANSLATION_STATE_NONE",
        "TRANSLATION_STATE_PROGRESS",
        "TOOL_BAR_INVALID_POS",
        "DRAG_TOUCH_SLOP_SQUARE",
        "",
        "TEMP_TO_CHECK_OBJECT_CAPTURE",
        "INVALID_TOUCH_POINT",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DRAG_TOUCH_SLOP_SQUARE:F = 2500.0f

.field public static final EFFECT_HEAVY_CLICK_TIC:I = 0x6c

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_TOUCH_POINT:I = -0x1

.field public static final SCALE_STATE_NONE:I = 0x0

.field public static final SCALE_STATE_PROGRESS:I = 0x1

.field public static final TEMP_TO_CHECK_OBJECT_CAPTURE:I = 0x400000

.field public static final TOOL_BAR_INVALID_POS:I = -0x1

.field public static final TRANSLATION_STATE_NONE:I = 0x0

.field public static final TRANSLATION_STATE_PROGRESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OCDHelperConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
