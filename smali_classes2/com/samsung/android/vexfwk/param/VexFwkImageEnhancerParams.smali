.class public final Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;",
        "Landroid/os/Parcelable;",
        "Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;",
        "enhanceType",
        "<init>",
        "(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "Ldb/r;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;",
        "copy",
        "(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;)Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;",
        "getEnhanceType",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->Companion:Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Companion;

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Creator;

    invoke-direct {v0}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;)V
    .locals 1
    .param p1    # Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "enhanceType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->copy(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;)Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;)Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;
    .locals 0
    .param p1    # Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "enhanceType"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;-><init>(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    iget-object p1, p1, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getEnhanceType()Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VexFwkImageEnhancerParams(enhanceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dest"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEnhancerParams;->enhanceType:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
