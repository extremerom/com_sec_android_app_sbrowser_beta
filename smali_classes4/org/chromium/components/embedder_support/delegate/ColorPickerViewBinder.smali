.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static synthetic a(Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder;->lambda$bindAdapter$0(Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;)V

    return-void
.end method

.method public static bind(Lorg/chromium/ui/modelutil/PropertyModel;Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Lorg/chromium/ui/modelutil/PropertyKey;)V
    .locals 1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setColor(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->SUGGESTIONS_NUM_COLUMNS:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setNumberOfColumns(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->SUGGESTIONS_ADAPTER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    if-ne v0, p2, :cond_2

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setSuggestionsAdapter(Lorg/chromium/ui/modelutil/ModelListAdapter;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->IS_ADVANCED_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    if-ne v0, p2, :cond_3

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->switchViewType(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CUSTOM_COLOR_PICKED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    if-ne v0, p2, :cond_4

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setCustomColorPickedCallback(Lorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->VIEW_SWITCHED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    if-ne v0, p2, :cond_5

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setViewSwitchedCallback(Lorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->MAKE_CHOICE_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    if-ne v0, p2, :cond_6

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setMakeChoiceCallback(Lorg/chromium/base/Callback;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->DIALOG_DISMISSED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    if-ne v0, p2, :cond_7

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/Callback;

    invoke-virtual {p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setDialogDismissedCallback(Lorg/chromium/base/Callback;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static bindAdapter(Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;Lorg/chromium/ui/modelutil/PropertyKey;)V
    .locals 1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->COLOR:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    if-ne v0, p2, :cond_0

    sget p2, Lorg/chromium/components/embedder_support/delegate/R$id;->color_picker_suggestion_color_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->ONCLICK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    if-ne v0, p2, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v0, 0x15

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->LABEL:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-virtual {p0, p2}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p2, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-virtual {p0, p2}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    new-instance p2, Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder$1;

    invoke-direct {p2, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder$1;-><init>(Lorg/chromium/ui/modelutil/PropertyModel;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :goto_0
    return-void
.end method

.method public static buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$layout;->color_picker_suggestion_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$bindAdapter$0(Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;)V
    .locals 1

    sget-object p1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->ONCLICK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->INDEX:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
