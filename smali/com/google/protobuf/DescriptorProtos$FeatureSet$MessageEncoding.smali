.class public final enum Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageEncoding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding$MessageEncodingVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

.field public static final enum DELIMITED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

.field public static final DELIMITED_VALUE:I = 0x2

.field public static final enum LENGTH_PREFIXED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

.field public static final LENGTH_PREFIXED_VALUE:I = 0x1

.field public static final enum MESSAGE_ENCODING_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

.field public static final MESSAGE_ENCODING_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    const-string v1, "MESSAGE_ENCODING_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->MESSAGE_ENCODING_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    const-string v2, "LENGTH_PREFIXED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->LENGTH_PREFIXED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    new-instance v2, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    const-string v3, "DELIMITED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->DELIMITED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    filled-new-array {v0, v1, v2}, [Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
    .locals 1

    const-class v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->value:I

    return p0
.end method
