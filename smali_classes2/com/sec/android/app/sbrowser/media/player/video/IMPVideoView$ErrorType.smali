.class public final enum Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

.field public static final enum MEDIA_ERROR_DECODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

.field public static final enum MEDIA_ERROR_FORMAT:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

.field public static final enum MEDIA_ERROR_INVALID_CODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

.field public static final enum MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_FORMAT:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_DECODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    sget-object v3, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_INVALID_CODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    const-string v1, "MEDIA_ERROR_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_FORMAT:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    const-string v1, "MEDIA_ERROR_DECODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_DECODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    const-string v1, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    const-string v1, "MEDIA_ERROR_INVALID_CODE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_INVALID_CODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->$values()[Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    return-object v0
.end method
