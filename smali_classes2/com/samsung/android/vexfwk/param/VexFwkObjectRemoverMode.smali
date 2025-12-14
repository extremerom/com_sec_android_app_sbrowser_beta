.class public final enum Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0081\u0002\u0018\u0000 \u000e2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rj\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;",
        "Landroid/os/Parcelable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "Ldb/r;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "Companion",
        "LOW_QUALITY",
        "HIGH_QUALITY",
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
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum HIGH_QUALITY:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

.field public static final enum LOW_QUALITY:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;
    .locals 2

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->LOW_QUALITY:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    sget-object v1, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->HIGH_QUALITY:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    filled-new-array {v0, v1}, [Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    const-string v1, "LOW_QUALITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->LOW_QUALITY:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    const-string v1, "HIGH_QUALITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->HIGH_QUALITY:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    invoke-static {}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->$values()[Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->$VALUES:[Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->Companion:Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Companion;

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Creator;

    invoke-direct {v0}, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Llb/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;
    .locals 1

    const-class v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;->$VALUES:[Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/vexfwk/param/VexFwkObjectRemoverMode;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dest"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
