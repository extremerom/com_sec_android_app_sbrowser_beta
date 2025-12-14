.class Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->DELIMITED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->LENGTH_PREFIXED:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;->MESSAGE_ENCODING_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    :goto_0
    return-object p0
.end method
