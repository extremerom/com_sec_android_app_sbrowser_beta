.class public Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;,
        Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mBaseMilli:I

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mIs24hourFormat:Z

.field private final mListener:Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;

.field private final mMilliSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mSecSpinner:Landroid/widget/NumberPicker;

.field private final mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIZLorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-direct/range {p0 .. p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v4, p11

    iput-object v4, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mListener:Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;

    iput v2, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mStep:I

    iput-boolean v3, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mIs24hourFormat:Z

    const/4 v4, 0x0

    move/from16 v5, p7

    move/from16 v6, p8

    if-lt v5, v6, :cond_0

    const v5, 0x5265bff

    move v6, v5

    move v5, v4

    :cond_0
    if-ltz v2, :cond_1

    const v8, 0x5265c00

    if-lt v2, v8, :cond_2

    :cond_1
    const v2, 0xea60

    :cond_2
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    sget v9, Lorg/chromium/content/R$layout;->multi_field_time_picker_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v9, Lorg/chromium/content/R$id;->hour:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/NumberPicker;

    iput-object v9, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    sget v10, Lorg/chromium/content/R$id;->minute:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/NumberPicker;

    iput-object v10, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    sget v11, Lorg/chromium/content/R$id;->second:I

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/NumberPicker;

    iput-object v11, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    sget v12, Lorg/chromium/content/R$id;->milli:I

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/NumberPicker;

    iput-object v12, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    sget v13, Lorg/chromium/content/R$id;->ampm:I

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    iput-object v13, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v14, 0x36ee80

    div-int v15, v5, v14

    div-int v7, v6, v14

    mul-int v16, v15, v14

    sub-int v5, v5, v16

    mul-int v16, v7, v14

    sub-int v6, v6, v16

    if-ne v15, v7, :cond_3

    invoke-virtual {v9, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move/from16 v16, v15

    goto :goto_0

    :cond_3
    move/from16 v16, p3

    :goto_0
    const/16 v14, 0x8

    if-eqz v3, :cond_4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move/from16 v0, v16

    goto :goto_4

    :cond_4
    div-int/lit8 v3, v15, 0xc

    div-int/lit8 v14, v7, 0xc

    div-int/lit8 v17, v16, 0xc

    invoke-virtual {v13, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    sget v4, Lorg/chromium/content/R$string;->time_picker_dialog_am:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/chromium/content/R$string;->time_picker_dialog_pm:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    rem-int/lit8 v16, v16, 0xc

    const/16 v0, 0xc

    if-nez v16, :cond_5

    move/from16 v16, v0

    :cond_5
    if-ne v3, v14, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    rem-int/lit8 v15, v15, 0xc

    rem-int/lit8 v7, v7, 0xc

    if-nez v15, :cond_6

    if-nez v7, :cond_6

    move v7, v0

    move v15, v7

    goto :goto_3

    :cond_6
    if-nez v15, :cond_7

    move v15, v7

    :goto_2
    move v7, v0

    goto :goto_3

    :cond_7
    if-nez v7, :cond_9

    goto :goto_2

    :cond_8
    move v7, v0

    move/from16 v3, v17

    const/4 v15, 0x1

    :cond_9
    :goto_3
    invoke-virtual {v13, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    :goto_4
    if-ne v15, v7, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    :cond_a
    invoke-virtual {v9, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v9, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v9, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;

    const-string v1, "%02d"

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    const v3, 0xea60

    div-int v4, v5, v3

    div-int v9, v6, v3

    mul-int v13, v4, v3

    sub-int/2addr v5, v13

    mul-int v13, v9, v3

    sub-int/2addr v6, v13

    const/16 v3, 0x3b

    if-ne v15, v7, :cond_c

    invoke-virtual {v10, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v10, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    if-ne v4, v9, :cond_b

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;->format(I)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move v14, v4

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v10, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :goto_5
    move/from16 v14, p4

    :goto_6
    invoke-virtual {v10, v14}, Landroid/widget/NumberPicker;->setValue(I)V

    const v14, 0x36ee80

    rem-int v14, v2, v14

    if-nez v14, :cond_d

    invoke-virtual {v10, v13}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    invoke-virtual {v10, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_d
    invoke-virtual {v10, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    const v10, 0xea60

    if-lt v2, v10, :cond_e

    sget v10, Lorg/chromium/content/R$id;->second_colon:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    div-int/lit16 v10, v5, 0x3e8

    div-int/lit16 v13, v6, 0x3e8

    mul-int/lit16 v14, v10, 0x3e8

    sub-int/2addr v5, v14

    mul-int/lit16 v14, v13, 0x3e8

    sub-int/2addr v6, v14

    if-ne v15, v7, :cond_f

    if-ne v4, v9, :cond_f

    invoke-virtual {v11, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v11, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    if-ne v10, v13, :cond_10

    invoke-virtual {v0, v10}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;->format(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    move v3, v10

    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v11, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :cond_10
    move/from16 v3, p5

    :goto_7
    invoke-virtual {v11, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v11, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    const/16 v0, 0x3e8

    if-lt v2, v0, :cond_11

    sget v3, Lorg/chromium/content/R$id;->second_dot:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    div-int/lit8 v3, v2, 0x2

    add-int v3, v3, p6

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    const-string v8, "%03d"

    const/16 v11, 0x64

    const/16 v14, 0xa

    const/4 v0, 0x1

    if-eq v2, v0, :cond_12

    if-eq v2, v14, :cond_12

    if-ne v2, v11, :cond_13

    :cond_12
    move-object/from16 v0, p0

    goto :goto_9

    :cond_13
    const/16 v0, 0x3e8

    if-ge v2, v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_8
    if-ge v1, v6, :cond_14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    goto :goto_8

    :cond_14
    move-object/from16 v1, p0

    iget-object v4, v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v4, v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v4, v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    sub-int/2addr v3, v5

    div-int/2addr v3, v2

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v2, v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iput v5, v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    goto :goto_d

    :goto_9
    if-ne v15, v7, :cond_16

    if-ne v4, v9, :cond_16

    if-ne v10, v13, :cond_16

    div-int v4, v5, v2

    invoke-virtual {v12, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    div-int v4, v6, v2

    invoke-virtual {v12, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    if-ne v5, v6, :cond_17

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    :goto_a
    const/4 v3, 0x1

    goto :goto_b

    :cond_16
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v4, 0x3e7

    div-int/2addr v4, v2

    invoke-virtual {v12, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :cond_17
    move v5, v3

    goto :goto_a

    :goto_b
    if-ne v2, v3, :cond_18

    new-instance v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;

    invoke-direct {v1, v8}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_c

    :cond_18
    if-ne v2, v14, :cond_19

    new-instance v3, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;

    invoke-direct {v3, v1}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_c

    :cond_19
    if-ne v2, v11, :cond_1a

    new-instance v1, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;

    const-string v3, "%d"

    invoke-direct {v1, v3}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$NumberFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    :cond_1a
    :goto_c
    div-int/2addr v5, v2

    invoke-virtual {v12, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    :goto_d
    return-void
.end method

.method private getPickerValue(Landroid/widget/NumberPicker;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p0

    return p0
.end method

.method private notifyDateSet()V
    .locals 6

    iget-object v0, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mSecSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mMilliSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v3

    iget v4, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mStep:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mBaseMilli:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mIs24hourFormat:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->getPickerValue(Landroid/widget/NumberPicker;)I

    move-result v4

    const/16 v5, 0xc

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    :cond_1
    iget-object p0, p0, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->mListener:Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;

    invoke-interface {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;->onTimeSet(IIII)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog;->notifyDateSet()V

    return-void
.end method
