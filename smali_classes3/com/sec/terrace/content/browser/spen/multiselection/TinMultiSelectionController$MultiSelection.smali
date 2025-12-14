.class Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSelection"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;

.field private mId:I

.field private mSelectedText:Ljava/lang/String;

.field private mStartRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mId:I

    iput-object p2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mStartRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mSelectedText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mId:I

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mSelectedText:Ljava/lang/String;

    return-object p0
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mStartRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setSelectedText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mSelectedText:Ljava/lang/String;

    return-void
.end method

.method public setStartRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;->mStartRect:Landroid/graphics/Rect;

    return-void
.end method
