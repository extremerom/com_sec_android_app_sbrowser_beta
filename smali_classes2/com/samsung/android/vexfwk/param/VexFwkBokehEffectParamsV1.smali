.class public final Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Companion;,
        Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0001/B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000b\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u001f\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\"R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u001f\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\"R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00060"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;",
        "Landroid/os/Parcelable;",
        "Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;",
        "effectTypeId",
        "",
        "effectLevel",
        "reLightLevel",
        "Lcom/samsung/android/vexfwk/param/VexFwkOrientation;",
        "imageOrientation",
        "",
        "saveAsFlip",
        "<init>",
        "(Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;IILcom/samsung/android/vexfwk/param/VexFwkOrientation;Z)V",
        "Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;",
        "effectParams",
        "(Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;)V",
        "convertToVexFwkBokehEffectParams",
        "()Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "Ldb/r;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;",
        "getEffectTypeId",
        "()Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;",
        "setEffectTypeId",
        "(Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;)V",
        "I",
        "getEffectLevel",
        "setEffectLevel",
        "(I)V",
        "getReLightLevel",
        "setReLightLevel",
        "Lcom/samsung/android/vexfwk/param/VexFwkOrientation;",
        "getImageOrientation",
        "()Lcom/samsung/android/vexfwk/param/VexFwkOrientation;",
        "setImageOrientation",
        "(Lcom/samsung/android/vexfwk/param/VexFwkOrientation;)V",
        "Z",
        "getSaveAsFlip",
        "()Z",
        "setSaveAsFlip",
        "(Z)V",
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
            "Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private effectLevel:I

.field private effectTypeId:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageOrientation:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private reLightLevel:I

.field private saveAsFlip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->Companion:Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Companion;

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Creator;

    invoke-direct {v0}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;IILcom/samsung/android/vexfwk/param/VexFwkOrientation;Z)V
    .locals 1
    .param p1    # Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/vexfwk/param/VexFwkOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "effectTypeId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageOrientation"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectTypeId:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    iput p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectLevel:I

    iput p3, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->reLightLevel:I

    iput-object p4, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->imageOrientation:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    iput-boolean p5, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->saveAsFlip:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;)V
    .locals 7
    .param p1    # Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "effectParams"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;->getEffectTypeId()Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;->getEffectLevel()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;->getReLightLevel()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;->getImageOrientation()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkOrientation;->ORIENTATION_ROTATE_0:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;->getImageOrientation()I

    move-result p1

    const-string v0, "Not supported image orientation "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkOrientation;->ORIENTATION_ROTATE_270:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkOrientation;->ORIENTATION_ROTATE_180:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkOrientation;->ORIENTATION_ROTATE_90:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;->getSaveAsFlip()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    move v6, p1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;-><init>(Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;IILcom/samsung/android/vexfwk/param/VexFwkOrientation;Z)V

    return-void
.end method


# virtual methods
.method public final convertToVexFwkBokehEffectParams()Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;

    iget-object v1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectTypeId:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    iget v2, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectLevel:I

    iget-object v0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->imageOrientation:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    sget-object v3, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/16 v0, 0xb4

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x10e

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->saveAsFlip:Z

    iget v5, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->reLightLevel:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParams;-><init>(Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;IIII)V

    return-object v6
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getEffectLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectLevel:I

    return p0
.end method

.method public final getEffectTypeId()Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectTypeId:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    return-object p0
.end method

.method public final getImageOrientation()Lcom/samsung/android/vexfwk/param/VexFwkOrientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->imageOrientation:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    return-object p0
.end method

.method public final getReLightLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->reLightLevel:I

    return p0
.end method

.method public final getSaveAsFlip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->saveAsFlip:Z

    return p0
.end method

.method public final setEffectLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectLevel:I

    return-void
.end method

.method public final setEffectTypeId(Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;)V
    .locals 1
    .param p1    # Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectTypeId:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    return-void
.end method

.method public final setImageOrientation(Lcom/samsung/android/vexfwk/param/VexFwkOrientation;)V
    .locals 1
    .param p1    # Lcom/samsung/android/vexfwk/param/VexFwkOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->imageOrientation:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    return-void
.end method

.method public final setReLightLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->reLightLevel:I

    return-void
.end method

.method public final setSaveAsFlip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->saveAsFlip:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dest"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectTypeId:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->effectLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->reLightLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->imageOrientation:Lcom/samsung/android/vexfwk/param/VexFwkOrientation;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkBokehEffectParamsV1;->saveAsFlip:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
