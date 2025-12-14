.class Lorg/chromium/ui/modelutil/PropertyModelAnimatorFactory$PropertyModelFloatProp;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modelutil/PropertyModelAnimatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyModelFloatProp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lorg/chromium/ui/modelutil/PropertyModel;",
        ">;"
    }
.end annotation


# instance fields
.field final mKey:Lorg/chromium/ui/modelutil/PropertyModel$WritableFloatPropertyKey;


# virtual methods
.method public get(Lorg/chromium/ui/modelutil/PropertyModel;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModelAnimatorFactory$PropertyModelFloatProp;->mKey:Lorg/chromium/ui/modelutil/PropertyModel$WritableFloatPropertyKey;

    invoke-virtual {p1, p0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableFloatPropertyKey;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModelAnimatorFactory$PropertyModelFloatProp;->get(Lorg/chromium/ui/modelutil/PropertyModel;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modelutil/PropertyModelAnimatorFactory$PropertyModelFloatProp;->setValue(Lorg/chromium/ui/modelutil/PropertyModel;F)V

    return-void
.end method

.method public setValue(Lorg/chromium/ui/modelutil/PropertyModel;F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModelAnimatorFactory$PropertyModelFloatProp;->mKey:Lorg/chromium/ui/modelutil/PropertyModel$WritableFloatPropertyKey;

    invoke-virtual {p1, p0, p2}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableFloatPropertyKey;F)V

    return-void
.end method
