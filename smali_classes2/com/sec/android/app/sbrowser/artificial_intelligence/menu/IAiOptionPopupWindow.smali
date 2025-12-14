.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u001f\u0010\u000fJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008!\u0010\u000fJ\u0019\u0010$\u001a\u00020\u00022\u0008\u0010#\u001a\u0004\u0018\u00010\"H&\u00a2\u0006\u0004\u0008$\u0010%J\u0019\u0010(\u001a\u00020\u00022\u0008\u0010\'\u001a\u0004\u0018\u00010&H&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008*\u0010\u0004J\u001f\u0010+\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008+\u0010,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/IAiOptionPopupWindow;",
        "",
        "Ldb/r;",
        "show",
        "()V",
        "",
        "isShowing",
        "()Z",
        "Landroid/view/View;",
        "view",
        "setAnchorView",
        "(Landroid/view/View;)V",
        "",
        "offset",
        "setHorizontalOffset",
        "(I)V",
        "setVerticalOffset",
        "Landroid/widget/ListView;",
        "getListView",
        "()Landroid/widget/ListView;",
        "Landroid/widget/ListAdapter;",
        "adapter",
        "setAdapter",
        "(Landroid/widget/ListAdapter;)V",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "clickListener",
        "setOnItemClickListener",
        "(Landroid/widget/AdapterView$OnItemClickListener;)V",
        "getWidth",
        "()I",
        "width",
        "setWidth",
        "height",
        "setHeight",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "setBackgroundDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "Landroid/widget/PopupWindow$OnDismissListener;",
        "listener",
        "setOnDismissListener",
        "(Landroid/widget/PopupWindow$OnDismissListener;)V",
        "dismiss",
        "updateContentSize",
        "(II)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getListView()Landroid/widget/ListView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setAdapter(Landroid/widget/ListAdapter;)V
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVerticalOffset(I)V
.end method

.method public abstract setWidth(I)V
.end method

.method public abstract show()V
.end method

.method public abstract updateContentSize(II)V
.end method
