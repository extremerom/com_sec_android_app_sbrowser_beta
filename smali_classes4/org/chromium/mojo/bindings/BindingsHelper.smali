.class public Lorg/chromium/mojo/bindings/BindingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALIGNMENT:I = 0x8

.field public static final ARRAY_NULLABLE:I = 0x1

.field public static final ELEMENT_NULLABLE:I = 0x2

.field public static final MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

.field public static final NOTHING_NULLABLE:I = 0x0

.field public static final POINTER_SIZE:I = 0x8

.field public static final SERIALIZED_HANDLE_SIZE:I = 0x4

.field public static final SERIALIZED_INTERFACE_SIZE:I = 0x8

.field public static final UNION_SIZE:I = 0x10

.field public static final UNSPECIFIED_ARRAY_LENGTH:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public static align(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, -0x8

    return p0
.end method

.method public static align(J)J
    .locals 2

    const-wide/16 v0, 0x7

    add-long/2addr p0, v0

    const-wide/16 v0, -0x8

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static computeBitfieldSize(JI)I
    .locals 6

    const-wide/16 v0, 0x8

    mul-long/2addr v0, p0

    int-to-long v2, p2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    mul-long/2addr v2, p0

    long-to-int p0, v2

    return p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getWatcherForHandleNonNull(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/Watcher;
    .locals 0

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/Core;->getWatcher()Lorg/chromium/mojo/system/Watcher;

    move-result-object p0

    return-object p0
.end method

.method public static isArrayNullable(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isElementNullable(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
