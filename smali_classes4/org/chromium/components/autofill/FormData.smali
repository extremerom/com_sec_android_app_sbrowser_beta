.class public Lorg/chromium/components/autofill/FormData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field public final mFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/FormFieldData;",
            ">;"
        }
    .end annotation
.end field

.field public final mHost:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mSessionId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/FormFieldData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    iput-object p2, p0, Lorg/chromium/components/autofill/FormData;->mName:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/autofill/FormData;->mHost:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    return-void
.end method

.method public static createFormData(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/chromium/components/autofill/FormData;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/FormFieldData;",
            ">;)",
            "Lorg/chromium/components/autofill/FormData;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/autofill/FormData;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/components/autofill/FormData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static findIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static toFieldVirtualId(IS)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public fillViewStructure(Landroid/view/ViewStructure;S)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/chromium/components/autofill/FormData;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/ViewStructure;->setWebDomain(Ljava/lang/String;)V

    const-string v2, "form"

    invoke-virtual {v1, v2}, Landroid/view/ViewStructure;->newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/components/autofill/FormData;->mName:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewStructure$HtmlInfo$Builder;->build()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewStructure;->setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V

    iget-object v2, v0, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result v2

    iget-object v3, v0, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/components/autofill/FormFieldData;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v2

    const/4 v15, 0x1

    move/from16 v14, p2

    if-ne v14, v6, :cond_0

    invoke-virtual {v2, v15}, Landroid/view/ViewStructure;->setFocused(Z)V

    :cond_0
    iget v9, v0, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    add-int/lit8 v10, v6, 0x1

    int-to-short v13, v10

    invoke-static {v9, v6}, Lorg/chromium/components/autofill/FormData;->toFieldVirtualId(IS)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v9, v6}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    invoke-virtual {v2}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {v7, v6}, Lorg/chromium/components/autofill/FormFieldData;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    iget-object v6, v7, Lorg/chromium/components/autofill/FormFieldData;->mAutocompleteAttr:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v7, Lorg/chromium/components/autofill/FormFieldData;->mAutocompleteAttr:Ljava/lang/String;

    const-string v9, " +"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    :cond_1
    iget-object v6, v7, Lorg/chromium/components/autofill/FormFieldData;->mPlaceholder:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getBoundsInContainerViewCoordinates()Landroid/graphics/RectF;

    move-result-object v6

    iget v9, v6, Landroid/graphics/RectF;->left:F

    float-to-int v10, v9

    iget v9, v6, Landroid/graphics/RectF;->top:F

    float-to-int v11, v9

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v12, v9

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v2

    move/from16 v18, v12

    move/from16 v12, v16

    move/from16 v16, v13

    move/from16 v13, v17

    move/from16 v14, v18

    move v5, v15

    move v15, v6

    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/ViewStructure;->setVisibility(I)V

    const-string v6, "input"

    invoke-virtual {v2, v6}, Landroid/view/ViewStructure;->newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v6

    iget-object v9, v7, Lorg/chromium/components/autofill/FormFieldData;->mName:Ljava/lang/String;

    invoke-virtual {v6, v4, v9}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v6

    const-string v9, "type"

    iget-object v10, v7, Lorg/chromium/components/autofill/FormFieldData;->mType:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v6

    const-string v9, "label"

    iget-object v10, v7, Lorg/chromium/components/autofill/FormFieldData;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v6

    const-string v9, "ua-autofill-hints"

    iget-object v10, v7, Lorg/chromium/components/autofill/FormFieldData;->mHeuristicType:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v6

    const-string v9, "id"

    iget-object v10, v7, Lorg/chromium/components/autofill/FormFieldData;->mId:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object v6

    const-string v9, "crowdsourcing-autofill-hints"

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getServerType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    const-string v9, "computed-autofill-hints"

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getComputedType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getServerPredictions()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    array-length v10, v9

    if-lez v10, :cond_3

    const-string v10, ","

    invoke-static {v10, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "crowdsourcing-predictions-autofill-hints"

    invoke-virtual {v6, v10, v9}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    :cond_3
    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getControlType()I

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_6

    const/4 v11, 0x2

    if-eq v9, v5, :cond_5

    if-eq v9, v11, :cond_4

    if-eq v9, v10, :cond_6

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v10}, Landroid/view/ViewStructure;->setAutofillType(I)V

    iget-object v5, v7, Lorg/chromium/components/autofill/FormFieldData;->mOptionContents:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    iget-object v5, v7, Lorg/chromium/components/autofill/FormFieldData;->mOptionValues:[Ljava/lang/String;

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/chromium/components/autofill/FormData;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_8

    invoke-static {v5}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v11}, Landroid/view/ViewStructure;->setAutofillType(I)V

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->isChecked()Z

    move-result v5

    invoke-static {v5}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setAutofillType(I)V

    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    iget v5, v7, Lorg/chromium/components/autofill/FormFieldData;->mMaxLength:I

    if-eqz v5, :cond_7

    const-string v9, "maxlength"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    :cond_7
    invoke-virtual {v7}, Lorg/chromium/components/autofill/FormFieldData;->getControlType()I

    move-result v5

    if-ne v5, v10, :cond_8

    iget-object v5, v7, Lorg/chromium/components/autofill/FormFieldData;->mDatalistValues:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewStructure$HtmlInfo$Builder;->build()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewStructure;->setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V

    move v2, v8

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_9
    return-void
.end method
