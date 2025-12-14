.class interface abstract Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter$SelectBookmarkAdapterListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectBookmarkAdapterListener"
.end annotation


# virtual methods
.method public abstract getCurrentParentId()J
.end method

.method public abstract getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onSaveButtonStateChange(Z)V
.end method
