.class public final enum Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UPSCALE",
        "HDR",
        "DEBLUR",
        "DENOISE",
        "toString",
        "",
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


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

.field public static final Companion:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEBLUR:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

.field public static final enum DENOISE:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

.field public static final enum HDR:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

.field public static final enum UPSCALE:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
    .locals 4

    sget-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->UPSCALE:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    sget-object v1, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->HDR:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    sget-object v2, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->DEBLUR:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    sget-object v3, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->DENOISE:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    const-string v1, "UPSCALE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->UPSCALE:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    new-instance v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    const-string v1, "HDR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->HDR:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    new-instance v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    const-string v1, "DEBLUR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->DEBLUR:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    new-instance v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    const-string v1, "DENOISE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->DENOISE:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-static {}, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->$values()[Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->$VALUES:[Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->Companion:Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->value:I

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

    sget-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
    .locals 1

    const-class v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->$VALUES:[Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;->value:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
