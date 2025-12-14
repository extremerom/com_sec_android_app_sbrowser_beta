.class final Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$Utf8ValidationVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utf8ValidationVerifier"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$Utf8ValidationVerifier;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$Utf8ValidationVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->NONE:Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->VERIFY:Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;->UTF8_VALIDATION_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    :goto_0
    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
