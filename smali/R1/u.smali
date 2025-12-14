.class public final enum LR1/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LR1/u;

.field public static final enum LeftLeaf:LR1/u;

.field public static final enum LeftSpeechBalloon:LR1/u;

.field public static final enum None:LR1/u;

.field public static final enum RightLeaf:LR1/u;

.field public static final enum RightSpeechBalloon:LR1/u;


# instance fields
.field private final bottomLeftRadius:I

.field private final bottomRightRadius:I

.field private final resId:I

.field private final topLeftRadius:I

.field private final topRightRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v8, LR1/u;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LR1/u;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, LR1/u;->None:LR1/u;

    new-instance v0, LR1/u;

    const v13, 0x7f07116d

    const v14, 0x7f07116e

    const-string v10, "LeftLeaf"

    const/4 v11, 0x1

    const v12, 0x7f08067f

    const v15, 0x7f07116c

    const v16, 0x7f07116b

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, LR1/u;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, LR1/u;->LeftLeaf:LR1/u;

    new-instance v1, LR1/u;

    const v21, 0x7f071175

    const v22, 0x7f071176

    const-string v18, "RightLeaf"

    const/16 v19, 0x2

    const v20, 0x7f080681

    const v23, 0x7f071174

    const v24, 0x7f071173

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, LR1/u;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, LR1/u;->RightLeaf:LR1/u;

    new-instance v2, LR1/u;

    const v13, 0x7f071171

    const v14, 0x7f071172

    const-string v10, "LeftSpeechBalloon"

    const/4 v11, 0x3

    const v12, 0x7f080680

    const v15, 0x7f071170

    const v16, 0x7f07116f

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, LR1/u;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v2, LR1/u;->LeftSpeechBalloon:LR1/u;

    new-instance v3, LR1/u;

    const v21, 0x7f071179

    const v22, 0x7f07117a

    const-string v18, "RightSpeechBalloon"

    const/16 v19, 0x4

    const v20, 0x7f080682

    const v23, 0x7f071178

    const v24, 0x7f071177

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, LR1/u;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, LR1/u;->RightSpeechBalloon:LR1/u;

    filled-new-array {v8, v0, v1, v2, v3}, [LR1/u;

    move-result-object v0

    sput-object v0, LR1/u;->$VALUES:[LR1/u;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LR1/u;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LR1/u;->resId:I

    iput p4, p0, LR1/u;->topLeftRadius:I

    iput p5, p0, LR1/u;->topRightRadius:I

    iput p6, p0, LR1/u;->bottomRightRadius:I

    iput p7, p0, LR1/u;->bottomLeftRadius:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR1/u;
    .locals 1

    const-class v0, LR1/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR1/u;

    return-object p0
.end method

.method public static values()[LR1/u;
    .locals 1

    sget-object v0, LR1/u;->$VALUES:[LR1/u;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR1/u;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, LR1/u;->resId:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LR1/t;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const-string p0, "rightspeechballoon"

    goto :goto_0

    :cond_1
    const-string p0, "leftspeechballoon"

    goto :goto_0

    :cond_2
    const-string p0, "rightleaf"

    goto :goto_0

    :cond_3
    const-string p0, "leftleaf"

    :goto_0
    return-object p0
.end method
