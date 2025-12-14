.class public final Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/cardboard/proto/CardboardDevice$DeviceParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/proto/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;,
        Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;,
        Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;",
        ">;",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

.field public static final DISTORTION_COEFFICIENTS_FIELD_NUMBER:I = 0x7

.field public static final INTER_LENS_DISTANCE_FIELD_NUMBER:I = 0x4

.field public static final LEFT_EYE_FIELD_OF_VIEW_ANGLES_FIELD_NUMBER:I = 0x5

.field public static final MODEL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY_BUTTON_FIELD_NUMBER:I = 0xc

.field public static final SCREEN_TO_LENS_DISTANCE_FIELD_NUMBER:I = 0x3

.field public static final TRAY_TO_LENS_DISTANCE_FIELD_NUMBER:I = 0x6

.field public static final VENDOR_FIELD_NUMBER:I = 0x1

.field public static final VERTICAL_ALIGNMENT_FIELD_NUMBER:I = 0xb


# instance fields
.field private bitField0_:I

.field private distortionCoefficientsMemoizedSerializedSize:I

.field private distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

.field private interLensDistance_:F

.field private leftEyeFieldOfViewAnglesMemoizedSerializedSize:I

.field private leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

.field private model_:Ljava/lang/String;

.field private primaryButton_:I

.field private screenToLensDistance_:F

.field private trayToLensDistance_:F

.field private vendor_:Ljava/lang/String;

.field private verticalAlignment_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;-><init>()V

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    const-class v1, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAnglesMemoizedSerializedSize:I

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficientsMemoizedSerializedSize:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->primaryButton_:I

    return-void
.end method

.method public static bridge synthetic A(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setVendor(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setVendorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setVerticalAlignment(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;)V

    return-void
.end method

.method public static bridge synthetic D()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method private addAllDistortionCoefficients(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->ensureDistortionCoefficientsIsMutable()V

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllLeftEyeFieldOfViewAngles(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->ensureLeftEyeFieldOfViewAnglesIsMutable()V

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addDistortionCoefficients(F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->ensureDistortionCoefficientsIsMutable()V

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->q(F)V

    return-void
.end method

.method private addLeftEyeFieldOfViewAngles(F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->ensureLeftEyeFieldOfViewAnglesIsMutable()V

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->q(F)V

    return-void
.end method

.method private clearDistortionCoefficients()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method private clearInterLensDistance()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->interLensDistance_:F

    return-void
.end method

.method private clearLeftEyeFieldOfViewAngles()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method private clearModel()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    invoke-static {}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getDefaultInstance()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-void
.end method

.method private clearPrimaryButton()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->primaryButton_:I

    return-void
.end method

.method private clearScreenToLensDistance()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return-void
.end method

.method private clearTrayToLensDistance()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return-void
.end method

.method private clearVendor()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    invoke-static {}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getDefaultInstance()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-void
.end method

.method private clearVerticalAlignment()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->verticalAlignment_:I

    return-void
.end method

.method private ensureDistortionCoefficientsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->S()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    :cond_0
    return-void
.end method

.method private ensureLeftEyeFieldOfViewAnglesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->S()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->addAllDistortionCoefficients(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->addAllLeftEyeFieldOfViewAngles(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->addDistortionCoefficients(F)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->addLeftEyeFieldOfViewAngles(F)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearDistortionCoefficients()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearInterLensDistance()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearLeftEyeFieldOfViewAngles()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearModel()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearPrimaryButton()V

    return-void
.end method

.method public static newBuilder()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearScreenToLensDistance()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearTrayToLensDistance()V

    return-void
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic q(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearVendor()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->clearVerticalAlignment()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setDistortionCoefficients(IF)V

    return-void
.end method

.method private setDistortionCoefficients(IF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->ensureDistortionCoefficientsIsMutable()V

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p2, p1}, Lcom/google/protobuf/Internal$FloatList;->H(FI)F

    return-void
.end method

.method private setInterLensDistance(F)V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->interLensDistance_:F

    return-void
.end method

.method private setLeftEyeFieldOfViewAngles(IF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->ensureLeftEyeFieldOfViewAnglesIsMutable()V

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p2, p1}, Lcom/google/protobuf/Internal$FloatList;->H(FI)F

    return-void
.end method

.method private setModel(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    iput-object p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-void
.end method

.method private setModelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->I()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    iget p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    return-void
.end method

.method private setPrimaryButton(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->primaryButton_:I

    iget p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    return-void
.end method

.method private setScreenToLensDistance(F)V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return-void
.end method

.method private setTrayToLensDistance(F)V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return-void
.end method

.method private setVendor(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    iput-object p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-void
.end method

.method private setVendorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->I()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    iget p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    return-void
.end method

.method private setVerticalAlignment(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->verticalAlignment_:I

    iget p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic t(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setInterLensDistance(F)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setLeftEyeFieldOfViewAngles(IF)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setModel(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setModelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setPrimaryButton(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setScreenToLensDistance(F)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->setTrayToLensDistance(F)V

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "vendor_"

    const-string v2, "model_"

    const-string v3, "screenToLensDistance_"

    const-string v4, "interLensDistance_"

    const-string v5, "leftEyeFieldOfViewAngles_"

    const-string v6, "trayToLensDistance_"

    const-string v7, "distortionCoefficients_"

    const-string v8, "verticalAlignment_"

    invoke-static {}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v9

    const-string v10, "primaryButton_"

    invoke-static {}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\t\u0000\u0001\u0001\u000c\t\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005$\u0006\u1001\u0005\u0007$\u000b\u180c\u0004\u000c\u180c\u0006"

    sget-object p2, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->DEFAULT_INSTANCE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;-><init>(I)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDistortionCoefficients(I)F
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public getDistortionCoefficientsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDistortionCoefficientsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->distortionCoefficients_:Lcom/google/protobuf/Internal$FloatList;

    return-object p0
.end method

.method public getInterLensDistance()F
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->interLensDistance_:F

    return p0
.end method

.method public getLeftEyeFieldOfViewAngles(I)F
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public getLeftEyeFieldOfViewAnglesCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getLeftEyeFieldOfViewAnglesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles_:Lcom/google/protobuf/Internal$FloatList;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-object p0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->p(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryButton()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->primaryButton_:I

    invoke-static {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->forNumber(I)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->MAGNET:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    :cond_0
    return-object p0
.end method

.method public getScreenToLensDistance()F
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return p0
.end method

.method public getTrayToLensDistance()F
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->p(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalAlignment()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->verticalAlignment_:I

    invoke-static {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;->forNumber(I)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;->BOTTOM:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;

    :cond_0
    return-object p0
.end method

.method public hasInterLensDistance()Z
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasModel()Z
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPrimaryButton()Z
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasScreenToLensDistance()Z
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTrayToLensDistance()Z
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVendor()Z
    .locals 1

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVerticalAlignment()Z
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
