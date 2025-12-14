.class abstract Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;
    }
.end annotation


# instance fields
.field private mSelectionId:I

.field private mSelectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->lambda$getHTMLSelections$0(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I

    move-result p0

    return p0
.end method

.method private addToSelectionList(ILjava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {v0, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->setStartRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p4}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->setSelectedText(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;-><init>(ILjava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->lambda$getSelectedText$1(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I

    move-result p0

    return p0
.end method

.method private getSelectionId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionId:I

    return p0
.end method

.method private static synthetic lambda$getHTMLSelections$0(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-ne p0, p1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sub-int v0, p0, p1

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getSelectedText$1(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getStartRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-ne p0, p1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sub-int v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public getHTMLSelections()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/terrace/content/browser/spen/multiselection/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/terrace/content/browser/spen/multiselection/a;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getLastSelectedText()Ljava/lang/String;
.end method

.method public getMultiSelectionListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/terrace/content/browser/spen/multiselection/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sec/terrace/content/browser/spen/multiselection/a;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSelectionPerformed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeFromSelectionList(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public resetSelectionPerformed()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionId:I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setExtractedSelectionContent(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->getLastSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->getSelectionId()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->getLastSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->addToSelectionList(ILjava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectionId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionId:I

    return-void
.end method

.method public setSelectionListForTest(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->mSelectionList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
