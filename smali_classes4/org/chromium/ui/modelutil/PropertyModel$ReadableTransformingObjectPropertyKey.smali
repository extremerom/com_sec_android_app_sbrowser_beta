.class public Lorg/chromium/ui/modelutil/PropertyModel$ReadableTransformingObjectPropertyKey;
.super Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modelutil/PropertyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadableTransformingObjectPropertyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;"
    }
.end annotation


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
