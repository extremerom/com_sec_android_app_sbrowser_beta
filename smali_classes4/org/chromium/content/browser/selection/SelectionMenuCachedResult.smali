.class public Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

.field private final mIsSelectionPassword:Z

.field private final mIsSelectionReadOnly:Z

.field private final mLastSelectionMenuItems:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/SelectionClient$Result;ZZLjava/lang/String;Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/SelectionClient$Result;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    iput-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mIsSelectionPassword:Z

    iput-boolean p3, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mIsSelectionReadOnly:Z

    iput-object p4, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mSelectedText:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mLastSelectionMenuItems:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public canReuseResult(Lorg/chromium/content_public/browser/SelectionClient$Result;ZZLjava/lang/String;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-interface {p5}, Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;->canReuseCachedSelectionMenu()Z

    move-result p5

    if-nez p5, :cond_0

    return v0

    :cond_0
    iget-boolean p5, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mIsSelectionPassword:Z

    if-ne p5, p2, :cond_a

    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mIsSelectionReadOnly:Z

    if-ne p2, p3, :cond_a

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mSelectedText:Ljava/lang/String;

    invoke-static {p2, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_4

    :cond_1
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    const/4 p2, 0x1

    if-nez p0, :cond_2

    move p3, p2

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    if-nez p1, :cond_3

    move p4, p2

    goto :goto_1

    :cond_3
    move p4, v0

    :goto_1
    if-eq p3, p4, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_5

    return p2

    :cond_5
    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    if-nez p0, :cond_6

    move p3, p2

    goto :goto_2

    :cond_6
    move p3, v0

    :goto_2
    iget-object p4, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    if-nez p4, :cond_7

    move p4, p2

    goto :goto_3

    :cond_7
    move p4, v0

    :goto_3
    if-eq p3, p4, :cond_8

    return v0

    :cond_8
    if-nez p0, :cond_9

    return p2

    :cond_9
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getText()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    :goto_4
    return v0
.end method

.method public getResult()Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->mLastSelectionMenuItems:Ljava/util/SortedSet;

    return-object p0
.end method
