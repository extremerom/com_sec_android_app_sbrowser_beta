.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField$IconListAdapter;
    }
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e055a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField;->mLayout:Landroid/view/View;

    const p0, 0x7f0b065f

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f0b0600

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/ExpandableGridView;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField$IconListAdapter;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getIconResourceIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getIconDescriptionsForAccessibility()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField$IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorIconsField;->mLayout:Landroid/view/View;

    return-object p0
.end method
