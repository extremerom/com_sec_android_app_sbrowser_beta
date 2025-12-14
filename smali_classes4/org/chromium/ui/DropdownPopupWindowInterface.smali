.class public interface abstract Lorg/chromium/ui/DropdownPopupWindowInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract disableHideOnOutsideTap()V
.end method

.method public abstract dismiss()V
.end method

.method public abstract getListView()Landroid/widget/ListView;
.end method

.method public abstract isShowing()Z
.end method

.method public abstract postShow()V
.end method

.method public abstract setAdapter(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V
.end method

.method public abstract setInitialSelection(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setRtl(Z)V
.end method

.method public abstract show()V
.end method
