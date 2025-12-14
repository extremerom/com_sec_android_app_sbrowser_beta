.class public final enum Lm9/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lm9/b;

.field public static final enum Common:Lm9/b;

.field public static final enum Input:Lm9/b;

.field public static final enum Mono:Lm9/b;

.field public static final enum Processing:Lm9/b;


# instance fields
.field private final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lm9/b;

    sget v1, Lm9/d;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lm9/d;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lm9/d;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v4, v5, v7}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "Common"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2}, Lm9/b;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    sput-object v0, Lm9/b;->Common:Lm9/b;

    new-instance v2, Lm9/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v7, Lm9/d;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v7, v6}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "Input"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v4}, Lm9/b;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    sput-object v2, Lm9/b;->Input:Lm9/b;

    new-instance v4, Lm9/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v6, Lm9/d;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v5, v3, v6}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v3, "Processing"

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v1}, Lm9/b;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    sput-object v4, Lm9/b;->Processing:Lm9/b;

    new-instance v1, Lm9/b;

    sget v3, Lm9/d;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v6, v7, v3}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, "Mono"

    const/4 v6, 0x3

    invoke-direct {v1, v5, v6, v3}, Lm9/b;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    sput-object v1, Lm9/b;->Mono:Lm9/b;

    filled-new-array {v0, v2, v4, v1}, [Lm9/b;

    move-result-object v0

    sput-object v0, Lm9/b;->$VALUES:[Lm9/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lm9/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lm9/b;->colors:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm9/b;
    .locals 1

    const-class v0, Lm9/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm9/b;

    return-object p0
.end method

.method public static values()[Lm9/b;
    .locals 1

    sget-object v0, Lm9/b;->$VALUES:[Lm9/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm9/b;

    return-object v0
.end method


# virtual methods
.method public final a(F)Ljava/util/ArrayList;
    .locals 30

    move-object/from16 v0, p0

    new-instance v7, Lm9/i;

    iget-object v1, v0, Lm9/b;->colors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lm9/d;->v:Landroid/graphics/PointF;

    sget v4, Lm9/d;->m:F

    sget-wide v15, Lm9/d;->o:J

    sget v17, Lm9/d;->q:F

    sget v18, Lm9/d;->p:F

    sget-object v19, Lm9/d;->z:Landroid/view/animation/PathInterpolator;

    new-instance v5, Lm9/h;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object v8, v5

    move-wide v9, v15

    move-object/from16 v11, v19

    move/from16 v14, p1

    invoke-direct/range {v8 .. v14}, Lm9/h;-><init>(JLandroid/view/animation/PathInterpolator;Ljava/lang/Float;Ljava/lang/Float;F)V

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lm9/i;-><init>(ILandroid/graphics/PointF;FLm9/h;I)V

    new-instance v1, Lm9/i;

    iget-object v2, v0, Lm9/b;->colors:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    sget-object v10, Lm9/d;->w:Landroid/graphics/PointF;

    sget v23, Lm9/d;->l:F

    const/16 v13, 0x11

    const/4 v12, 0x0

    move-object v8, v1

    move/from16 v11, v23

    invoke-direct/range {v8 .. v13}, Lm9/i;-><init>(ILandroid/graphics/PointF;FLm9/h;I)V

    new-instance v2, Lm9/i;

    iget-object v3, v0, Lm9/b;->colors:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v25

    sget-object v26, Lm9/d;->x:Landroid/graphics/PointF;

    sget v27, Lm9/d;->n:F

    const/16 v29, 0x11

    const/16 v28, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v29}, Lm9/i;-><init>(ILandroid/graphics/PointF;FLm9/h;I)V

    new-instance v3, Lm9/i;

    iget-object v0, v0, Lm9/b;->colors:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v21

    sget-object v22, Lm9/d;->y:Landroid/graphics/PointF;

    new-instance v24, Lm9/h;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v8, v24

    move-wide v9, v15

    move-object/from16 v11, v19

    move/from16 v14, p1

    invoke-direct/range {v8 .. v14}, Lm9/h;-><init>(JLandroid/view/animation/PathInterpolator;Ljava/lang/Float;Ljava/lang/Float;F)V

    const/16 v25, 0x1

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v25}, Lm9/i;-><init>(ILandroid/graphics/PointF;FLm9/h;I)V

    filled-new-array {v7, v2, v3, v1}, [Lm9/i;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lm9/b;->colors:Ljava/util/List;

    return-object p0
.end method
