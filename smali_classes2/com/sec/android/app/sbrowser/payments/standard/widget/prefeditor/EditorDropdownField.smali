.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mDropdown:Landroid/widget/Spinner;

.field private final mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

.field private final mLabel:Landroid/widget/TextView;

.field private final mLayout:Landroid/view/View;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0557

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mLayout:Landroid/view/View;

    const v0, 0x7f0b0bc5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getDropdownKeyValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->getDropdownIndex(Ljava/util/List;Ljava/lang/CharSequence;)I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mSelectedIndex:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->getDropdownValues(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter;

    const v1, 0x7f0e055f

    invoke-direct {v0, p1, v1, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mAdapter:Landroid/widget/ArrayAdapter;

    const p1, 0x1090009

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const p1, 0x7f0b0bc3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mSelectedIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;

    invoke-direct {p2, p0, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    new-instance p3, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;

    invoke-direct {p3, p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->requestFocus()V

    return-void
.end method

.method private static getDropdownIndex(Ljava/util/List;Ljava/lang/CharSequence;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getDropdownValues(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private requestFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public getDropdown()Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    return-object p0
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mLayout:Landroid/view/View;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->isValid()Z

    move-result p0

    return p0
.end method

.method public scrollToAndFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->updateDisplayedError(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->requestFocus()V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getDropdownKeyValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->getDropdownValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getDropdownKeyValues()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->getDropdownIndex(Ljava/util/List;Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mSelectedIndex:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public updateDisplayedError(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mDropdown:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->mFieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
