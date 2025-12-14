.class public abstract Lz1/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:I

.field public static final c:I

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    sget-object v0, Lz1/K0;->Text:Lz1/K0;

    const v1, 0x7f0e03a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldb/j;

    invoke-direct {v2, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->List:Lz1/K0;

    const v1, 0x7f0e0353

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->CheckBox:Lz1/K0;

    const v1, 0x7f0e0250

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Ldb/j;

    invoke-direct {v4, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->CheckBoxBackport:Lz1/K0;

    const v1, 0x7f0e0251

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Ldb/j;

    invoke-direct {v5, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->Button:Lz1/K0;

    const v1, 0x7f0e0244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Ldb/j;

    invoke-direct {v6, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->Swtch:Lz1/K0;

    const v1, 0x7f0e0388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Ldb/j;

    invoke-direct {v7, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->SwtchBackport:Lz1/K0;

    const v1, 0x7f0e0389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Ldb/j;

    invoke-direct {v8, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->Frame:Lz1/K0;

    const v1, 0x7f0e029e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Ldb/j;

    invoke-direct {v9, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageCrop:Lz1/K0;

    const v1, 0x7f0e02f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Ldb/j;

    invoke-direct {v10, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageCropDecorative:Lz1/K0;

    const v1, 0x7f0e02f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Ldb/j;

    invoke-direct {v11, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageFit:Lz1/K0;

    const v1, 0x7f0e0322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v12, Ldb/j;

    invoke-direct {v12, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageFitDecorative:Lz1/K0;

    const v1, 0x7f0e0326

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Ldb/j;

    invoke-direct {v13, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageFillBounds:Lz1/K0;

    const v1, 0x7f0e030a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v14, Ldb/j;

    invoke-direct {v14, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageFillBoundsDecorative:Lz1/K0;

    const v1, 0x7f0e030e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->LinearProgressIndicator:Lz1/K0;

    const v1, 0x7f0e033b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v16, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->CircularProgressIndicator:Lz1/K0;

    const v1, 0x7f0e026b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->VerticalGridOneColumn:Lz1/K0;

    const v1, 0x7f0e0424

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->VerticalGridTwoColumns:Lz1/K0;

    const v1, 0x7f0e043c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v19, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->VerticalGridThreeColumns:Lz1/K0;

    const v1, 0x7f0e0430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->VerticalGridFourColumns:Lz1/K0;

    const v1, 0x7f0e0418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v21, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->VerticalGridFiveColumns:Lz1/K0;

    const v1, 0x7f0e040c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v22, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->VerticalGridAutoFit:Lz1/K0;

    const v1, 0x7f0e0400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v23, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->RadioButton:Lz1/K0;

    const v1, 0x7f0e035f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v24, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->RadioButtonBackport:Lz1/K0;

    const v1, 0x7f0e0360

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v25, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ArcProgressIndicatorLarge:Lz1/K0;

    const v1, 0x7f0e0238

    move-object/from16 v26, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v1, Ldb/j;

    invoke-direct {v1, v0, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ArcProgressIndicatorMedium:Lz1/K0;

    move-object/from16 v27, v1

    const v15, 0x7f0e0238

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ArcProgressIndicatorSmall:Lz1/K0;

    const v1, 0x7f0e0238

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v28, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->CircularProgressIndicatorLarge:Lz1/K0;

    const v1, 0x7f0e0273

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v29, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->CircularProgressIndicatorMedium:Lz1/K0;

    const v1, 0x7f0e027f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v30, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->CircularProgressIndicatorSmall:Lz1/K0;

    const v1, 0x7f0e028b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v31, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageButtonCrop:Lz1/K0;

    const v1, 0x7f0e02aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v32, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageButtonCropDecorative:Lz1/K0;

    const v1, 0x7f0e02ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v33, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageButtonFit:Lz1/K0;

    const v1, 0x7f0e02da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v34, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageButtonFitDecorative:Lz1/K0;

    const v1, 0x7f0e02de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v35, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageButtonFillBounds:Lz1/K0;

    const v1, 0x7f0e02c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v36, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->ImageButtonFillBoundsDecorative:Lz1/K0;

    const v1, 0x7f0e02c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v37, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->LinearProgressIndicatorDeterminate:Lz1/K0;

    const v1, 0x7f0e033f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v38, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->StackedProgressIndicator:Lz1/K0;

    const v1, 0x7f0e0379

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v39, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextFirstStrong:Lz1/K0;

    const v1, 0x7f0e03d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v40, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextAutoSize:Lz1/K0;

    const v1, 0x7f0e03a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v41, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextDisplay:Lz1/K0;

    const v1, 0x7f0e03c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v42, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextTitle:Lz1/K0;

    const v1, 0x7f0e03f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v43, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextBody:Lz1/K0;

    const v1, 0x7f0e03ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v44, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextDescription:Lz1/K0;

    const v1, 0x7f0e03bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v45, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lz1/K0;->TextLabel:Lz1/K0;

    const v1, 0x7f0e03e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v46, v15

    new-instance v15, Ldb/j;

    invoke-direct {v15, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v47, v15

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    filled-new-array/range {v2 .. v46}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz1/H0;->a:Ljava/lang/Object;

    sget-object v0, Lz1/P;->f:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sput v0, Lz1/H0;->b:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    sget v0, Lz1/P;->h:I

    goto :goto_0

    :cond_0
    sget v1, Lz1/P;->h:I

    div-int v0, v1, v0

    :goto_0
    sput v0, Lz1/H0;->c:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight1:Lz1/K0;

    new-instance v2, Ldb/j;

    invoke-direct {v2, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight2:Lz1/K0;

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight3:Lz1/K0;

    new-instance v4, Ldb/j;

    invoke-direct {v4, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight4:Lz1/K0;

    new-instance v5, Ldb/j;

    invoke-direct {v5, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight5:Lz1/K0;

    new-instance v6, Ldb/j;

    invoke-direct {v6, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight45:Lz1/K0;

    new-instance v7, Ldb/j;

    invoke-direct {v7, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz1/K0;->FrameWeight55:Lz1/K0;

    new-instance v8, Ldb/j;

    invoke-direct {v8, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v8}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz1/H0;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lz1/f1;Lx1/r;I)Lz1/P0;
    .locals 7

    const-string v0, "modifier"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    iget-object p0, p0, Lz1/f1;->a:Landroid/content/Context;

    const/16 v2, 0x1f

    const v3, 0x7f0b0a15

    const-string v4, ", currently "

    const-string v5, "Index of the root view cannot be more than "

    const/4 v6, 0x0

    if-lt v0, v2, :cond_5

    sget v2, Lz1/P;->h:I

    if-ge p2, v2, :cond_4

    new-instance v2, Lz1/c1;

    sget-object v4, Lz1/I0;->Wrap:Lz1/I0;

    invoke-direct {v2, v4, v4}, Lz1/c1;-><init>(Lz1/I0;Lz1/I0;)V

    sget v4, Lz1/P;->g:I

    add-int/2addr v4, p2

    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v4, Lz1/y0;->e:Lz1/y0;

    invoke-interface {p1, v6, v4}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LK1/w;

    const v5, 0x7f0b0a16

    if-eqz v4, :cond_0

    invoke-static {p0, p2, v4, v5}, LG5/L2;->d(Landroid/content/Context;Landroid/widget/RemoteViews;LK1/w;I)V

    :cond_0
    sget-object v4, Lz1/y0;->f:Lz1/y0;

    invoke-interface {p1, v6, v4}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK1/p;

    if-eqz p1, :cond_1

    invoke-static {p0, p2, p1, v5}, LG5/L2;->c(Landroid/content/Context;Landroid/widget/RemoteViews;LK1/p;I)V

    :cond_1
    const/16 p0, 0x21

    if-lt v0, p0, :cond_2

    invoke-virtual {p2, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    :cond_2
    new-instance p1, Lz1/z0;

    if-lt v0, p0, :cond_3

    sget-object p0, Lfb/w;->a:Lfb/w;

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Ldb/j;

    invoke-direct {v3, v2, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ldb/j;

    invoke-direct {v2, p0, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p1, v5, v1, p0, v0}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    new-instance p0, Lz1/P0;

    invoke-direct {p0, p2, p1}, Lz1/P0;-><init>(Landroid/widget/RemoteViews;Lz1/z0;)V

    return-object p0

    :cond_4
    invoke-static {v2, v5, p2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget v0, Lz1/H0;->b:I

    mul-int/2addr v0, p2

    sget v2, Lz1/P;->h:I

    if-ge v0, v2, :cond_d

    sget-object p2, Lz1/y0;->c:Lz1/y0;

    invoke-interface {p1, v6, p2}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LK1/w;

    sget-object v2, Lf2/g;->a:Lf2/g;

    if-eqz p2, :cond_6

    iget-object p2, p2, LK1/w;->a:Lf2/h;

    invoke-static {p2, p0}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object p2

    goto :goto_1

    :cond_6
    move-object p2, v2

    :goto_1
    sget-object v4, Lz1/y0;->d:Lz1/y0;

    invoke-interface {p1, v6, v4}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK1/p;

    if-eqz p1, :cond_7

    iget-object p1, p1, LK1/p;->a:Lf2/h;

    invoke-static {p1, p0}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object v2

    :cond_7
    sget-object p1, Lf2/e;->a:Lf2/e;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lz1/I0;->MatchParent:Lz1/I0;

    goto :goto_2

    :cond_8
    sget-object p2, Lz1/I0;->Wrap:Lz1/I0;

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lz1/I0;->MatchParent:Lz1/I0;

    goto :goto_3

    :cond_9
    sget-object p1, Lz1/I0;->Wrap:Lz1/I0;

    :goto_3
    new-instance v2, Lz1/c1;

    sget-object v4, Lz1/I0;->Fixed:Lz1/I0;

    if-ne p2, v4, :cond_a

    sget-object v5, Lz1/I0;->Wrap:Lz1/I0;

    goto :goto_4

    :cond_a
    move-object v5, p2

    :goto_4
    if-ne p1, v4, :cond_b

    sget-object v4, Lz1/I0;->Wrap:Lz1/I0;

    goto :goto_5

    :cond_b
    move-object v4, p1

    :goto_5
    invoke-direct {v2, v5, v4}, Lz1/c1;-><init>(Lz1/I0;Lz1/I0;)V

    sget-object v4, Lz1/P;->f:Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lz1/P;->g:I

    add-int/2addr v0, p2

    add-int/2addr v0, p1

    new-instance p1, Lz1/P0;

    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lz1/z0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ldb/j;

    invoke-direct {v4, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v1, v0, v2}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    invoke-direct {p1, p2, p0}, Lz1/P0;-><init>(Landroid/widget/RemoteViews;Lz1/z0;)V

    return-object p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find root element for size ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    div-int/lit8 v2, v2, 0x4

    invoke-static {v2, v5, p2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;ILx1/r;LK1/a;LK1/b;)Lz1/z0;
    .locals 5

    const-string v0, "type"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifier"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-le p3, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Truncated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " container from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 10 elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " container cannot have more than 10 elements"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "msg"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GWT:LayoutSelection"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-le p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    invoke-static {p2, p4}, Lz1/H0;->g(Lz1/K0;Lx1/r;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    sget-object v1, Lz1/P;->a:Ljava/util/Map;

    new-instance v2, Lz1/E;

    invoke-direct {v2, p2, v0, p5, p6}, Lz1/E;-><init>(Lz1/K0;ILK1/a;LK1/b;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lz1/D;

    if-eqz p5, :cond_3

    iget p5, p5, Lz1/D;->a:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_2
    sget-object p5, Lz1/P;->b:Ljava/util/Map;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map;

    if-eqz p5, :cond_5

    invoke-static {p0, p1, p3, p4}, Lz1/H0;->d(Landroid/widget/RemoteViews;Lz1/f1;ILx1/r;)Lz1/z0;

    move-result-object p1

    new-instance p2, Lz1/z0;

    iget p3, p1, Lz1/z0;->b:I

    iget p1, p1, Lz1/z0;->a:I

    invoke-direct {p2, p1, p3, p5}, Lz1/z0;-><init>(IILjava/util/Map;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    if-lt p3, p4, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    :cond_4
    return-object p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot find generated children for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Cannot find container "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " children"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;Lx1/r;)Lz1/z0;
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifier"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lz1/H0;->g(Lz1/K0;Lx1/r;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_0
    sget-object v0, Lz1/H0;->a:Ljava/lang/Object;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lz1/H0;->d(Landroid/widget/RemoteViews;Lz1/f1;ILx1/r;)Lz1/z0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot use `insertView` with a container like "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Landroid/widget/RemoteViews;Lz1/f1;ILx1/r;)Lz1/z0;
    .locals 10

    sget-object v0, Lz1/y0;->g:Lz1/y0;

    const/4 v1, 0x0

    invoke-interface {p3, v1, v0}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK1/w;

    sget-object v2, Lf2/g;->a:Lf2/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, LK1/w;->a:Lf2/h;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    sget-object v3, Lz1/y0;->h:Lz1/y0;

    invoke-interface {p3, v1, v3}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK1/p;

    if-eqz v3, :cond_1

    iget-object v2, v3, LK1/p;->a:Lf2/h;

    :cond_1
    invoke-interface {p3}, Lx1/r;->c()Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p3, v1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    iget-object v3, p1, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-nez p3, :cond_c

    const/high16 p3, 0x1020000

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x6

    iget v7, p1, Lz1/f1;->e:I

    const/16 v8, 0x21

    iget-object v9, p1, Lz1/f1;->a:Landroid/content/Context;

    if-lt v3, v8, :cond_5

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_3
    iget-object p3, p1, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    sput p3, LG5/X2;->a:I

    move p3, v0

    :goto_2
    sget-object v0, Lz1/G0;->a:Lz1/G0;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "getPackageName(...)"

    invoke-static {v2, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2, p3}, Lz1/G0;->a(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object p2

    iget-object p1, p1, Lz1/f1;->h:Lz1/z0;

    iget p1, p1, Lz1/z0;->a:I

    const-string v0, "childView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-lt v3, v4, :cond_4

    sget-object v0, Lz1/R0;->a:Lz1/R0;

    invoke-virtual {v0, p0, p1, p2, v7}, Lz1/R0;->a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :goto_3
    new-instance p0, Lz1/z0;

    invoke-direct {p0, p3, v5, v1, v6}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    return-object p0

    :cond_5
    if-lt v3, v4, :cond_8

    sget-object v3, Lf2/d;->a:Lf2/d;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lz1/I0;->Expand:Lz1/I0;

    goto :goto_4

    :cond_6
    sget-object v0, Lz1/I0;->Wrap:Lz1/I0;

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lz1/I0;->Expand:Lz1/I0;

    goto :goto_5

    :cond_7
    sget-object v2, Lz1/I0;->Wrap:Lz1/I0;

    :goto_5
    invoke-static {p0, p1, v7, v0, v2}, Lz1/H0;->f(Landroid/widget/RemoteViews;Lz1/f1;ILz1/I0;Lz1/I0;)I

    move-result v0

    invoke-static {p0, p1, v0, p2, p3}, LG5/Z2;->c(Landroid/widget/RemoteViews;Lz1/f1;IILjava/lang/Integer;)I

    move-result p0

    new-instance p1, Lz1/z0;

    invoke-direct {p1, p0, v5, v1, v6}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    return-object p1

    :cond_8
    invoke-static {v0, v9}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object v0

    invoke-static {v0}, Lz1/H0;->h(Lf2/h;)Lz1/I0;

    move-result-object v0

    invoke-static {v2, v9}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object v2

    invoke-static {v2}, Lz1/H0;->h(Lf2/h;)Lz1/I0;

    move-result-object v2

    invoke-static {p0, p1, v7, v0, v2}, Lz1/H0;->f(Landroid/widget/RemoteViews;Lz1/f1;ILz1/I0;Lz1/I0;)I

    move-result v3

    sget-object v4, Lz1/I0;->Fixed:Lz1/I0;

    if-eq v0, v4, :cond_a

    if-ne v2, v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {p0, p1, v3, p2, p3}, LG5/Z2;->c(Landroid/widget/RemoteViews;Lz1/f1;IILjava/lang/Integer;)I

    move-result p0

    new-instance p1, Lz1/z0;

    invoke-direct {p1, p0, v5, v1, v6}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    goto :goto_7

    :cond_a
    :goto_6
    sget-object v4, Lz1/P;->e:Ljava/lang/Object;

    new-instance v5, Lz1/c1;

    invoke-direct {v5, v0, v2}, Lz1/c1;-><init>(Lz1/I0;Lz1/I0;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/F0;

    if-eqz v4, :cond_b

    iget v0, v4, Lz1/F0;->a:I

    invoke-static {p0, p1, v3, v0, v1}, LG5/Z2;->c(Landroid/widget/RemoteViews;Lz1/f1;IILjava/lang/Integer;)I

    move-result v0

    const v2, 0x7f0b054e

    invoke-static {p0, p1, v2, p2, p3}, LG5/Z2;->c(Landroid/widget/RemoteViews;Lz1/f1;IILjava/lang/Integer;)I

    move-result p0

    new-instance p1, Lz1/z0;

    const/4 p2, 0x4

    invoke-direct {p1, p0, v0, v1, p2}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    :goto_7
    return-object p1

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not find complex layout for width="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "At most one view can be set as AppWidgetBackground."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Lf2/h;Landroid/content/Context;)Lf2/h;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lf2/f;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p0, Lf2/f;

    iget p0, p0, Lf2/f;->a:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v0, p0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lf2/c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    invoke-direct {v0, p0}, Lf2/c;-><init>(F)V

    goto :goto_0

    :cond_1
    sget-object v0, Lf2/e;->a:Lf2/e;

    goto :goto_0

    :cond_2
    sget-object v0, Lf2/g;->a:Lf2/g;

    :goto_0
    return-object v0
.end method

.method public static final f(Landroid/widget/RemoteViews;Lz1/f1;ILz1/I0;Lz1/I0;)I
    .locals 3

    new-instance v0, Lz1/c1;

    sget-object v1, Lz1/I0;->Fixed:Lz1/I0;

    if-ne p3, v1, :cond_0

    sget-object v2, Lz1/I0;->Wrap:Lz1/I0;

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    if-ne p4, v1, :cond_1

    sget-object v1, Lz1/I0;->Wrap:Lz1/I0;

    goto :goto_1

    :cond_1
    move-object v1, p4

    :goto_1
    invoke-direct {v0, v2, v1}, Lz1/c1;-><init>(Lz1/I0;Lz1/I0;)V

    iget-object v1, p1, Lz1/f1;->h:Lz1/z0;

    iget-object v1, v1, Lz1/z0;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_2

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    const v0, 0x7f0b03e6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0e029c

    invoke-static {p0, p1, p4, v1, v0}, LG5/Z2;->c(Landroid/widget/RemoteViews;Lz1/f1;IILjava/lang/Integer;)I

    goto :goto_3

    :cond_4
    return p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No child for position "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Parent doesn\'t have child position "

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Lz1/K0;Lx1/r;)Ljava/lang/Integer;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lz1/y0;->i:Lz1/y0;

    invoke-interface {p1, v2, v0}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/a;

    sget-object v1, Lz1/y0;->j:Lz1/y0;

    invoke-interface {p1, v2, v1}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK1/w;

    sget-object v3, Lf2/d;->a:Lf2/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v1, LK1/w;->a:Lf2/h;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    sget-object v6, Lz1/y0;->k:Lz1/y0;

    invoke-interface {p1, v2, v6}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LK1/p;

    if-eqz v6, :cond_2

    iget-object v6, v6, LK1/p;->a:Lf2/h;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    move v4, v5

    :cond_2
    sget-object v3, Lz1/y0;->l:Lz1/y0;

    invoke-interface {p1, v2, v3}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "Cannot find "

    if-eqz v0, :cond_4

    sget-object v1, Lz1/P;->c:Ljava/lang/Object;

    new-instance v2, Lz1/z;

    iget-object v0, v0, Lz1/a;->a:LK1/c;

    iget v3, v0, LK1/c;->a:I

    iget v4, v0, LK1/c;->b:I

    invoke-direct {v2, p0, v3, v4}, Lz1/z;-><init>(Lz1/K0;II)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/F0;

    if-eqz v1, :cond_3

    iget p0, v1, Lz1/F0;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with alignment "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    return-object v2

    :cond_5
    sget-object v0, Lz1/P;->d:Ljava/lang/Object;

    new-instance v2, Lz1/S0;

    sget-object v3, Lz1/H0;->d:Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/K0;

    if-nez v3, :cond_6

    move-object v3, p0

    :cond_6
    invoke-direct {v2, v3, v1, v4}, Lz1/S0;-><init>(Lz1/K0;ZZ)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/F0;

    if-eqz v0, :cond_7

    iget p0, v0, Lz1/F0;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with defaultWeight set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final h(Lf2/h;)Lz1/I0;
    .locals 1

    instance-of v0, p0, Lf2/g;

    if-eqz v0, :cond_0

    sget-object p0, Lz1/I0;->Wrap:Lz1/I0;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lf2/d;

    if-eqz v0, :cond_1

    sget-object p0, Lz1/I0;->Expand:Lz1/I0;

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lf2/e;

    if-eqz v0, :cond_2

    sget-object p0, Lz1/I0;->MatchParent:Lz1/I0;

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lf2/c;

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lf2/f;

    :goto_0
    if-eqz p0, :cond_4

    sget-object p0, Lz1/I0;->Fixed:Lz1/I0;

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
