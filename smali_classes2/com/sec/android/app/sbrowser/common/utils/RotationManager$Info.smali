.class public Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/RotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# static fields
.field public static final ROTATION_0:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

.field public static final ROTATION_180:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

.field public static final ROTATION_270:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

.field public static final ROTATION_90:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;


# instance fields
.field public final flipped:Z

.field public final orientation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

.field public final rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->ROTATION_0:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->ROTATION_90:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->ROTATION_180:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->ROTATION_270:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->flipped:Z

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->orientation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R270:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->LANDSCAPE:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->orientation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R180:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->PORTRAIT:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->orientation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R90:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->LANDSCAPE:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->orientation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R0:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->rotation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->PORTRAIT:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Info;->orientation:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    :goto_0
    return-void
.end method
