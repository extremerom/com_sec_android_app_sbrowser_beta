.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;
    }
.end annotation


# instance fields
.field private mDismissListener:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;

.field private mIsOpened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;->mIsOpened:Z

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;->mIsOpened:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;->mIsOpened:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;->mDismissListener:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;->onDropDownDismiss()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;->mIsOpened:Z

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public setOnDropDownDismissListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner;->mDismissListener:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SortTypesSpinner$OnDropdownDismissListener;

    return-void
.end method
