.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_COLORS:[I

.field private static final DEFAULT_COLOR_LABEL_IDS:[I


# instance fields
.field private final mColorPickerDialogView:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

.field private final mContext:Landroid/content/Context;

.field private final mDialogDismissedCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialColor:I

.field private mModel:Lorg/chromium/ui/modelutil/PropertyModel;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

.field private mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->DEFAULT_COLORS:[I

    sget v1, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_red:I

    sget v2, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_cyan:I

    sget v3, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_blue:I

    sget v4, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_green:I

    sget v5, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_magenta:I

    sget v6, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_yellow:I

    sget v7, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_black:I

    sget v8, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_white:I

    filled-new-array/range {v1 .. v8}, [I

    move-result-object v0

    sput-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->DEFAULT_COLOR_LABEL_IDS:[I

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0001
        -0xffff01
        -0xff0100
        -0xff01
        -0x100
        -0x1000000
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/base/Callback;Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mDialogDismissedCallback:Lorg/chromium/base/Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    iput-object p3, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mColorPickerDialogView:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->handleCustomColorPicked(I)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->handleMakeChoice(Z)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->handleSuggestionColorPicked(I)V

    return-void
.end method

.method private calculateNumberOfColumns()I
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static create(Landroid/content/Context;Lorg/chromium/base/Callback;)Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    invoke-direct {v0, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;

    invoke-direct {v1, p0, p1, v0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;)V

    return-object v1
.end method

.method private createDefaultSuggestions()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->DEFAULT_COLORS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    new-instance v3, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;

    aget v1, v1, v0

    iget-object v4, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mContext:Landroid/content/Context;

    sget-object v5, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->DEFAULT_COLOR_LABEL_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic d(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->handleViewSwitched(Ljava/lang/Void;)V

    return-void
.end method

.method private generateSuggestionsModelList()V
    .locals 6

    new-instance v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-direct {v0}, Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    sget-object v4, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    invoke-direct {v3, v4}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;-><init>([Lorg/chromium/ui/modelutil/PropertyKey;)V

    sget-object v4, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->INDEX:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-virtual {v3, v4, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;I)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object v3

    sget-object v4, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->COLOR:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    iget v5, v2, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;->mColor:I

    invoke-virtual {v3, v4, v5}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;I)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object v3

    sget-object v4, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->LABEL:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    iget-object v2, v2, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object v2

    sget-object v3, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-virtual {v2, v3, v0}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;Z)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object v2

    sget-object v3, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->ONCLICK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v4, Lorg/chromium/components/embedder_support/delegate/c;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lorg/chromium/components/embedder_support/delegate/c;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V

    invoke-virtual {v2, v3, v4}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->build()Lorg/chromium/ui/modelutil/PropertyModel;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    new-instance v4, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    invoke-direct {v4, v0, v2}, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;-><init>(ILorg/chromium/ui/modelutil/PropertyModel;)V

    invoke-virtual {v3, v4}, Lorg/chromium/ui/modelutil/ListModelBase;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleCustomColorPicked(I)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_SUGGESTION_INDEX:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    iget-object v3, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {v3, v1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object v0, v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v3, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;Z)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;I)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;I)V

    return-void
.end method

.method private handleMakeChoice(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mDialogDismissedCallback:Lorg/chromium/base/Callback;

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mDialogDismissedCallback:Lorg/chromium/base/Callback;

    iget p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mInitialColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleSuggestionColorPicked(I)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_SUGGESTION_INDEX:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {v2, v1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object v0, v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;Z)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object v0, v0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v2, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->IS_SELECTED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;Z)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;I)V

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->COLOR:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;I)V

    return-void
.end method

.method private handleViewSwitched(Ljava/lang/Void;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->IS_ADVANCED_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->set(Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;Z)V

    return-void
.end method


# virtual methods
.method public addColorSuggestion(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    new-instance v0, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;

    invoke-direct {v0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mColorPickerDialogView:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show(I)V
    .locals 4
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mInitialColor:I

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->createDefaultSuggestions()V

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->generateSuggestionsModelList()V

    new-instance v0, Lorg/chromium/ui/modelutil/ModelListAdapter;

    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-direct {v0, v1}, Lorg/chromium/ui/modelutil/ModelListAdapter;-><init>(Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;)V

    iput-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsAdapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/chromium/components/embedder_support/delegate/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/components/embedder_support/delegate/b;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lorg/chromium/ui/modelutil/ModelListAdapter;->registerType(ILorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)V

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    invoke-direct {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;-><init>([Lorg/chromium/ui/modelutil/PropertyKey;)V

    sget-object v1, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_COLOR:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;I)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CHOSEN_SUGGESTION_INDEX:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;I)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->SUGGESTIONS_NUM_COLUMNS:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->calculateNumberOfColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;I)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->SUGGESTIONS_ADAPTER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mSuggestionsAdapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->IS_ADVANCED_VIEW:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-virtual {p1, v0, v3}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;Z)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->CUSTOM_COLOR_PICKED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/components/embedder_support/delegate/c;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->VIEW_SWITCHED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/chromium/components/embedder_support/delegate/c;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->MAKE_CHOICE_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/chromium/components/embedder_support/delegate/c;-><init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerProperties;->DIALOG_DISMISSED_CALLBACK:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mDialogDismissedCallback:Lorg/chromium/base/Callback;

    invoke-virtual {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->build()Lorg/chromium/ui/modelutil/PropertyModel;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mModel:Lorg/chromium/ui/modelutil/PropertyModel;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mColorPickerDialogView:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    new-instance v1, Lorg/chromium/components/embedder_support/delegate/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/chromium/components/embedder_support/delegate/b;-><init>(I)V

    invoke-static {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;->create(Lorg/chromium/ui/modelutil/PropertyObservable;Ljava/lang/Object;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->mColorPickerDialogView:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x5

    invoke-static {p0}, Lorg/chromium/content_public/browser/util/DialogTypeRecorder;->recordDialogType(I)V

    return-void
.end method
