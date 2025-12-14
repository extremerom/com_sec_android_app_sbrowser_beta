.class public final Lorg/chromium/mojo/bindings/DataHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ELEMENTS_OR_VERSION_OFFSET:I = 0x4

.field public static final HEADER_SIZE:I = 0x8

.field public static final SIZE_OFFSET:I


# instance fields
.field public final elementsOrVersion:I

.field public final size:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iput p2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/chromium/mojo/bindings/DataHeader;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/chromium/mojo/bindings/DataHeader;

    iget v2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v3, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    add-int/2addr v0, p0

    return v0
.end method
