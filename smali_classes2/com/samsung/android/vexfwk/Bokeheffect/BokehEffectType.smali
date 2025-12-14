.class public final enum Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "EFFECT_TYPE_BOKEH_LENS",
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

.field private static final synthetic $VALUES:[Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

.field public static final enum EFFECT_TYPE_BOKEH_LENS:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->EFFECT_TYPE_BOKEH_LENS:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    filled-new-array {v0}, [Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    const-string v1, "EFFECT_TYPE_BOKEH_LENS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->EFFECT_TYPE_BOKEH_LENS:Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    invoke-static {}, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->$values()[Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->$VALUES:[Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->$ENTRIES:Llb/a;

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

    iput p3, p0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->value:I

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

    sget-object v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
    .locals 1

    const-class v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->$VALUES:[Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/Bokeheffect/BokehEffectType;->value:I

    return p0
.end method
