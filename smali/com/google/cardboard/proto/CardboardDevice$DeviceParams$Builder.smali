.class public final Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/cardboard/proto/CardboardDevice$DeviceParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;",
        ">;",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParamsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->D()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDistortionCoefficients(Ljava/lang/Iterable;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->f(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLeftEyeFieldOfViewAngles(Ljava/lang/Iterable;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->g(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDistortionCoefficients(F)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->h(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V

    return-object p0
.end method

.method public addLeftEyeFieldOfViewAngles(F)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->i(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V

    return-object p0
.end method

.method public clearDistortionCoefficients()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->j(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearInterLensDistance()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->k(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearLeftEyeFieldOfViewAngles()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->l(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearModel()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->m(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearPrimaryButton()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->n(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearScreenToLensDistance()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->o(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearTrayToLensDistance()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->p(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearVendor()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->q(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public clearVerticalAlignment()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->r(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;)V

    return-object p0
.end method

.method public getDistortionCoefficients(I)F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getDistortionCoefficients(I)F

    move-result p0

    return p0
.end method

.method public getDistortionCoefficientsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getDistortionCoefficientsCount()I

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

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getDistortionCoefficientsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInterLensDistance()F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getInterLensDistance()F

    move-result p0

    return p0
.end method

.method public getLeftEyeFieldOfViewAngles(I)F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getLeftEyeFieldOfViewAngles(I)F

    move-result p0

    return p0
.end method

.method public getLeftEyeFieldOfViewAnglesCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getLeftEyeFieldOfViewAnglesCount()I

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

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getLeftEyeFieldOfViewAnglesList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryButton()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getPrimaryButton()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    move-result-object p0

    return-object p0
.end method

.method public getScreenToLensDistance()F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getScreenToLensDistance()F

    move-result p0

    return p0
.end method

.method public getTrayToLensDistance()F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getTrayToLensDistance()F

    move-result p0

    return p0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getVendor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVendorBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getVendorBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalAlignment()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->getVerticalAlignment()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;

    move-result-object p0

    return-object p0
.end method

.method public hasInterLensDistance()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasInterLensDistance()Z

    move-result p0

    return p0
.end method

.method public hasModel()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasModel()Z

    move-result p0

    return p0
.end method

.method public hasPrimaryButton()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasPrimaryButton()Z

    move-result p0

    return p0
.end method

.method public hasScreenToLensDistance()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasScreenToLensDistance()Z

    move-result p0

    return p0
.end method

.method public hasTrayToLensDistance()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasTrayToLensDistance()Z

    move-result p0

    return p0
.end method

.method public hasVendor()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasVendor()Z

    move-result p0

    return p0
.end method

.method public hasVerticalAlignment()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-virtual {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->hasVerticalAlignment()Z

    move-result p0

    return p0
.end method

.method public setDistortionCoefficients(IF)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1, p2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->s(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;IF)V

    return-object p0
.end method

.method public setInterLensDistance(F)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->t(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V

    return-object p0
.end method

.method public setLeftEyeFieldOfViewAngles(IF)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1, p2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->u(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;IF)V

    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->v(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/String;)V

    return-object p0
.end method

.method public setModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->w(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrimaryButton(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->x(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;)V

    return-object p0
.end method

.method public setScreenToLensDistance(F)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->y(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V

    return-object p0
.end method

.method public setTrayToLensDistance(F)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->z(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;F)V

    return-object p0
.end method

.method public setVendor(Ljava/lang/String;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->A(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVendorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->B(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVerticalAlignment(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    invoke-static {v0, p1}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;->C(Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$VerticalAlignmentType;)V

    return-object p0
.end method
