.class public final Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;
.super Lorg/chromium/ui/modelutil/PropertyModel$ReadableLongPropertyKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modelutil/PropertyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WritableLongPropertyKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel$ReadableLongPropertyKey;-><init>(Ljava/lang/String;)V

    return-void
.end method
