.class public final Lcom/google/protobuf/JavaFeaturesProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/JavaFeaturesProto$JavaFeatures;,
        Lcom/google/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    sget-object v2, Lcom/google/protobuf/JavaFeaturesProto$JavaFeatures;->a:Lcom/google/protobuf/JavaFeaturesProto$JavaFeatures;

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v6, Lcom/google/protobuf/JavaFeaturesProto$JavaFeatures;

    const/4 v3, 0x0

    const/16 v4, 0x3e9

    move-object v1, v2

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method
