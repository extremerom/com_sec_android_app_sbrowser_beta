.class Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->convertIndexToValue(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->getValue()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->e(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->f(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$1;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->setValue(I)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
