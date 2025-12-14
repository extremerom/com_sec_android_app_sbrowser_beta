.class public Lorg/chromium/build/NativeLibraries;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CPU_FAMILY_ARM:I = 0x1

.field public static final CPU_FAMILY_MIPS:I = 0x2

.field public static final CPU_FAMILY_RISCV:I = 0x4

.field public static final CPU_FAMILY_UNKNOWN:I = 0x0

.field public static final CPU_FAMILY_X86:I = 0x3

.field public static final LIBRARIES:[Ljava/lang/String;

.field public static final sCpuFamily:I = 0x1

.field public static final sSupport32Bit:Z = false

.field public static final sSupport64Bit:Z = false

.field public static final sUseLinker:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "terrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/build/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    return-void
.end method
