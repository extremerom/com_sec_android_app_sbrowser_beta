.class public Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemCharacteristics"
.end annotation


# static fields
.field public static final SENSOR_POSITION_HOME_KEY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SENSOR_POSITION_IN_DISPLAY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SENSOR_POSITION_POWER_KEY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SENSOR_POSITION_REAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SENSOR_TYPE_CAPACITANCE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SENSOR_TYPE_OPTICAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SENSOR_TYPE_ULTRASONIC:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sGetMaxFingerprintCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sGetSensorAreaInDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetSensorPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sGetSensorType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getMaxFingerprintCount"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetMaxFingerprintCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSensorAreaInDisplay"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorAreaInDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSensorPosition"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSensorType"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_POSITION_HOME_KEY"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_POSITION_HOME_KEY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_POSITION_IN_DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_POSITION_IN_DISPLAY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_POSITION_POWER_KEY"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_POSITION_POWER_KEY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_POSITION_REAR"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_POSITION_REAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_TYPE_CAPACITANCE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_TYPE_CAPACITANCE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_TYPE_OPTICAL"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_TYPE_OPTICAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SENSOR_TYPE_ULTRASONIC"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->SENSOR_TYPE_ULTRASONIC:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getMaxFingerprintCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetMaxFingerprintCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getSensorAreaInDisplay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorAreaInDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getSensorPosition"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "getSensorType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getMaxFingerprintCount()I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetMaxFingerprintCount:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSensorAreaInDisplay()Landroid/graphics/Rect;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorAreaInDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSensorPosition()I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSensorType()I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;->sGetSensorType:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
