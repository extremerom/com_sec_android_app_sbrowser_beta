.class public enum Lcom/google/ar/core/ArCoreApk$Availability;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/ArCoreApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Availability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/ArCoreApk$Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum UNKNOWN_TIMED_OUT:Lcom/google/ar/core/ArCoreApk$Availability;

.field public static final enum UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 7

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v2, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_TIMED_OUT:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v3, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v4, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v5, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v6, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    filled-new-array/range {v0 .. v6}, [Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/ar/core/a;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    new-instance v0, Lcom/google/ar/core/m;

    const/4 v1, 0x1

    const-string v2, "UNKNOWN_CHECKING"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    new-instance v0, Lcom/google/ar/core/n;

    const/4 v1, 0x2

    const-string v2, "UNKNOWN_TIMED_OUT"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_TIMED_OUT:Lcom/google/ar/core/ArCoreApk$Availability;

    new-instance v0, Lcom/google/ar/core/o;

    const-string v1, "UNSUPPORTED_DEVICE_NOT_CAPABLE"

    const/4 v2, 0x3

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    new-instance v0, Lcom/google/ar/core/p;

    const-string v1, "SUPPORTED_NOT_INSTALLED"

    const/4 v2, 0x4

    const/16 v4, 0xc9

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    new-instance v0, Lcom/google/ar/core/q;

    const-string v1, "SUPPORTED_APK_TOO_OLD"

    const/4 v2, 0x5

    const/16 v4, 0xca

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    new-instance v0, Lcom/google/ar/core/r;

    const-string v1, "SUPPORTED_INSTALLED"

    const/4 v2, 0x6

    const/16 v4, 0xcb

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II[B)V

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-static {}, Lcom/google/ar/core/ArCoreApk$Availability;->$values()[Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->$VALUES:[Lcom/google/ar/core/ArCoreApk$Availability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/ArCoreApk$Availability;->nativeCode:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/ArCoreApk$Availability;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static forNumber(I)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/ar/core/ArCoreApk$Availability;->values()[Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/ar/core/ArCoreApk$Availability;->nativeCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const/16 v1, 0x30

    const-string v2, "Unexpected value for native Availability, value="

    invoke-static {v1, p0, v2}, Lcom/google/ar/core/A;->a(BILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 1

    const-class v0, Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 1

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->$VALUES:[Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-virtual {v0}, [Lcom/google/ar/core/ArCoreApk$Availability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/ArCoreApk$Availability;

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnknown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnsupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
