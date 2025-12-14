.class public Lorg/chromium/components/autofill/AutofillSelectionActionMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAutofillSelectionMenuItemHelper:Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;


# virtual methods
.method public canReuseCachedSelectionMenu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public filterTextProcessingActivities(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public getAdditionalNonSelectionItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSelectionActionMenuDelegate;->mAutofillSelectionMenuItemHelper:Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->getAdditionalItems()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAdditionalTextProcessingItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public modifyDefaultMenuItems(Ljava/util/List;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem$Builder;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
