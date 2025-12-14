.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;


# instance fields
.field protected mCompletenessScore:I

.field protected mEditMessage:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;

.field private mImageForLabel:Landroid/graphics/drawable/Drawable;

.field protected mIsComplete:Z

.field protected mIsEditable:Z

.field private mIsValid:Z

.field private mLabels:[Ljava/lang/String;

.field protected mPromoMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    const v1, 0x7fffffff

    iput v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsValid:Z

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierLabelsAndIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getCompletenessScore()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    return p0
.end method

.method public getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getEditMessage()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getImageForLabel()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mImageForLabel:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPreviewString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-ltz p2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lt p0, p2, :cond_4

    div-int/2addr p2, v3

    invoke-virtual {v0, v2, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSublabel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getTertiaryLabel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public isComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    return p0
.end method

.method public isEditable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsEditable:Z

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsValid:Z

    return p0
.end method

.method public setInvalid()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsValid:Z

    return-void
.end method

.method public updateDrawableImageForLabel(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mImageForLabel:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x1

    aput-object p3, p0, p1

    const/4 p1, 0x2

    aput-object p4, p0, p1

    return-void
.end method

.method public updateIdentifierLabelsAndIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierAndLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updatePromoMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mPromoMessage:Ljava/lang/String;

    return-void
.end method

.method public updateSublabel(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method
