.class public Lorg/chromium/components/autofill/AutofillRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AutofillRequest$FocusField;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAutofillHintsService:Lorg/chromium/components/autofill/AutofillHintsService;

.field private mFocusField:Lorg/chromium/components/autofill/AutofillRequest$FocusField;

.field private mFormData:Lorg/chromium/components/autofill/FormData;


# direct methods
.method public constructor <init>(Lorg/chromium/components/autofill/FormData;Lorg/chromium/components/autofill/AutofillRequest$FocusField;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFocusField:Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    if-nez p3, :cond_0

    new-instance p1, Lorg/chromium/components/autofill/AutofillHintsService;

    invoke-direct {p1}, Lorg/chromium/components/autofill/AutofillHintsService;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillRequest;->mAutofillHintsService:Lorg/chromium/components/autofill/AutofillHintsService;

    :cond_0
    return-void
.end method

.method private static toIndex(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private static toSessionId(I)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_a

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Lorg/chromium/components/autofill/AutofillRequest;->toSessionId(I)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget v6, v6, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3}, Lorg/chromium/components/autofill/AutofillRequest;->toIndex(I)S

    move-result v3

    if-ltz v3, :cond_9

    iget-object v6, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget-object v6, v6, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    goto :goto_4

    :cond_2
    iget-object v6, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget-object v6, v6, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/components/autofill/FormFieldData;

    if-nez v3, :cond_3

    return v0

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lorg/chromium/components/autofill/FormFieldData;->getControlType()I

    move-result v6

    if-eqz v6, :cond_7

    if-eq v6, v4, :cond_6

    const/4 v4, 0x2

    if-eq v6, v4, :cond_4

    const/4 v4, 0x3

    if-eq v6, v4, :cond_7

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v4

    if-ltz v4, :cond_8

    iget-object v5, v3, Lorg/chromium/components/autofill/FormFieldData;->mOptionValues:[Ljava/lang/String;

    array-length v6, v5

    if-lt v4, v6, :cond_5

    goto :goto_2

    :cond_5
    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Lorg/chromium/components/autofill/FormFieldData;->setAutofillValue(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getToggleValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/chromium/components/autofill/FormFieldData;->setChecked(Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/chromium/components/autofill/FormFieldData;->setAutofillValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    const-string p1, "AutofillRequest"

    const-string v1, "The given AutofillValue wasn\'t expected, abort autofill."

    invoke-static {p1, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return v0

    :cond_a
    if-eqz v2, :cond_b

    move v0, v4

    :cond_b
    return v0
.end method

.method public getAutofillHintsService()Lorg/chromium/components/autofill/AutofillHintsService;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mAutofillHintsService:Lorg/chromium/components/autofill/AutofillHintsService;

    return-object p0
.end method

.method public getField(S)Lorg/chromium/components/autofill/FormFieldData;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget-object p0, p0, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/autofill/FormFieldData;

    return-object p0
.end method

.method public getFieldCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget-object p0, p0, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getFieldNewValue(I)Landroid/view/autofill/AutofillValue;
    .locals 2

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget-object p0, p0, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/autofill/FormFieldData;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/autofill/FormFieldData;->getControlType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/autofill/FormFieldData;->mOptionValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/FormFieldData;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/components/autofill/FormData;->findIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    return-object p1

    :cond_2
    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/components/autofill/FormFieldData;->isChecked()Z

    move-result p0

    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/components/autofill/FormFieldData;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0
.end method

.method public getFieldVirtualId(S)I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget p0, p0, Lorg/chromium/components/autofill/FormData;->mSessionId:I

    invoke-static {p0, p1}, Lorg/chromium/components/autofill/FormData;->toFieldVirtualId(IS)I

    move-result p0

    return p0
.end method

.method public getFocusField()Lorg/chromium/components/autofill/AutofillRequest$FocusField;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFocusField:Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    return-object p0
.end method

.method public getForm()Lorg/chromium/components/autofill/FormData;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    return-object p0
.end method

.method public onServerPredictionsAvailable()V
    .locals 7

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mAutofillHintsService:Lorg/chromium/components/autofill/AutofillHintsService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFormData:Lorg/chromium/components/autofill/FormData;

    iget-object v1, v1, Lorg/chromium/components/autofill/FormData;->mFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/autofill/FormFieldData;

    new-instance v3, Lorg/chromium/components/autofill_public/ViewType;

    invoke-virtual {v2}, Lorg/chromium/components/autofill/FormFieldData;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v2}, Lorg/chromium/components/autofill/FormFieldData;->getServerType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/chromium/components/autofill/FormFieldData;->getComputedType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/chromium/components/autofill/FormFieldData;->getServerPredictions()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/chromium/components/autofill_public/ViewType;-><init>(Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillRequest;->mAutofillHintsService:Lorg/chromium/components/autofill/AutofillHintsService;

    invoke-virtual {p0, v0}, Lorg/chromium/components/autofill/AutofillHintsService;->onViewTypeAvailable(Ljava/util/List;)V

    return-void
.end method

.method public setFocusField(Lorg/chromium/components/autofill/AutofillRequest$FocusField;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillRequest;->mFocusField:Lorg/chromium/components/autofill/AutofillRequest$FocusField;

    return-void
.end method
