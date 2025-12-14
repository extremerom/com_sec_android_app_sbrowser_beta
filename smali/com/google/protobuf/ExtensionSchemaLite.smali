.class final Lcom/google/protobuf/ExtensionSchemaLite;
.super Lcom/google/protobuf/ExtensionSchema;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/ExtensionSchema<",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget p0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->b:I

    return p0
.end method

.method public final b(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {p0, p3, p2}, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(ILcom/google/protobuf/MessageLite;)V

    iget-object p1, p1, Lcom/google/protobuf/ExtensionRegistryLite;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/google/protobuf/FieldSet;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
    .locals 1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/google/protobuf/FieldSet;

    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->b()Lcom/google/protobuf/FieldSet;

    move-result-object p0

    iput-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/google/protobuf/FieldSet;

    :cond_0
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/google/protobuf/FieldSet;

    return-object p0
.end method

.method public final e(Lcom/google/protobuf/MessageLite;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    return p0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->m()V

    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 6

    check-cast p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object p0, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->d:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget v1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->b:I

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:Lcom/google/protobuf/WireFormat$FieldType;

    iget-boolean v2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->e:Z

    if-eqz v2, :cond_0

    sget-object p3, Lcom/google/protobuf/ExtensionSchemaLite$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Type cannot be packed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->k(Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    move-object v0, p1

    move-object v2, p3

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/SchemaUtil;->z(Ljava/lang/Object;ILjava/util/AbstractList;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p6

    goto/16 :goto_0

    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->u(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->A(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->b(Ljava/util/List;)V

    goto :goto_0

    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->w(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->n(Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->C(Ljava/util/List;)V

    goto :goto_0

    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->t(Ljava/util/List;)V

    goto :goto_0

    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->B(Ljava/util/List;)V

    goto :goto_0

    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->h(Ljava/util/List;)V

    goto :goto_0

    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->j(Ljava/util/List;)V

    goto :goto_0

    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->I(Ljava/util/List;)V

    goto :goto_0

    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3}, Lcom/google/protobuf/Reader;->M(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p5, p0, p3}, Lcom/google/protobuf/FieldSet;->o(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v0, v2, :cond_2

    invoke-interface {p2}, Lcom/google/protobuf/Reader;->s()I

    move-result p2

    iget-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-interface {p3, p2}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {p1, v1, p2, p6, p7}, Lcom/google/protobuf/SchemaUtil;->D(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    sget-object p1, Lcom/google/protobuf/ExtensionSchemaLite$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p7

    aget p1, p1, p7

    iget-object p3, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->c:Lcom/google/protobuf/MessageLite;

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto/16 :goto_1

    :pswitch_e
    iget-boolean p1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Z

    if-nez p1, :cond_4

    invoke-virtual {p5, p0}, Lcom/google/protobuf/FieldSet;->f(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    instance-of p7, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_4

    sget-object p3, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/Protobuf;->b(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object p3

    move-object p7, p1

    check-cast p7, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p7}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p7

    if-nez p7, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p7

    invoke-interface {p3, p7, p1}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p0, p7}, Lcom/google/protobuf/FieldSet;->o(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object p1, p7

    :cond_3
    invoke-interface {p2, p1, p3, p4}, Lcom/google/protobuf/Reader;->H(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-object p6

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/protobuf/Reader;->x(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_f
    iget-boolean p1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Z

    if-nez p1, :cond_6

    invoke-virtual {p5, p0}, Lcom/google/protobuf/FieldSet;->f(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    instance-of p7, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_6

    sget-object p3, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/Protobuf;->b(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object p3

    move-object p7, p1

    check-cast p7, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p7}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p7

    if-nez p7, :cond_5

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p7

    invoke-interface {p3, p7, p1}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p0, p7}, Lcom/google/protobuf/FieldSet;->o(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object p1, p7

    :cond_5
    invoke-interface {p2, p1, p3, p4}, Lcom/google/protobuf/Reader;->y(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-object p6

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/protobuf/Reader;->o(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_10
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->E()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_11
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->r()Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->D()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_14
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_15
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_16
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->K()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_17
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_18
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :pswitch_19
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_1a
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_1b
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_1c
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->v()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_1d
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->N()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_1e
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :pswitch_1f
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_1
    iget-boolean p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Z

    if-eqz p2, :cond_7

    invoke-virtual {p5, p0, p1}, Lcom/google/protobuf/FieldSet;->a(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object p2, Lcom/google/protobuf/ExtensionSchemaLite$1;->a:[I

    iget-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/16 p3, 0x11

    if-eq p2, p3, :cond_8

    const/16 p3, 0x12

    if-eq p2, p3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p0}, Lcom/google/protobuf/FieldSet;->f(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    check-cast p2, Lcom/google/protobuf/MessageLite;

    invoke-interface {p2}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p2

    check-cast p1, Lcom/google/protobuf/MessageLite;

    invoke-interface {p2, p1}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-virtual {p5, p0, p1}, Lcom/google/protobuf/FieldSet;->o(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_3
    return-object p6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final h(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object p0, p2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->c:Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/google/protobuf/Reader;->x(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->d:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p1, p0}, Lcom/google/protobuf/FieldSet;->o(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    iget-object p0, p2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->c:Lcom/google/protobuf/MessageLite;

    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->y()Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    iget-object p2, p2, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->d:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {p0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Lcom/google/protobuf/FieldSet;->o(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/CodedInputStream;->a(I)V

    return-void
.end method

.method public final j(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->d:Z

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->c:Lcom/google/protobuf/WireFormat$FieldType;

    iget v2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->b:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/ExtensionSchemaLite$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    iget-boolean p0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->e:Z

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p0

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p0

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {v2, p0, p1}, Lcom/google/protobuf/SchemaUtil;->T(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {v2, p0, p1}, Lcom/google/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->S(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->R(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->Q(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->U(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->V(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v2, p2, p1, p0}, Lcom/google/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/google/protobuf/ExtensionSchemaLite$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_12
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p2

    invoke-interface {p1, v2, p0, p2}, Lcom/google/protobuf/Writer;->w(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p2

    invoke-interface {p1, v2, p0, p2}, Lcom/google/protobuf/Writer;->i(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->f(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->k(II)V

    goto/16 :goto_0

    :pswitch_17
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/protobuf/Writer;->q(IJ)V

    goto/16 :goto_0

    :pswitch_18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->O(II)V

    goto/16 :goto_0

    :pswitch_19
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/protobuf/Writer;->m(IJ)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->D(II)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->t(II)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->C(IZ)V

    goto :goto_0

    :pswitch_1d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->d(II)V

    goto :goto_0

    :pswitch_1e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/protobuf/Writer;->x(IJ)V

    goto :goto_0

    :pswitch_1f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v2, p0}, Lcom/google/protobuf/Writer;->k(II)V

    goto :goto_0

    :pswitch_20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/protobuf/Writer;->g(IJ)V

    goto :goto_0

    :pswitch_21
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/protobuf/Writer;->B(IJ)V

    goto :goto_0

    :pswitch_22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p1, p0, v2}, Lcom/google/protobuf/Writer;->A(FI)V

    goto :goto_0

    :pswitch_23
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/protobuf/Writer;->l(DI)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
