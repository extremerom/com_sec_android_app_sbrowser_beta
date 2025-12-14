.class public final Landroidx/window/DeviceState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/DeviceState$Builder;
    }
.end annotation


# static fields
.field public static final POSTURE_CLOSED:I = 0x1

.field public static final POSTURE_FLIPPED:I = 0x4

.field public static final POSTURE_HALF_OPENED:I = 0x2

.field static final POSTURE_MAX_KNOWN:I = 0x4

.field public static final POSTURE_OPENED:I = 0x3

.field public static final POSTURE_UNKNOWN:I


# instance fields
.field private mPosture:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/DeviceState;->mPosture:I

    return-void
.end method

.method private static postureToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "Unknown posture value ("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FLIPPED"

    return-object p0

    :cond_1
    const-string p0, "OPENED"

    return-object p0

    :cond_2
    const-string p0, "HALF_OPENED"

    return-object p0

    :cond_3
    const-string p0, "CLOSED"

    return-object p0

    :cond_4
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public getPosture()I
    .locals 0

    iget p0, p0, Landroidx/window/DeviceState;->mPosture:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceState{ posture="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/window/DeviceState;->mPosture:I

    invoke-static {p0}, Landroidx/window/DeviceState;->postureToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
