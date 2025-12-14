.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008R\u0010\u0010\u0010\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;",
        "",
        "<init>",
        "()V",
        "SUPPORT_NATIVE_AI",
        "",
        "SUPPORT_SAVE_AS_STICKER_FROM_STICKER_CENTER",
        "getSUPPORT_SAVE_AS_STICKER_FROM_STICKER_CENTER",
        "()Z",
        "SUPPORT_VIDEO_CLIPPER",
        "getSUPPORT_VIDEO_CLIPPER",
        "SUPPORT_VIDEO_CLIPPER_MODEL",
        "SUPPORT_DETECT_VIDEO_CLIPPER",
        "getSUPPORT_DETECT_VIDEO_CLIPPER",
        "SUPPORT_SRIB_CLIPPER",
        "getSUPPORT_SRIB_CLIPPER",
        "SUPPORT_AFTER_ONEUI_7_0",
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
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUPPORT_AFTER_ONEUI_7_0:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final SUPPORT_DETECT_VIDEO_CLIPPER:Z

.field private static final SUPPORT_NATIVE_AI:Z

.field private static final SUPPORT_SAVE_AS_STICKER_FROM_STICKER_CENTER:Z

.field private static final SUPPORT_SRIB_CLIPPER:Z

.field private static final SUPPORT_VIDEO_CLIPPER:Z

.field private static final SUPPORT_VIDEO_CLIPPER_MODEL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_NATIVE_AI:Z

    sput-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_SAVE_AS_STICKER_FROM_STICKER_CENTER:Z

    sput-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_VIDEO_CLIPPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_VIDEO_CONFIG_VIDEO_CLIPPING_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_VIDEO_CLIPPER_MODEL:Z

    sput-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_DETECT_VIDEO_CLIPPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unifiedclipper"

    invoke-static {v0, v2}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_SRIB_CLIPPER:Z

    sput-boolean v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_AFTER_ONEUI_7_0:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSUPPORT_DETECT_VIDEO_CLIPPER()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_DETECT_VIDEO_CLIPPER:Z

    return p0
.end method

.method public final getSUPPORT_SAVE_AS_STICKER_FROM_STICKER_CENTER()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_SAVE_AS_STICKER_FROM_STICKER_CENTER:Z

    return p0
.end method

.method public final getSUPPORT_SRIB_CLIPPER()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_SRIB_CLIPPER:Z

    return p0
.end method

.method public final getSUPPORT_VIDEO_CLIPPER()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_VIDEO_CLIPPER:Z

    return p0
.end method
