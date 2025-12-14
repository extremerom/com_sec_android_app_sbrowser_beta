.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->setEditTextListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\r\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ1\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "Ldb/r;",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "",
        "text",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getSearchWindowViewModel(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateEditText(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    const/16 p4, 0x8

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getBinding$p(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar$setEditTextListener$$inlined$doOnTextChanged$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->access$getSearchWindowViewModel(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateUrlBarText(Ljava/lang/String;)V

    return-void
.end method
