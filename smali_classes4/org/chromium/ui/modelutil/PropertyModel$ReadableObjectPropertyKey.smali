.class public Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;
.super Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modelutil/PropertyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadableObjectPropertyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
