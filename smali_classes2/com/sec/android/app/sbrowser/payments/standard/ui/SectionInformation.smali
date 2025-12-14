.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAddditionalText:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDataType:I

.field private mDisplayInSingleLineInNormalMode:Z

.field public mErrorMessage:Ljava/lang/String;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mDisplayInSingleLineInNormalMode:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mDataType:I

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 1
    .param p2    # Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(IILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public addAndSelectItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    return-void
.end method

.method public getAddStringId()I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mDataType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f140122

    return p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const p0, 0x7f1408bf

    return p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const p0, 0x7f1410e0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getAdditionalText()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mAddditionalText:Ljava/lang/String;

    return-object p0
.end method

.method public getDataType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mDataType:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewStringResourceId()I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mDataType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f12003d

    return p0

    :cond_1
    const p0, 0x7f12003c

    return p0

    :cond_2
    const p0, 0x7f12003f

    return p0

    :cond_3
    const p0, 0x7f12003e

    return p0
.end method

.method public getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setDisplaySelectedItemSummaryInSingleLineInNormalMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mDisplayInSingleLineInNormalMode:Z

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSelectedItemIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    return-void
.end method

.method public updateItemsWithCollection(ILjava/util/Collection;)V
    .locals 1
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mSelectedItem:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->mItems:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method
