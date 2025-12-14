.class Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmPacketManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager$EmType;
    }
.end annotation


# static fields
.field private static final EMP_2BYTES:I = 0x2

.field private static final EMP_3BYTES:I = 0x3

.field private static final EMP_4BYTES:I = 0x4

.field private static final EMP_MAGIC_SIZE:I = 0x4

.field private static final EMP_MAX_DEVICE_NUM:I = 0x1f4

.field private static final EMP_MAX_MODE_DESC:I = 0x80

.field private static final EMP_MAX_MODE_NAME:I = 0x20


# instance fields
.field private headerLen:I

.field private mNumOfDevice:I

.field private mOTPtime:I

.field private mPos:I

.field private mPosDeviceInfo:[I

.field private mPosGroupDb:I

.field private mPosIntegrityInfo:I

.field private mPosIssuerInfo:I

.field private mPosModeDb:I

.field private mPosModeInfo:I

.field private mPosTokenInfo:I

.field private mPosValidityInfo:I

.field private mPrefix:Ljava/lang/String;

.field private mToken:LEngineeringModeToken;

.field private mType:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance p0, Ljava/lang/Error;

    const-string v0, "Unresolved compilation problems: \n\tThe import android.os.ServiceManager cannot be resolved\n\tThe import com.samsung.android.service.EngineeringMode.token.EngineeringModeToken cannot be resolved\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved\n\tServiceManager cannot be resolved\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tThe method parseToken(int, byte[]) from the type EngineeringModeManager.EmPacketManager refers to the missing type EngineeringModeToken\n\tIEngineeringModeService cannot be resolved to a type\n\tThe method parseToken(byte[]) from the type EngineeringModeManager.EmPacketManager refers to the missing type EngineeringModeToken\n\tIEngineeringModeService cannot be resolved to a type\n\tIEngineeringModeService cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getBytes([BII)[B
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInt([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getShort([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getStringFromBytes([B)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseDeviceInfo([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseGroupData([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problems: \n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseGroupDb([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseIntegrityInfo([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseIssuerInfo([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseModeData([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problems: \n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseModeDb([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseModeInfo([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseOTPtime([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseTokenInfo([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseValidityInfo([BI)I
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problem: \n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public parseToken(I[B)LEngineeringModeToken;
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problems: \n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseToken([B)LEngineeringModeToken;
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unresolved compilation problems: \n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n\tEngineeringModeToken cannot be resolved to a type\n"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
