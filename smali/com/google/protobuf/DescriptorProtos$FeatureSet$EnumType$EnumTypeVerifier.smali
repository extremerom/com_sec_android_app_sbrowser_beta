.class final Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType$EnumTypeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumTypeVerifier"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType$EnumTypeVerifier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType$EnumTypeVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;->CLOSED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;->OPEN:Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;->ENUM_TYPE_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
