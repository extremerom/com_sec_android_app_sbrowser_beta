.class public interface abstract Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract canReuseCachedSelectionMenu()Z
.end method

.method public abstract filterTextProcessingActivities(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract getAdditionalNonSelectionItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdditionalTextProcessingItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/SelectionMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract modifyDefaultMenuItems(Ljava/util/List;ZZLjava/lang/String;)V
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
.end method
