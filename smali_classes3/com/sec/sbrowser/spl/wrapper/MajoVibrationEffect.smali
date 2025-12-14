.class public Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSemCreateWaveform:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSemMagnitudeTypeClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.os.VibrationEffect$SemMagnitudeType"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;->sSemMagnitudeTypeClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/os/VibrationEffect;

    const-string v3, "semCreateWaveform"

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;->sSemCreateWaveform:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semCreateWaveform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;->sSemCreateWaveform:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static semCreateWaveform(ILjava/lang/String;)Landroid/os/VibrationEffect;
    .locals 4

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;->sSemCreateWaveform:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;->sSemMagnitudeTypeClass:Ljava/lang/Class;

    invoke-static {v3, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    filled-new-array {p0, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method
